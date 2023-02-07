# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class StripeClientTest < Test::Unit::TestCase
    context "initializing a StripeClient" do
      should "allow a String to be passed in order to set the api key" do
        assert_equal StripeClient.new("test_123").config.api_key, "test_123"
      end

      should "allow for overrides via a Hash" do
        config = { api_key: "test_123", open_timeout: 100 }
        client = StripeClient.new(config)

        assert_equal client.config.api_key, "test_123"
        assert_equal client.config.open_timeout, 100
      end

      should "support deprecated ConnectionManager objects" do
        assert StripeClient.new(Stripe::ConnectionManager.new).config.is_a?(Stripe::StripeConfiguration)
      end

      should "support passing a full configuration object" do
        config = Stripe.config.reverse_duplicate_merge({ api_key: "test_123", open_timeout: 100 })
        client = StripeClient.new(config)
        assert_equal config, client.config
      end
    end

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

    context ".maybe_gc_connection_managers" do
      should "garbage collect old connection managers when appropriate" do
        stub_request(:post, "#{Stripe.api_base}/v1/path")
          .to_return(body: JSON.generate(object: "account"))

        # Make sure we start with a blank slate (state may have been left in
        # place by other tests).
        StripeClient.clear_all_connection_managers

        # Establish a base time.
        t = 0.0

        # And pretend that `StripeClient` was just initialized for the first
        # time. (Don't access instance variables like this, but it's tricky to
        # test properly otherwise.)
        StripeClient.instance_variable_set(:@last_connection_manager_gc, t)

        #
        # t
        #
        Util.stubs(:monotonic_time).returns(t)

        # Execute an initial request to ensure that a connection manager was
        # created.
        client = StripeClient.new
        client.execute_request(:post, "/v1/path")

        # The GC shouldn't run yet  (a `nil` return indicates that GC didn't run).
        assert_equal nil, StripeClient.maybe_gc_connection_managers

        #
        # t + StripeClient::CONNECTION_MANAGER_GC_PERIOD - 1
        #
        # Move time to just *before* garbage collection is eligible to run.
        # Nothing should happen.
        #
        Util.stubs(:monotonic_time).returns(t + StripeClient::CONNECTION_MANAGER_GC_PERIOD - 1)

        assert_equal nil, StripeClient.maybe_gc_connection_managers

        #
        # t + StripeClient::CONNECTION_MANAGER_GC_PERIOD + 1
        #
        # Move time to just *after* garbage collection is eligible to run.
        # Garbage collection will run, but because the connection manager is
        # not passed its expiry age, it will not be collected. Zero is returned
        # to indicate so.
        #
        Util.stubs(:monotonic_time).returns(t + StripeClient::CONNECTION_MANAGER_GC_PERIOD + 1)

        assert_equal 0, StripeClient.maybe_gc_connection_managers

        #
        # t + StripeClient::CONNECTION_MANAGER_GC_LAST_USED_EXPIRY + 1
        #
        # Move us far enough into the future that we're passed the horizons for
        # both a GC run as well as well as the expiry age of a connection
        # manager. That means the GC will run and collect the connection
        # manager that we created above.
        #
        Util.stubs(:monotonic_time).returns(t + StripeClient::CONNECTION_MANAGER_GC_LAST_USED_EXPIRY + 1)

        assert_equal 1, StripeClient.maybe_gc_connection_managers

        # And as an additional check, the connection manager of the current
        # thread context should have been removed as it was GCed.
        assert_equal({}, StripeClient.current_thread_context.default_connection_managers)
      end

      should "only garbage collect when all connection managers for a thread are expired" do
        stub_request(:post, "#{Stripe.api_base}/v1/path")
          .to_return(body: JSON.generate(object: "account"))

        # Make sure we start with a blank slate (state may have been left in
        # place by other tests).
        StripeClient.clear_all_connection_managers

        # Establish a base time.
        t = 0.0

        # And pretend that `StripeClient` was just initialized for the first
        # time. (Don't access instance variables like this, but it's tricky to
        # test properly otherwise.)
        StripeClient.instance_variable_set(:@last_connection_manager_gc, t)

        #
        # t
        #
        Util.stubs(:monotonic_time).returns(t)

        # Execute an initial request to ensure that a connection manager was
        # created.
        client = StripeClient.new
        client.execute_request(:post, "/v1/path")

        # Create a new client with a unique config to make sure the thread has two
        # connection managers
        active_client = StripeClient.new(max_network_retries: 10)
        active_client.execute_request(:post, "/v1/path")

        assert_equal 2, StripeClient.current_thread_context.default_connection_managers.keys.count
        assert_equal nil, StripeClient.maybe_gc_connection_managers

        # t + StripeClient::CONNECTION_MANAGER_GC_LAST_USED_EXPIRY + 1
        #
        # Move us far enough into the future that we're passed the horizons for
        # both a GC run as well as well as the expiry age of a connection
        # manager. That means the GC will run and collect the connection
        # manager that we created above.
        #
        Util.stubs(:monotonic_time).returns(t + StripeClient::CONNECTION_MANAGER_GC_LAST_USED_EXPIRY + 1)

        # Manually set the active_client's last_used time into the future to prevent GC.
        StripeClient.default_connection_manager(active_client.config)
                    .instance_variable_set(:@last_used, Util.monotonic_time + 1)

        assert_equal 0, StripeClient.maybe_gc_connection_managers

        # Move time into the future past the last GC round
        current_time = Util.monotonic_time
        Util.stubs(:monotonic_time).returns(current_time * 2)

        assert_equal 1, StripeClient.maybe_gc_connection_managers
      end
    end

    context ".clear_all_connection_managers" do
      should "clear connection managers across all threads" do
        stub_request(:post, "#{Stripe.api_base}/path")
          .to_return(body: JSON.generate(object: "account"))

        num_threads = 3

        # Poorly named class -- note this is actually a concurrent queue.
        recv_queue = Queue.new
        send_queue = Queue.new

        threads = num_threads.times.map do |_|
          Thread.start do
            # Causes a connection manager to be created on this thread and a
            # connection within that manager to be created for API access.
            manager = StripeClient.default_connection_manager
            manager.execute_request(:post, "#{Stripe.api_base}/path")

            # Signal to the main thread we're ready.
            recv_queue << true

            # Wait for the main thread to signal continue.
            send_queue.pop

            # This check isn't great, but it's otherwise difficult to tell that
            # anything happened with just the public-facing API.
            assert_equal({}, manager.instance_variable_get(:@active_connections))
          end
        end

        # Wait for threads to start up.
        threads.each { recv_queue.pop }

        # Do the clear (the method we're actually trying to test).
        StripeClient.clear_all_connection_managers

        # Tell threads to run their check.
        threads.each { send_queue << true }

        # And finally, give all threads time to perform their check.
        threads.each(&:join)
      end

      should "clear only connection managers with a given configuration" do
        StripeClient.clear_all_connection_managers

        client1 = StripeClient.new(read_timeout: 5.0)
        StripeClient.default_connection_manager(client1.config)
        client2 = StripeClient.new(read_timeout: 2.0)
        StripeClient.default_connection_manager(client2.config)

        thread_contexts = StripeClient.instance_variable_get(:@thread_contexts_with_connection_managers)
        assert_equal 1, thread_contexts.count
        thread_context = thread_contexts.first

        refute_nil thread_context.default_connection_managers[client1.config.key]
        refute_nil thread_context.default_connection_managers[client2.config.key]

        StripeClient.clear_all_connection_managers(config: client1.config)

        assert_nil thread_context.default_connection_managers[client1.config.key]
        refute_nil thread_context.default_connection_managers[client2.config.key]
      end
    end

    context ".default_client" do
      should "be a StripeClient" do
        assert_kind_of StripeClient, StripeClient.default_client
      end

      should "be a different client on each thread" do
        other_thread_client = nil
        thread = Thread.new do
          other_thread_client = StripeClient.default_client
        end
        thread.join
        refute_equal StripeClient.default_client, other_thread_client
      end
    end

    context ".default_connection_manager" do
      should "be a ConnectionManager" do
        assert_kind_of ConnectionManager,
                       StripeClient.default_connection_manager
      end

      should "be a different connection on each thread" do
        other_thread_manager = nil
        thread = Thread.new do
          other_thread_manager = StripeClient.default_connection_manager
        end
        thread.join
        refute_equal StripeClient.default_connection_manager, other_thread_manager
      end

      should "create a separate connection manager per configuration" do
        config = Stripe::StripeConfiguration.setup { |c| c.open_timeout = 100 }
        connection_manager_one = StripeClient.default_connection_manager
        connection_manager_two = StripeClient.default_connection_manager(config)

        assert_equal connection_manager_one.config.open_timeout, 30
        assert_equal connection_manager_two.config.open_timeout, 100
      end

      should "create a single connection manager for identical configurations" do
        StripeClient.clear_all_connection_managers

        2.times { StripeClient.default_connection_manager(Stripe::StripeConfiguration.setup) }

        assert_equal 1, StripeClient.instance_variable_get(:@thread_contexts_with_connection_managers).first.default_connection_managers.size
      end
    end

    context ".should_retry?" do
      setup do
        Stripe::StripeConfiguration.any_instance.stubs(:max_network_retries).returns(2)
      end

      should "retry on Errno::ECONNREFUSED" do
        assert StripeClient.should_retry?(Errno::ECONNREFUSED.new,
                                          method: :post, num_retries: 0)
      end

      should "retry on EOFError" do
        assert StripeClient.should_retry?(EOFError.new,
                                          method: :post, num_retries: 0)
      end

      should "retry on Errno::ECONNRESET" do
        assert StripeClient.should_retry?(Errno::ECONNRESET.new,
                                          method: :post, num_retries: 0)
      end

      should "retry on Errno::ETIMEDOUT" do
        assert StripeClient.should_retry?(Errno::ETIMEDOUT.new,
                                          method: :post, num_retries: 0)
      end

      should "retry on Errno::EHOSTUNREACH" do
        assert StripeClient.should_retry?(Errno::EHOSTUNREACH.new,
                                          method: :post, num_retries: 0)
      end

      should "retry on Net::OpenTimeout" do
        assert StripeClient.should_retry?(Net::OpenTimeout.new,
                                          method: :post, num_retries: 0)
      end

      should "retry on Net::ReadTimeout" do
        assert StripeClient.should_retry?(Net::ReadTimeout.new,
                                          method: :post, num_retries: 0)
      end

      should "retry on SocketError" do
        assert StripeClient.should_retry?(SocketError.new,
                                          method: :post, num_retries: 0)
      end

      should "retry when the `Stripe-Should-Retry` header is `true`" do
        headers = StripeResponse::Headers.new(
          "Stripe-Should-Retry" => ["true"]
        )

        # Note we send status 400 here, which would normally not be retried.
        assert StripeClient.should_retry?(Stripe::StripeError.new(http_headers: headers,
                                                                  http_status: 400),
                                          method: :post, num_retries: 0)
      end

      should "not retry when the `Stripe-Should-Retry` header is `false`" do
        headers = StripeResponse::Headers.new(
          "Stripe-Should-Retry" => ["false"]
        )

        # Note we send status 409 here, which would normally be retried.
        refute StripeClient.should_retry?(Stripe::StripeError.new(http_headers: headers,
                                                                  http_status: 409),
                                          method: :post, num_retries: 0)
      end

      should "retry on a 409 Conflict" do
        assert StripeClient.should_retry?(Stripe::StripeError.new(http_status: 409),
                                          method: :post, num_retries: 0)
      end

      should "retry on a 429 Too Many Requests when lock timeout" do
        assert StripeClient.should_retry?(Stripe::StripeError.new(http_status: 429,
                                                                  code: "lock_timeout"),
                                          method: :post, num_retries: 0)
      end

      should "retry on a 500 Internal Server Error when non-POST" do
        assert StripeClient.should_retry?(Stripe::StripeError.new(http_status: 500),
                                          method: :get, num_retries: 0)
      end

      should "retry on a 503 Service Unavailable" do
        assert StripeClient.should_retry?(Stripe::StripeError.new(http_status: 503),
                                          method: :post, num_retries: 0)
      end

      should "not retry at maximum count" do
        refute StripeClient.should_retry?(RuntimeError.new,
                                          method: :post, num_retries: Stripe.max_network_retries)
      end

      should "not retry on a certificate validation error" do
        refute StripeClient.should_retry?(OpenSSL::SSL::SSLError.new,
                                          method: :post, num_retries: 0)
      end

      should "not retry on a 429 Too Many Requests when not lock timeout" do
        refute StripeClient.should_retry?(Stripe::StripeError.new(http_status: 429,
                                                                  code: "rate_limited"),
                                          method: :post, num_retries: 0)
      end

      should "not retry on a 500 Internal Server Error when POST" do
        refute StripeClient.should_retry?(Stripe::StripeError.new(http_status: 500),
                                          method: :post, num_retries: 0)
      end
    end

    context ".sleep_time" do
      should "should grow exponentially" do
        StripeClient.stubs(:rand).returns(1)
        Stripe.config.stubs(:max_network_retry_delay).returns(999)
        assert_equal(Stripe.initial_network_retry_delay, StripeClient.sleep_time(1))
        assert_equal(Stripe.initial_network_retry_delay * 2, StripeClient.sleep_time(2))
        assert_equal(Stripe.initial_network_retry_delay * 4, StripeClient.sleep_time(3))
        assert_equal(Stripe.initial_network_retry_delay * 8, StripeClient.sleep_time(4))
      end

      should "enforce the max_network_retry_delay" do
        StripeClient.stubs(:rand).returns(1)
        Stripe.config.stubs(:initial_network_retry_delay).returns(1)
        Stripe.config.stubs(:max_network_retry_delay).returns(2)
        assert_equal(1, StripeClient.sleep_time(1))
        assert_equal(2, StripeClient.sleep_time(2))
        assert_equal(2, StripeClient.sleep_time(3))
        assert_equal(2, StripeClient.sleep_time(4))
      end

      should "add some randomness" do
        random_value = 0.8
        StripeClient.stubs(:rand).returns(random_value)
        Stripe.config.stubs(:initial_network_retry_delay).returns(1)
        Stripe.config.stubs(:max_network_retry_delay).returns(8)

        base_value = Stripe.initial_network_retry_delay * (0.5 * (1 + random_value))

        # the initial value cannot be smaller than the base,
        # so the randomness is ignored
        assert_equal(Stripe.initial_network_retry_delay, StripeClient.sleep_time(1))

        # after the first one, the randomness is applied
        assert_equal(base_value * 2, StripeClient.sleep_time(2))
        assert_equal(base_value * 4, StripeClient.sleep_time(3))
        assert_equal(base_value * 8, StripeClient.sleep_time(4))
      end

      should "permit passing in a configuration object" do
        StripeClient.stubs(:rand).returns(1)
        config = Stripe::StripeConfiguration.setup do |c|
          c.initial_network_retry_delay = 1
          c.max_network_retry_delay = 2
        end

        # Set the global configuration to be different than the client
        Stripe.config.stubs(:initial_network_retry_delay).returns(100)
        Stripe.config.stubs(:max_network_retry_delay).returns(200)

        assert_equal(1, StripeClient.sleep_time(1, config: config))
        assert_equal(2, StripeClient.sleep_time(2, config: config))
        assert_equal(2, StripeClient.sleep_time(3, config: config))
        assert_equal(2, StripeClient.sleep_time(4, config: config))
      end
    end

    %w[execute_request execute_request_stream].each do |request_method|
      context "request processing for #{request_method}" do
        setup do
          @read_body_chunk_block = if request_method == "execute_request_stream"
                                     proc { |body_chunk| body_chunk }
                                   end
        end

        context "headers" do
          should "support literal headers" do
            stub_request(:post, "#{Stripe.api_base}/v1/account")
              .with(headers: { "Stripe-Account" => "bar" })
              .to_return(body: JSON.generate(object: "account"))

            client = StripeClient.new
            client.send(request_method, :post, "/v1/account",
                        headers: { "Stripe-Account" => "bar" },
                        &@read_body_chunk_block)
          end

          should "support RestClient-style header keys" do
            stub_request(:post, "#{Stripe.api_base}/v1/account")
              .with(headers: { "Stripe-Account" => "bar" })
              .to_return(body: JSON.generate(object: "account"))

            client = StripeClient.new
            client.send(request_method, :post, "/v1/account",
                        headers: { stripe_account: "bar" },
                        &@read_body_chunk_block)
          end
        end

        context "logging" do
          setup do
            # Freeze time for the purposes of the `elapsed` parameter that we
            # emit for responses. Mocha's `anything` parameter can't match inside
            # of a hash and is therefore not useful for this purpose. If we
            # switch over to rspec-mocks at some point, we can probably remove
            # this.
            Util.stubs(:monotonic_time).returns(0.0)

            # Stub the Stripe.config so that mocha matchers will succeed. Currently,
            # mocha does not support using param matchers within hashes.
            StripeClient.any_instance.stubs(:config).returns(Stripe.config)
          end

          should "produce appropriate logging" do
            body = JSON.generate(object: "account")

            connection_manager_data = nil

            Util.expects(:log_debug).with do |message, data|
              connection_manager_data = data
              message == "ConnectionManager starting request" &&
                data[:path] == "/v1/account" &&
                data[:method_name] == "POST" &&
                data[:process_id] == Process.pid &&
                data[:thread_object_id] == Thread.current.object_id &&
                (data[:connection_manager_object_id].is_a? Numeric) &&
                (data[:connection_object_id].is_a? Numeric) &&
                data[:log_timestamp] == 0.0
            end

            response_object_id = nil

            Util.expects(:log_debug).with do |message, data|
              if message == "ConnectionManager request complete" &&
                 data[:path] == "/v1/account" &&
                 data[:method_name] == "POST" &&
                 data[:process_id] == Process.pid &&
                 data[:thread_object_id] == connection_manager_data[:thread_object_id] &&
                 data[:connection_manager_object_id] == connection_manager_data[:connection_manager_object_id] &&
                 data[:connection_object_id] == connection_manager_data[:connection_object_id] &&
                 (data[:response_object_id].is_a? Numeric) &&
                 data[:log_timestamp] == 0.0
                response_object_id = data[:response_object_id]
              end
            end

            Util.expects(:log_info).with("Request to Stripe API",
                                         account: "acct_123",
                                         api_version: "2010-11-12",
                                         idempotency_key: "abc",
                                         method: :post,
                                         num_retries: 0,
                                         path: "/v1/account",
                                         config: Stripe.config)
            Util.expects(:log_debug).with("Request details",
                                          body: "",
                                          idempotency_key: "abc",
                                          query: nil,
                                          config: Stripe.config,
                                          process_id: Process.pid,
                                          thread_object_id: Thread.current.object_id,
                                          log_timestamp: 0.0)

            Util.expects(:log_info).with("Response from Stripe API",
                                         account: "acct_123",
                                         api_version: "2010-11-12",
                                         elapsed: 0.0,
                                         idempotency_key: "abc",
                                         method: :post,
                                         path: "/v1/account",
                                         request_id: "req_123",
                                         status: 200,
                                         config: Stripe.config)
            Util.expects(:log_debug).with do |message, data|
              if message == "Response details" &&
                 data[:idempotency_key] == "abc" &&
                 data[:request_id] == "req_123" &&
                 data[:config] == Stripe.config &&
                 data[:process_id] == Process.pid &&
                 data[:thread_object_id] == Thread.current.object_id &&
                 data[:response_object_id] == response_object_id &&
                 data[:log_timestamp] == 0.0
                # Streaming requests have a different body.
                if request_method == "execute_request_stream"
                  data[:body].is_a? Net::ReadAdapter
                else
                  data[:body] == body
                end
              end
            end
            Util.expects(:log_debug).with("Dashboard link for request",
                                          idempotency_key: "abc",
                                          request_id: "req_123",
                                          url: Util.request_id_dashboard_url("req_123", Stripe.api_key),
                                          config: Stripe.config)

            stub_request(:post, "#{Stripe.api_base}/v1/account")
              .to_return(
                body: body,
                headers: {
                  "Idempotency-Key" => "abc",
                  "Request-Id" => "req_123",
                  "Stripe-Account" => "acct_123",
                  "Stripe-Version" => "2010-11-12",
                }
              )

            client = StripeClient.new
            client.send(request_method, :post, "/v1/account",
                        headers: {
                          "Idempotency-Key" => "abc",
                          "Stripe-Account" => "acct_123",
                          "Stripe-Version" => "2010-11-12",
                        },
                        &@read_body_chunk_block)
          end

          should "produce logging on API error" do
            Util.expects(:log_info).with("Request to Stripe API",
                                         account: nil,
                                         api_version: nil,
                                         idempotency_key: nil,
                                         method: :post,
                                         num_retries: 0,
                                         path: "/v1/account",
                                         config: Stripe.config)
            Util.expects(:log_info).with("Response from Stripe API",
                                         account: nil,
                                         api_version: nil,
                                         elapsed: 0.0,
                                         idempotency_key: nil,
                                         method: :post,
                                         path: "/v1/account",
                                         request_id: nil,
                                         status: 500,
                                         config: Stripe.config)

            error = {
              code: "code",
              message: "message",
              param: "param",
              type: "type",
            }
            Util.expects(:log_error).with("Stripe API error",
                                          status: 500,
                                          error_code: error[:code],
                                          error_message: error[:message],
                                          error_param: error[:param],
                                          error_type: error[:type],
                                          idempotency_key: nil,
                                          request_id: nil,
                                          config: Stripe.config)

            stub_request(:post, "#{Stripe.api_base}/v1/account")
              .to_return(
                body: JSON.generate(error: error),
                status: 500
              )

            client = StripeClient.new
            assert_raises Stripe::APIError do
              client.send(request_method, :post, "/v1/account",
                          &@read_body_chunk_block)
            end
          end

          should "produce logging on OAuth error" do
            Util.expects(:log_info).with("Request to Stripe API",
                                         account: nil,
                                         api_version: nil,
                                         idempotency_key: nil,
                                         method: :post,
                                         num_retries: 0,
                                         path: "/oauth/token",
                                         config: Stripe.config)
            Util.expects(:log_info).with("Response from Stripe API",
                                         account: nil,
                                         api_version: nil,
                                         elapsed: 0.0,
                                         idempotency_key: nil,
                                         method: :post,
                                         path: "/oauth/token",
                                         request_id: nil,
                                         status: 400,
                                         config: Stripe.config)

            Util.expects(:log_error).with("Stripe OAuth error",
                                          status: 400,
                                          error_code: "invalid_request",
                                          error_description: "No grant type specified",
                                          idempotency_key: nil,
                                          request_id: nil,
                                          config: Stripe.config)

            stub_request(:post, "#{Stripe.connect_base}/oauth/token")
              .to_return(body: JSON.generate(error: "invalid_request",
                                             error_description: "No grant type specified"), status: 400)

            client = StripeClient.new
            opts = { api_base: Stripe.connect_base }
            assert_raises Stripe::OAuth::InvalidRequestError do
              client.send(request_method, :post, "/oauth/token", **opts,
                          &@read_body_chunk_block)
            end
          end
        end

        context "Stripe-Account header" do
          should "use a globally set header" do
            begin
              old = Stripe.stripe_account
              Stripe.stripe_account = "acct_1234"

              stub_request(:post, "#{Stripe.api_base}/v1/account")
                .with(headers: { "Stripe-Account" => Stripe.stripe_account })
                .to_return(body: JSON.generate(object: "account"))

              client = StripeClient.new
              client.send(request_method, :post, "/v1/account",
                          &@read_body_chunk_block)
            ensure
              Stripe.stripe_account = old
            end
          end

          should "use a locally set header" do
            stripe_account = "acct_0000"
            stub_request(:post, "#{Stripe.api_base}/v1/account")
              .with(headers: { "Stripe-Account" => stripe_account })
              .to_return(body: JSON.generate(object: "account"))

            client = StripeClient.new
            client.send(request_method, :post, "/v1/account",
                        headers: { stripe_account: stripe_account },
                        &@read_body_chunk_block)
          end

          should "not send it otherwise" do
            stub_request(:post, "#{Stripe.api_base}/v1/account")
              .with do |req|
                req.headers["Stripe-Account"].nil?
              end.to_return(body: JSON.generate(object: "account"))

            client = StripeClient.new
            client.send(request_method, :post, "/v1/account",
                        &@read_body_chunk_block)
          end
        end

        context "app_info" do
          should "send app_info if set" do
            begin
              old = Stripe.app_info
              Stripe.set_app_info(
                "MyAwesomePlugin",
                partner_id: "partner_1234",
                url: "https://myawesomeplugin.info",
                version: "1.2.34"
              )

              stub_request(:post, "#{Stripe.api_base}/v1/account")
                .with do |req|
                  assert_equal \
                    "Stripe/v1 RubyBindings/#{Stripe::VERSION} " \
                    "MyAwesomePlugin/1.2.34 (https://myawesomeplugin.info)",
                    req.headers["User-Agent"]

                  data = JSON.parse(req.headers["X-Stripe-Client-User-Agent"],
                                    symbolize_names: true)

                  assert_equal({
                    name: "MyAwesomePlugin",
                    partner_id: "partner_1234",
                    url: "https://myawesomeplugin.info",
                    version: "1.2.34",
                  }, data[:application])

                  true
                end.to_return(body: JSON.generate(object: "account"))

              client = StripeClient.new
              client.send(request_method, :post, "/v1/account",
                          &@read_body_chunk_block)
            ensure
              Stripe.app_info = old
            end
          end
        end

        context "error handling" do
          should "handle error response with empty body" do
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_return(body: "", status: 500)

            client = StripeClient.new

            e = assert_raises Stripe::APIError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_equal 'Invalid response object from API: "" (HTTP response code was 500)', e.message
          end

          should "feed a request ID through to the error object" do
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_return(body: JSON.generate(make_missing_id_error),
                         headers: { "Request-ID": "req_123" },
                         status: 400)

            client = StripeClient.new

            e = assert_raises Stripe::InvalidRequestError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_equal("req_123", e.request_id)
          end

          should "handle low level error" do
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_raise(Errno::ECONNREFUSED.new)

            client = StripeClient.new

            e = assert_raises Stripe::APIConnectionError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_equal StripeClient::ERROR_MESSAGE_CONNECTION % Stripe.api_base +
                         "\n\n(Network error: Connection refused)",
                         e.message
          end

          should "handle error response with unknown value" do
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_return(body: JSON.generate(bar: "foo"), status: 500)

            client = StripeClient.new

            e = assert_raises Stripe::APIError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_equal 'Invalid response object from API: "{\"bar\":\"foo\"}" (HTTP response code was 500)', e.message
          end

          should "raise IdempotencyError on 400 of type idempotency_error" do
            data = make_missing_id_error
            data[:error][:type] = "idempotency_error"

            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_return(body: JSON.generate(data), status: 400)

            client = StripeClient.new

            e = assert_raises Stripe::IdempotencyError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_equal(400, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end

          should "raise InvalidRequestError on other 400s" do
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_return(body: JSON.generate(make_missing_id_error), status: 400)

            client = StripeClient.new

            e = assert_raises Stripe::InvalidRequestError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_equal(400, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end

          should "raise AuthenticationError on 401" do
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_return(body: JSON.generate(make_missing_id_error), status: 401)

            client = StripeClient.new

            e = assert_raises Stripe::AuthenticationError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_equal(401, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end

          should "raise CardError on 402" do
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_return(body: JSON.generate(make_invalid_exp_year_error), status: 402)

            client = StripeClient.new

            e = assert_raises Stripe::CardError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_equal(402, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
            assert_equal("invalid_expiry_year", e.code)
            assert_equal("exp_year", e.param)
          end

          should "raise PermissionError on 403" do
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_return(body: JSON.generate(make_missing_id_error), status: 403)

            client = StripeClient.new

            e = assert_raises Stripe::PermissionError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_equal(403, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end

          should "raise InvalidRequestError on 404" do
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_return(body: JSON.generate(make_missing_id_error), status: 404)

            client = StripeClient.new

            e = assert_raises Stripe::InvalidRequestError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_equal(404, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end

          should "raise RateLimitError on 429" do
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_return(body: JSON.generate(make_rate_limit_error), status: 429)

            client = StripeClient.new

            e = assert_raises Stripe::RateLimitError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_equal(429, e.http_status)
            assert_equal(true, e.json_body.is_a?(Hash))
          end

          should "raise OAuth::InvalidRequestError when error is a string with value 'invalid_request'" do
            stub_request(:post, "#{Stripe.connect_base}/oauth/token")
              .to_return(body: JSON.generate(error: "invalid_request",
                                             error_description: "No grant type specified"), status: 400)

            client = StripeClient.new

            opts = { api_base: Stripe.connect_base }
            e = assert_raises Stripe::OAuth::InvalidRequestError do
              client.send(request_method, :post, "/oauth/token", **opts,
                          &@read_body_chunk_block)
            end

            assert_equal(400, e.http_status)
            assert_equal("No grant type specified", e.message)
          end

          should "raise OAuth::InvalidGrantError when error is a string with value 'invalid_grant'" do
            stub_request(:post, "#{Stripe.connect_base}/oauth/token")
              .to_return(body: JSON.generate(error: "invalid_grant",
                                             error_description: "This authorization code has already been used. All tokens issued with this code have been revoked."), status: 400)

            client = StripeClient.new

            opts = { api_base: Stripe.connect_base }
            e = assert_raises Stripe::OAuth::InvalidGrantError do
              client.send(request_method, :post, "/oauth/token", **opts,
                          &@read_body_chunk_block)
            end

            assert_equal(400, e.http_status)
            assert_equal("invalid_grant", e.code)
            assert_equal("This authorization code has already been used. All tokens issued with this code have been revoked.", e.message)
          end

          should "raise OAuth::InvalidClientError when error is a string with value 'invalid_client'" do
            stub_request(:post, "#{Stripe.connect_base}/oauth/deauthorize")
              .to_return(body: JSON.generate(error: "invalid_client",
                                             error_description: "This application is not connected to stripe account acct_19tLK7DSlTMT26Mk, or that account does not exist."), status: 401)

            client = StripeClient.new

            opts = { api_base: Stripe.connect_base }
            e = assert_raises Stripe::OAuth::InvalidClientError do
              client.send(request_method, :post, "/oauth/deauthorize", **opts,
                          &@read_body_chunk_block)
            end

            assert_equal(401, e.http_status)
            assert_equal("invalid_client", e.code)
            assert_equal("This application is not connected to stripe account acct_19tLK7DSlTMT26Mk, or that account does not exist.", e.message)
          end

          should "raise Stripe::OAuthError on indeterminate OAuth error" do
            stub_request(:post, "#{Stripe.connect_base}/oauth/deauthorize")
              .to_return(body: JSON.generate(error: "new_code_not_recognized",
                                             error_description: "Something."), status: 401)

            client = StripeClient.new

            opts = { api_base: Stripe.connect_base }
            e = assert_raises Stripe::OAuth::OAuthError do
              client.send(request_method, :post, "/oauth/deauthorize", **opts,
                          &@read_body_chunk_block)
            end

            assert_equal(401, e.http_status)
            assert_equal("new_code_not_recognized", e.code)
            assert_equal("Something.", e.message)
          end
        end

        context "idempotency keys" do
          setup do
            Stripe::StripeConfiguration.any_instance.stubs(:max_network_retries).returns(2)
          end

          should "not add an idempotency key to GET requests" do
            SecureRandom.expects(:uuid).times(0)
            stub_request(:get, "#{Stripe.api_base}/v1/charges/ch_123")
              .with do |req|
                req.headers["Idempotency-Key"].nil?
              end.to_return(body: JSON.generate(object: "charge"))
            client = StripeClient.new
            client.send(request_method, :get, "/v1/charges/ch_123",
                        &@read_body_chunk_block)
          end

          should "ensure there is always an idempotency_key on POST requests" do
            SecureRandom.expects(:uuid).at_least_once.returns("random_key")
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .with(headers: { "Idempotency-Key" => "random_key" })
              .to_return(body: JSON.generate(object: "charge"))
            client = StripeClient.new
            client.send(request_method, :post, "/v1/charges",
                        &@read_body_chunk_block)
          end

          should "ensure there is always an idempotency_key on DELETE requests" do
            SecureRandom.expects(:uuid).at_least_once.returns("random_key")
            stub_request(:delete, "#{Stripe.api_base}/v1/charges/ch_123")
              .with(headers: { "Idempotency-Key" => "random_key" })
              .to_return(body: JSON.generate(object: "charge"))
            client = StripeClient.new
            client.send(request_method, :delete, "/v1/charges/ch_123",
                        &@read_body_chunk_block)
          end

          should "not override a provided idempotency_key" do
            # Note that this expectation looks like `:idempotency_key` instead of
            # the header `Idempotency-Key` because it's user provided as seen
            # below. The ones injected by the library itself look like headers
            # (`Idempotency-Key`), but rest-client does allow this symbol
            # formatting and will properly override the system generated one as
            # expected.
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .with(headers: { "Idempotency-Key" => "provided_key" })
              .to_return(body: JSON.generate(object: "charge"))

            client = StripeClient.new
            client.send(request_method, :post, "/v1/charges",
                        headers: { idempotency_key: "provided_key" },
                        &@read_body_chunk_block)
          end
        end

        context "retry logic" do
          setup do
            Stripe::StripeConfiguration.any_instance.stubs(:max_network_retries).returns(2)
          end

          should "retry failed requests and raise if error persists" do
            StripeClient.expects(:sleep_time).at_least_once.returns(0)
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_raise(Errno::ECONNREFUSED.new)

            client = StripeClient.new
            err = assert_raises Stripe::APIConnectionError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
            assert_match(/Request was retried 2 times/, err.message)
          end

          should "retry failed requests and return successful response" do
            StripeClient.expects(:sleep_time).at_least_once.returns(0)

            i = 0
            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_return do |_|
                if i < 2
                  i += 1
                  raise Errno::ECONNREFUSED
                else
                  { body: JSON.generate("id" => "myid") }
                end
              end

            client = StripeClient.new
            client.send(request_method, :post, "/v1/charges",
                        &@read_body_chunk_block)
          end

          should "pass the client configuration when retrying" do
            StripeClient.expects(:sleep_time)
                        .with(any_of(1, 2),
                              has_entry(:config, kind_of(Stripe::StripeConfiguration)))
                        .at_least_once.returns(0)

            stub_request(:post, "#{Stripe.api_base}/v1/charges")
              .to_raise(Errno::ECONNREFUSED.new)

            client = StripeClient.new
            assert_raises Stripe::APIConnectionError do
              client.send(request_method, :post, "/v1/charges",
                          &@read_body_chunk_block)
            end
          end
        end

        context "params serialization" do
          should "allows empty strings in params" do
            client = StripeClient.new
            client.send(request_method, :get, "/v1/invoices/upcoming",
                        params: { customer: "cus_123", coupon: "" },
                        &@read_body_chunk_block)
            assert_requested(
              :get,
              "#{Stripe.api_base}/v1/invoices/upcoming?",
              query: {
                customer: "cus_123",
                coupon: "",
              }
            )
          end

          should "filter nils in params" do
            client = StripeClient.new
            client.send(request_method, :get, "/v1/invoices/upcoming",
                        params: { customer: "cus_123", coupon: nil },
                        &@read_body_chunk_block)
            assert_requested(
              :get,
              "#{Stripe.api_base}/v1/invoices/upcoming?",
              query: {
                customer: "cus_123",
              }
            )
          end

          should "merge query parameters in URL and params" do
            client = StripeClient.new
            client.send(request_method, :get, "/v1/invoices/upcoming?coupon=25OFF",
                        params: { customer: "cus_123" },
                        &@read_body_chunk_block)
            assert_requested(
              :get,
              "#{Stripe.api_base}/v1/invoices/upcoming?",
              query: {
                coupon: "25OFF",
                customer: "cus_123",
              }
            )
          end

          should "prefer query parameters in params when specified in URL as well" do
            client = StripeClient.new
            client.send(request_method, :get, "/v1/invoices/upcoming?customer=cus_query",
                        params: { customer: "cus_param" },
                        &@read_body_chunk_block)
            assert_requested(
              :get,
              "#{Stripe.api_base}/v1/invoices/upcoming?",
              query: {
                customer: "cus_param",
              }
            )
          end
        end
      end
    end

    context "#execute_request" do
      should "handle success response with empty body" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges")
          .to_return(body: "", status: 200)

        client = StripeClient.new

        e = assert_raises Stripe::APIError do
          client.execute_request(:post, "/v1/charges")
        end
        assert_equal 'Invalid response object from API: "" (HTTP response code was 200)', e.message
      end
    end

    context "#execute_request_stream" do
      should "requires a block" do
        client = StripeClient.new

        e = assert_raises ArgumentError do
          client.execute_request_stream(:post, "/v1/charges")
        end
        assert_equal "execute_request_stream requires a read_body_chunk_block", e.message
      end

      should "executes the read_body_chunk_block when passed" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges")
          .to_return(body: "response body", status: 200)

        client = StripeClient.new

        accumulated_body = +""

        resp, = client.execute_request_stream(:post, "/v1/charges") do |body_chunk|
          accumulated_body << body_chunk
        end

        assert_instance_of Stripe::StripeHeadersOnlyResponse, resp
        assert_equal "response body", accumulated_body
      end
    end

    context "#connection_manager" do
      should "warn that #connection_manager is deprecated" do
        old_stderr = $stderr
        $stderr = StringIO.new
        begin
          client = StripeClient.new
          client.connection_manager
          message = "NOTE: Stripe::StripeClient#connection_manager is " \
                    "deprecated"
          assert_match Regexp.new(message), $stderr.string
        ensure
          $stderr = old_stderr
        end
      end
    end

    context "#request" do
      should "return a result and response object" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges")
          .to_return(body: JSON.generate(object: "charge"))

        client = StripeClient.new
        charge, resp = client.request { Charge.create }

        assert charge.is_a?(Charge)
        assert resp.is_a?(StripeResponse)
        assert_equal 200, resp.http_status
      end

      should "return the value of given block" do
        client = StripeClient.new
        ret, = client.request { 7 }
        assert_equal 7, ret
      end

      should "reset local thread state after a call" do
        begin
          StripeClient.current_thread_context.active_client = :stripe_client

          client = StripeClient.new
          client.request {}

          assert_equal :stripe_client,
                       StripeClient.current_thread_context.active_client
        ensure
          StripeClient.current_thread_context.active_client = nil
        end
      end

      should "correctly return last responses despite multiple clients" do
        charge_resp = { object: "charge" }
        coupon_resp = { object: "coupon" }

        stub_request(:post, "#{Stripe.api_base}/v1/charges")
          .to_return(body: JSON.generate(charge_resp))
        stub_request(:post, "#{Stripe.api_base}/v1/coupons")
          .to_return(body: JSON.generate(coupon_resp))

        client1 = StripeClient.new
        client2 = StripeClient.new

        client2_resp = nil
        _charge, client1_resp = client1.request do
          Charge.create

          # This is contrived, but we run one client nested in the `request`
          # block of another one just to ensure that the parent is still
          # unwinding when this goes through. If the parent's last response
          # were to be overridden by this client (through a bug), then it would
          # happen here.
          _coupon, client2_resp = client2.request do
            Coupon.create
          end
        end

        assert_equal charge_resp, client1_resp.data
        assert_equal coupon_resp, client2_resp.data
      end

      should "correctly return last responses despite multiple threads" do
        charge_resp = { object: "charge" }
        coupon_resp = { object: "coupon" }

        stub_request(:post, "#{Stripe.api_base}/v1/charges")
          .to_return(body: JSON.generate(charge_resp))
        stub_request(:post, "#{Stripe.api_base}/v1/coupons")
          .to_return(body: JSON.generate(coupon_resp))

        client = StripeClient.new

        # Poorly named class -- note this is actually a concurrent queue.
        recv_queue = Queue.new
        send_queue = Queue.new

        # Start a thread, make an API request, but then idle in the `request`
        # block until the main thread has been able to make its own API request
        # and signal that it's done. If this thread's last response were to be
        # overridden by the main thread (through a bug), then this routine
        # should suss it out.
        resp1 = nil
        thread = Thread.start do
          _charge, resp1 = client.request do
            Charge.create

            # Idle in `request` block until main thread signals.
            send_queue.pop
          end

          # Signal main thread that we're done and it can run its checks.
          recv_queue << true
        end

        # Make an API request.
        _coupon, resp2 = client.request do
          Coupon.create
        end

        # Tell background thread to finish `request`, then wait for it to
        # signal back to us that it's ready.
        send_queue << true
        recv_queue.pop

        assert_equal charge_resp, resp1.data
        assert_equal coupon_resp, resp2.data

        # And for maximum hygiene, make sure that our thread rejoins.
        thread.join
      end

      should "error if calls to #request are nested on the same thread" do
        client = StripeClient.new
        client.request do
          e = assert_raises(RuntimeError) do
            client.request {}
          end
          assert_equal "calls to StripeClient#request cannot be nested within a thread",
                       e.message
        end
      end
    end

    context "#proxy" do
      should "run the request through the proxy" do
        begin
          StripeClient.clear_all_connection_managers

          Stripe.proxy = "http://user:pass@localhost:8080"

          client = StripeClient.new
          client.request {}

          connection = Stripe::StripeClient.default_connection_manager.connection_for(Stripe.api_base)

          assert_equal "localhost", connection.proxy_address
          assert_equal 8080, connection.proxy_port
          assert_equal "user", connection.proxy_user
          assert_equal "pass", connection.proxy_pass
        ensure
          Stripe.proxy = nil

          StripeClient.clear_all_connection_managers
        end
      end
    end

    context "#telemetry" do
      teardown do
        # make sure to always set telemetry back to false
        # to not mutate global state
        Stripe.enable_telemetry = false
      end

      should "not send metrics if enable trace flag is not set" do
        Stripe.enable_telemetry = false

        trace_metrics_header = nil
        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .with do |req|
          trace_metrics_header = req.headers["X-Stripe-Client-Telemetry"]
          false
        end.to_return(body: JSON.generate(object: "charge"))

        Stripe::Charge.list
        assert(trace_metrics_header.nil?)

        Stripe::Charge.list
        assert(trace_metrics_header.nil?)
      end

      should "send metrics if enabled telemetry is true" do
        Stripe.enable_telemetry = true

        trace_metrics_header = nil
        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .with do |req|
          trace_metrics_header = req.headers["X-Stripe-Client-Telemetry"]
          false
        end.to_return(body: JSON.generate(object: "charge"))

        Stripe::Charge.list
        Stripe::Charge.list

        assert(!trace_metrics_header.nil?)

        trace_payload = JSON.parse(trace_metrics_header)
        assert(trace_payload["last_request_metrics"]["request_id"] == "req_123")
        assert(!trace_payload["last_request_metrics"]["request_duration_ms"].nil?)
      end
    end

    context "instrumentation" do
      teardown do
        Stripe::Instrumentation.unsubscribe(:request, :test)
      end

      should "notify a subscribe on HTTP request start" do
        events = []
        Stripe::Instrumentation.subscribe(:request_end, :test) { |event| events << event }

        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .to_return(body: JSON.generate(object: "charge"))
        Stripe::Charge.list

        assert_equal(1, events.size)
        event = events.first
        assert_equal(:get, event.method)
        assert_equal("/v1/charges", event.path)
      end

      should "notify a subscriber of a successful HTTP request" do
        events = []
        Stripe::Instrumentation.subscribe(:request_end, :test) { |event| events << event }
        stub_response_body = JSON.generate(object: "charge")

        stub_request(:post, "#{Stripe.api_base}/v1/charges")
          .with(body: { "amount" => "50", "currency" => "usd", "card" => "sc_token" })
          .to_return(body: stub_response_body, headers: { "Request-ID": "req_123" })

        Stripe::Charge.create(amount: 50, currency: "usd", card: "sc_token")

        assert_equal(1, events.size)
        event = events.first
        assert_equal(:post, event.method)
        assert_equal("/v1/charges", event.path)
        assert_equal(200, event.http_status)
        assert(event.duration.positive?)
        assert_equal(0, event.num_retries)
        assert_equal("req_123", event.request_id)
        assert_equal(stub_response_body, event.response_body)
        assert_equal("amount=50&currency=usd&card=sc_token", event.request_body)
        assert(event.request_header)
      end

      should "notify a subscriber of a StripeError" do
        events = []
        Stripe::Instrumentation.subscribe(:request_end, :test) { |event| events << event }

        error = {
          code: "code",
          message: "message",
          param: "param",
          type: "type",
        }
        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .to_return(
            body: JSON.generate(error: error),
            status: 500
          )
        assert_raises(Stripe::APIError) do
          Stripe::Charge.list
        end

        assert_equal(1, events.size)
        event = events.first
        assert_equal(:get, event.method)
        assert_equal("/v1/charges", event.path)
        assert_equal(500, event.http_status)
        assert(event.duration.positive?)
        assert_equal(0, event.num_retries)
        assert_equal(JSON.generate(error: error), event.response_body)
      end

      should "notify a subscriber of a network error" do
        events = []
        Stripe::Instrumentation.subscribe(:request_end, :test) { |event| events << event }

        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .to_raise(Net::OpenTimeout)
        assert_raises(Stripe::APIConnectionError) do
          Stripe::Charge.list
        end

        assert_equal(1, events.size)
        event = events.first
        assert_equal(:get, event.method)
        assert_equal("/v1/charges", event.path)
        assert_nil(event.http_status)
        assert(event.duration.positive?)
        assert_equal(0, event.num_retries)
      end

      should "pass `user_data` from `request_begin` to `request_end`" do
        actual_user_data = nil

        Stripe::Instrumentation.subscribe(:request_begin) do |event|
          event.user_data[:foo] = :bar
        end
        Stripe::Instrumentation.subscribe(:request_end) do |event|
          actual_user_data = event.user_data
        end

        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .to_return(body: JSON.generate(object: "charge"))
        Stripe::Charge.list

        assert_equal({ foo: :bar }, actual_user_data)
      end

      should "provide backward compatibility on `request` topic" do
        events = []
        Stripe::Instrumentation.subscribe(:request, :test) { |event| events << event }

        stub_response_body = JSON.generate(object: "charge")
        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .to_return(body: stub_response_body)
        Stripe::Charge.list

        assert_equal(1, events.size)
        event = events.first
        assert_equal(:get, event.method)
        assert_equal("/v1/charges", event.path)
        assert_equal(200, event.http_status)
        assert(event.duration.positive?)
        assert_equal(0, event.num_retries)
        assert_equal(stub_response_body, event.response_body)
        assert(event.request_header)
      end
    end
  end

  class SystemProfilerTest < Test::Unit::TestCase
    context "#uname" do
      should "run without failure" do
        # Don't actually check the result because we try a variety of different
        # strategies that will have different results depending on where this
        # test and running. We're mostly making sure that no exception is thrown.
        _ = StripeClient::SystemProfiler.uname
      end
    end

    context "#uname_from_system" do
      should "run without failure" do
        # as above, just verify that an exception is not thrown
        _ = StripeClient::SystemProfiler.uname_from_system
      end
    end

    context "#uname_from_system_ver" do
      should "run without failure" do
        # as above, just verify that an exception is not thrown
        _ = StripeClient::SystemProfiler.uname_from_system_ver
      end
    end
  end
end
