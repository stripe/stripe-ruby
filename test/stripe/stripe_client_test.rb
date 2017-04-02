require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class StripeClientTest < Test::Unit::TestCase
    context ".active_client" do
      should "be .default_client outside of #request" do
        assert_equal StripeClient.default_client, StripeClient.active_client
      end

      should "be active client inside of #request" do
        client = StripeClient.new
        client.request do
          assert_equal client, StripeClient.active_client
        end
      end
    end

    context ".default_client" do
      should "be a StripeClient" do
        assert_kind_of StripeClient, StripeClient.default_client
      end
    end

    context ".default_conn" do
      should "be a Faraday::Connection" do
        assert_kind_of Faraday::Connection, StripeClient.default_conn
      end

      should "be a different connection on each thread" do
        other_thread_conn = nil
        thread = Thread.new do
          other_thread_conn = StripeClient.default_conn
        end
        thread.join
        refute_equal StripeClient.default_conn, other_thread_conn
      end
    end

    context ".should_retry?" do
      setup do
        Stripe.stubs(:max_network_retries).returns(2)
      end

      should 'retry on timeout' do
        assert StripeClient.should_retry?(Faraday::TimeoutError.new(""), 0)
      end

      should 'retry on a failed connection' do
        assert StripeClient.should_retry?(Faraday::ConnectionFailed.new(""), 0)
      end

      should 'retry on a conflict' do
        error = make_rate_limit_error
        e = Faraday::ClientError.new(error[:error][:message], { status: 409 })
        assert StripeClient.should_retry?(e, 0)
      end

      should 'not retry at maximum count' do
        refute StripeClient.should_retry?(RuntimeError.new, Stripe.max_network_retries)
      end

      should 'not retry on a certificate validation error' do
        refute StripeClient.should_retry?(Faraday::SSLError.new(""), 0)
      end
    end

    context ".sleep_time" do
      should "should grow exponentially" do
        StripeClient.stubs(:rand).returns(1)
        Stripe.stubs(:max_network_retry_delay).returns(999)
        assert_equal(Stripe.initial_network_retry_delay, StripeClient.sleep_time(1))
        assert_equal(Stripe.initial_network_retry_delay * 2, StripeClient.sleep_time(2))
        assert_equal(Stripe.initial_network_retry_delay * 4, StripeClient.sleep_time(3))
        assert_equal(Stripe.initial_network_retry_delay * 8, StripeClient.sleep_time(4))
      end

      should "enforce the max_network_retry_delay" do
        StripeClient.stubs(:rand).returns(1)
        Stripe.stubs(:initial_network_retry_delay).returns(1)
        Stripe.stubs(:max_network_retry_delay).returns(2)
        assert_equal(1, StripeClient.sleep_time(1))
        assert_equal(2, StripeClient.sleep_time(2))
        assert_equal(2, StripeClient.sleep_time(3))
        assert_equal(2, StripeClient.sleep_time(4))
      end

      should "add some randomness" do
        random_value = 0.8
        StripeClient.stubs(:rand).returns(random_value)
        Stripe.stubs(:initial_network_retry_delay).returns(1)
        Stripe.stubs(:max_network_retry_delay).returns(8)

        base_value = Stripe.initial_network_retry_delay * (0.5 * (1 + random_value))

        # the initial value cannot be smaller than the base,
        # so the randomness is ignored
        assert_equal(Stripe.initial_network_retry_delay, StripeClient.sleep_time(1))

        # after the first one, the randomness is applied
        assert_equal(base_value * 2, StripeClient.sleep_time(2))
        assert_equal(base_value * 4, StripeClient.sleep_time(3))
        assert_equal(base_value * 8, StripeClient.sleep_time(4))
      end
    end

    context "#initialize" do
      should "set Stripe.default_conn" do
        client = StripeClient.new
        assert_equal StripeClient.default_conn, client.conn
      end

      should "set a different connection if one was specified" do
        conn = Faraday.new
        client = StripeClient.new(conn)
        assert_equal conn, client.conn
      end
    end

    context "#execute_request" do
      context "headers" do
        should "support literal headers" do
          stub_request(:post, "#{Stripe.api_base}/v1/account").
            with(headers: { "Stripe-Account" => "bar" }).
            to_return(body: JSON.generate(API_FIXTURES.fetch(:account)))

          client = StripeClient.new
          client.execute_request(:post, '/v1/account',
            headers: { "Stripe-Account" => "bar" }
          )
        end

        should "support RestClient-style header keys" do
          stub_request(:post, "#{Stripe.api_base}/v1/account").
            with(headers: { "Stripe-Account" => "bar" }).
            to_return(body: JSON.generate(API_FIXTURES.fetch(:account)))

          client = StripeClient.new
          client.execute_request(:post, '/v1/account',
            headers: { :stripe_account => "bar" }
          )
        end
      end

      context "Stripe-Account header" do
        should "use a globally set header" do
          begin
            old = Stripe.stripe_account
            Stripe.stripe_account = 'acct_1234'

            stub_request(:post, "#{Stripe.api_base}/v1/account").
              with(headers: {"Stripe-Account" => Stripe.stripe_account}).
              to_return(body: JSON.generate(API_FIXTURES.fetch(:account)))

            client = StripeClient.new
            client.execute_request(:post, '/v1/account')
          ensure
            Stripe.stripe_account = old
          end
        end

        should "use a locally set header" do
          stripe_account = "acct_0000"
          stub_request(:post, "#{Stripe.api_base}/v1/account").
            with(headers: {"Stripe-Account" => stripe_account}).
            to_return(body: JSON.generate(API_FIXTURES.fetch(:account)))

          client = StripeClient.new
          client.execute_request(:post, '/v1/account',
            headers: { :stripe_account => stripe_account }
          )
        end

        should "not send it otherwise" do
          stub_request(:post, "#{Stripe.api_base}/v1/account").
            with { |req|
              req.headers["Stripe-Account"].nil?
            }.to_return(body: JSON.generate(API_FIXTURES.fetch(:account)))

          client = StripeClient.new
          client.execute_request(:post, '/v1/account')
        end
      end

      context "app_info" do
        should "send app_info if set" do
          begin
            old = Stripe.app_info
            Stripe.set_app_info(
              "MyAwesomePlugin",
              url: "https://myawesomeplugin.info",
              version: "1.2.34"
            )

            stub_request(:post, "#{Stripe.api_base}/v1/account").
              with { |req|
                assert_equal \
                  "Stripe/v1 RubyBindings/#{Stripe::VERSION} " \
                  "MyAwesomePlugin/1.2.34 (https://myawesomeplugin.info)",
                  req.headers["User-Agent"]

                data = JSON.parse(req.headers["X-Stripe-Client-User-Agent"],
                  symbolize_names: true)

                assert_equal({
                  name: "MyAwesomePlugin",
                  url: "https://myawesomeplugin.info",
                  version: "1.2.34"
                }, data[:application])

                true
              }.to_return(body: JSON.generate(API_FIXTURES.fetch(:account)))

            client = StripeClient.new
            client.execute_request(:post, '/v1/account')
          ensure
            Stripe.app_info = old
          end
        end
      end

      context "error handling" do
        should "handle error response with empty body" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            to_return(body: '', status: 500)

          client = StripeClient.new
          e = assert_raises Stripe::APIError do
            client.execute_request(:post, '/v1/charges')
          end

          assert_equal 'Invalid response object from API: "" (HTTP response code was 500)', e.message
        end

        should "handle success response with empty body" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            to_return(body: '', status: 200)

          client = StripeClient.new
          e = assert_raises Stripe::APIError do
            client.execute_request(:post, '/v1/charges')
          end

          assert_equal 'Invalid response object from API: "" (HTTP response code was 200)', e.message
        end

        should "handle error response with unknown value" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            to_return(body: JSON.generate({ bar: "foo" }), status: 500)

          client = StripeClient.new
          e = assert_raises Stripe::APIError do
            client.execute_request(:post, '/v1/charges')
          end

          assert_equal 'Invalid response object from API: "{\"bar\":\"foo\"}" (HTTP response code was 500)', e.message
        end

        should "raise InvalidRequestError on 400" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            to_return(body: JSON.generate(make_missing_id_error), status: 400)
          client = StripeClient.new
          begin
            client.execute_request(:post, '/v1/charges')
          rescue Stripe::InvalidRequestError => e
            assert_equal(400, e.http_status)
            assert_equal(true, !!e.http_body)
            assert_equal(true, e.json_body.kind_of?(Hash))
          end
        end

        should "raise AuthenticationError on 401" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            to_return(body: JSON.generate(make_missing_id_error), status: 401)
          client = StripeClient.new
          begin
            client.execute_request(:post, '/v1/charges')
          rescue Stripe::AuthenticationError => e
            assert_equal(401, e.http_status)
            assert_equal(true, !!e.http_body)
            assert_equal(true, e.json_body.kind_of?(Hash))
          end
        end

        should "raise CardError on 402" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            to_return(body: JSON.generate(make_missing_id_error), status: 402)
          client = StripeClient.new
          begin
            client.execute_request(:post, '/v1/charges')
          rescue Stripe::CardError => e
            assert_equal(402, e.http_status)
            assert_equal(true, !!e.http_body)
            assert_equal(true, e.json_body.kind_of?(Hash))
          end
        end

        should "raise PermissionError on 403" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            to_return(body: JSON.generate(make_missing_id_error), status: 403)
          client = StripeClient.new
          begin
            client.execute_request(:post, '/v1/charges')
          rescue Stripe::PermissionError => e
            assert_equal(403, e.http_status)
            assert_equal(true, !!e.http_body)
            assert_equal(true, e.json_body.kind_of?(Hash))
          end
        end

        should "raise InvalidRequestError on 404" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            to_return(body: JSON.generate(make_missing_id_error), status: 404)
          client = StripeClient.new
          begin
            client.execute_request(:post, '/v1/charges')
          rescue Stripe::InvalidRequestError => e
            assert_equal(404, e.http_status)
            assert_equal(true, !!e.http_body)
            assert_equal(true, e.json_body.kind_of?(Hash))
          end
        end

        should "raise RateLimitError on 429" do
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            to_return(body: JSON.generate(make_rate_limit_error), status: 429)
          client = StripeClient.new
          begin
            client.execute_request(:post, '/v1/charges')
          rescue Stripe::RateLimitError => e
            assert_equal(429, e.http_status)
            assert_equal(true, !!e.http_body)
            assert_equal(true, e.json_body.kind_of?(Hash))
          end
        end

        should "raise OAuth::InvalidRequestError when error is a string with value 'invalid_request'" do
          stub_request(:post, "#{Stripe.connect_base}/oauth/token").
            to_return(body: JSON.generate({
              error: "invalid_request",
              error_description: "No grant type specified",
            }), status: 400)

          client = StripeClient.new
          opts = {api_base: Stripe.connect_base}
          e = assert_raises Stripe::OAuth::InvalidRequestError do
            client.execute_request(:post, '/oauth/token', opts)
          end

          assert_equal(400, e.http_status)
          assert_equal(true, !!e.http_body)
          assert_equal('No grant type specified', e.message)
        end

        should "raise OAuth::InvalidGrantError when error is a string with value 'invalid_grant'" do
          stub_request(:post, "#{Stripe.connect_base}/oauth/token").
            to_return(body: JSON.generate({
              error: "invalid_grant",
              error_description: "This authorization code has already been used. All tokens issued with this code have been revoked.",
            }), status: 400)

          client = StripeClient.new
          opts = {api_base: Stripe.connect_base}
          e = assert_raises Stripe::OAuth::InvalidGrantError do
            client.execute_request(:post, '/oauth/token', opts)
          end

          assert_equal(400, e.http_status)
          assert_equal('invalid_grant', e.code)
          assert_equal('This authorization code has already been used. All tokens issued with this code have been revoked.', e.message)
        end
      end

      context "idempotency keys" do
        setup do
          Stripe.stubs(:max_network_retries).returns(2)
        end

        should 'not add an idempotency key to GET requests' do
          SecureRandom.expects(:uuid).times(0)
          stub_request(:get, "#{Stripe.api_base}/v1/charges/#{API_FIXTURES.fetch(:charge)[:id]}").
            with { |req|
              req.headers['Idempotency-Key'].nil?
            }.to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))
          client = StripeClient.new
          client.execute_request(:get, "/v1/charges/#{API_FIXTURES.fetch(:charge)[:id]}")
        end

        should 'ensure there is always an idempotency_key on POST requests' do
          SecureRandom.expects(:uuid).at_least_once.returns("random_key")
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            with(headers: {"Idempotency-Key" => "random_key"}).
            to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))
          client = StripeClient.new
          client.execute_request(:post, "/v1/charges")
        end

        should 'ensure there is always an idempotency_key on DELETE requests' do
          SecureRandom.expects(:uuid).at_least_once.returns("random_key")
          stub_request(:delete, "#{Stripe.api_base}/v1/charges/#{API_FIXTURES.fetch(:charge)[:id]}").
            with(headers: {"Idempotency-Key" => "random_key"}).
            to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))
          client = StripeClient.new
          client.execute_request(:delete, "/v1/charges/#{API_FIXTURES.fetch(:charge)[:id]}")
        end

        should 'not override a provided idempotency_key' do
          # Note that this expectation looks like `:idempotency_key` instead of
          # the header `Idempotency-Key` because it's user provided as seen
          # below. The ones injected by the library itself look like headers
          # (`Idempotency-Key`), but rest-client does allow this symbol
          # formatting and will properly override the system generated one as
          # expected.
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            with(headers: {"Idempotency-Key" => "provided_key"}).
            to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))

          client = StripeClient.new
          client.execute_request(:post, "/v1/charges",
            headers: {:idempotency_key => 'provided_key'})
        end
      end

      context "retry logic" do
        setup do
          Stripe.stubs(:max_network_retries).returns(2)
        end

        should 'retry failed requests and raise if error persists' do
          StripeClient.expects(:sleep_time).at_least_once.returns(0)
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            to_raise(Errno::ECONNREFUSED.new)

          client = StripeClient.new
          err = assert_raises Stripe::APIConnectionError do
            client.execute_request(:post, '/v1/charges')
          end
          assert_match(/Request was retried 2 times/, err.message)
        end

        should 'retry failed requests and return successful response' do
          StripeClient.expects(:sleep_time).at_least_once.returns(0)

          i = 0
          stub_request(:post, "#{Stripe.api_base}/v1/charges").
            to_return { |_|
              if i < 2
                i += 1
                raise Errno::ECONNREFUSED.new
              else
                { body: JSON.generate({"id" => "myid"}) }
              end
            }

          client = StripeClient.new
          client.execute_request(:post, '/v1/charges')
        end
      end
    end

    context "#request" do
      should "return a result and response object" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          to_return(body: JSON.generate(API_FIXTURES.fetch(:charge)))

        client = StripeClient.new
        charge, resp = client.request { Charge.create }

        assert charge.is_a?(Charge)
        assert resp.is_a?(StripeResponse)
        assert_equal 200, resp.http_status
      end

      should "return the value of given block" do
        client = StripeClient.new
        ret, _ = client.request { 7 }
        assert_equal 7, ret
      end

      should "reset local thread state after a call" do
        begin
          Thread.current[:stripe_client] = :stripe_client

          client = StripeClient.new
          client.request {}

          assert_equal :stripe_client, Thread.current[:stripe_client]
        ensure
          Thread.current[:stripe_client] = nil
        end
      end
    end
  end

  class SystemProfilerTest < Test::Unit::TestCase
    context "#get_uname" do
      should "run without failure" do
        # Don't actually check the result because we try a variety of different
        # strategies that will have different results depending on where this
        # test and running. We're mostly making sure that no exception is thrown.
        _ = StripeClient::SystemProfiler.get_uname
      end
    end

    context "#get_uname_from_system" do
      should "run without failure" do
        # as above, just verify that an exception is not thrown
        _ = StripeClient::SystemProfiler.get_uname_from_system
      end
    end

    context "#get_uname_from_system_ver" do
      should "run without failure" do
        # as above, just verify that an exception is not thrown
        _ = StripeClient::SystemProfiler.get_uname_from_system_ver
      end
    end
  end
end
