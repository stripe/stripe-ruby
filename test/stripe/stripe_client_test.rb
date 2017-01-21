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
      should "makes requests with the Stripe-Account header" do
        Stripe.stripe_account = 'acct_1234'

        stub_request(:post, "#{Stripe.api_base}/v1/account").
          with(headers: {"Stripe-Account" => Stripe.stripe_account}).
          to_return(body: JSON.generate(make_account))

        client = StripeClient.new
        client.execute_request(:post, '/v1/account', 'sk_live12334566', {}, {}, nil)
      end
    end

    context "#request" do
      should "return a result and response object" do
        stub_request(:post, "#{Stripe.api_base}/v1/charges").
          to_return(body: JSON.generate(make_charge))

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
