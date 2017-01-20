require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class StripeClientTest < Test::Unit::TestCase
    context "#initialize" do
      should "set Stripe.default_conn" do
        client = StripeClient.new
        assert_equal Stripe.default_conn, client.conn
      end

      should "set a different connection if one was specified" do
        conn = Faraday.new
        client = StripeClient.new(conn)
        assert_equal conn, client.conn
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
        Thread.current[:stripe_client] = :stripe_client
        Thread.current[:stripe_last_response] = :stripe_last_response

        client = StripeClient.new
        client.request {}

        assert_equal :stripe_client, Thread.current[:stripe_client]
        assert_equal :stripe_last_response, Thread.current[:stripe_last_response]
      end
    end
  end
end
