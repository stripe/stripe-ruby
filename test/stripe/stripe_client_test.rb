# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class StripeClientTest < Test::Unit::TestCase
    context "StripeClient initialization" do
      should "fail without an API key" do
        assert_raises(Stripe::AuthenticationError) { StripeClient.new(nil) }
      end
      should "allow passing in API key positionally" do
        client = StripeClient.new("sk_test_123")
        assert client.instance_variable_get(:@requestor).is_a?(APIRequestor)
        assert client.instance_variable_get(:@requestor).config.api_key == "sk_test_123"
      end
    end

    context "StripeClient config" do
      setup do
        @orig_api_key = Stripe.api_key
        @orig_stripe_account = Stripe.stripe_account
        @orig_open_timeout = Stripe.open_timeout

        Stripe.api_key = "DONT_USE_THIS_KEY"
        Stripe.stripe_account = "DONT_USE_THIS_ACCOUNT"
        Stripe.open_timeout = 30_000
      end

      teardown do
        Stripe.api_key = @orig_api_key
        Stripe.stripe_account = @orig_stripe_account
        Stripe.open_timeout = @orig_open_timeout
      end

      should "use default config options" do
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers").to_return(body: "{}")
        client = StripeClient.new("test_123")
        # uses current API version if not set
        assert_not_nil client.instance_variable_get(:@requestor).config.api_version
        client.v1.customers.list
        assert_requested(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers")
      end

      should "not be merged with global config" do
        client = StripeClient.new("test_123")
        assert_equal "test_123", client.instance_variable_get(:@requestor).config.api_key
        assert_nil client.instance_variable_get(:@requestor).config.stripe_account
        assert_equal 30, client.instance_variable_get(:@requestor).config.open_timeout
      end

      should "use client config options" do
        client = StripeClient.new("test_123",
                                  stripe_version: "2022-11-15",
                                  stripe_account: "acct_123",
                                  stripe_context: "wksp_123")

        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "customer"))

        client.v1.customers.retrieve("cus_123")

        assert_equal "Bearer test_123", req.headers["Authorization"]
        assert_equal "acct_123", req.headers["Stripe-Account"]
        assert_equal "wksp_123", req.headers["Stripe-Context"]
        assert_equal "2022-11-15", req.headers["Stripe-Version"]
      end

      should "request options overrides client config options" do
        client = StripeClient.new("test_123", stripe_version: "2022-11-15", stripe_account: "acct_123")

        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "customer"))

        client.v1.customers.retrieve("cus_123", {}, { api_key: "test_456", stripe_version: "2024-03-15" })

        assert_equal "Bearer test_456", req.headers["Authorization"]
        assert_equal "acct_123", req.headers["Stripe-Account"]
        assert_equal "2024-03-15", req.headers["Stripe-Version"]
      end

      should "not replace global active_requestor" do
        client = StripeClient.new("test_123")

        refute_equal APIRequestor.active_requestor, client.instance_variable_get(:@requestor)
      end
    end

    context "#request" do
      should "return a result and response object" do
        stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/charges")
          .to_return(body: JSON.generate(object: "charge"))

        client = StripeClient.new("test_123")
        charge, resp = client.request { Charge.create }

        assert charge.is_a?(Charge)
        assert resp.is_a?(StripeResponse)
        assert_equal 200, resp.http_status
      end
    end

    context "service based v1" do
      should "return a result and response object" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "customer"))

        client = StripeClient.new("sk_test_456")
        resp,  = client.v1.customers.retrieve("cus_123")

        assert_equal nil, req.headers["Content-Type"]
        assert_equal Stripe::ApiVersion::CURRENT, req.headers["Stripe-Version"]

        assert resp.is_a?(Stripe::Customer)
        assert_equal 200, resp.last_response.http_status
      end
    end

    context "v2" do
      should "return a result and response object" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/accounts/acc_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "account"))

        client = StripeClient.new("sk_test_123")
        resp = client.v2.accounts.retrieve("acc_123")

        assert_equal nil, req.headers["Content-Type"]
        assert_equal Stripe::ApiVersion::PREVIEW, req.headers["Stripe-Version"]

        assert resp.is_a?(Stripe::V2::Account)
        assert_equal "sk_test_123", resp.instance_variable_get(:@opts)[:api_key]
        assert_equal 200, resp.last_response.http_status
      end

      should "honor user-provided stripe version" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/accounts/acc_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "account"))

        client = StripeClient.new("sk_test_123")
        resp, = client.v2.accounts.retrieve("acc_123", {}, stripe_version: "2022-11-15")

        assert_equal nil, req.headers["Content-Type"]
        assert_equal "2022-11-15", req.headers["Stripe-Version"]

        assert resp.is_a?(StripeObject)
      end
    end

    context "request options" do
      should "not modify user-provided options" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "customer"))

        client = StripeClient.new("test_123")

        opts = {
          api_key: "sk_test_456",
          stripe_version: "2019-12-03",
          stripe_account: "acct_123",
          stripe_context: "wksp_123",
          idempotency_key: "idemp_123",
        }
        unchanged_opts = opts.dup
        client.v1.customers.retrieve("cus_123", {}, opts)

        # original opts shouldn't be modified
        assert_equal unchanged_opts, opts
      end

      should "honor user-provided options as symbols" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "customer"))

        client = StripeClient.new("test_123")

        opts = {
          api_key: "sk_test_456",
          stripe_version: "2019-12-03",
          stripe_account: "acct_123",
          stripe_context: "wksp_123",
          idempotency_key: "idemp_123",
        }
        client.v1.customers.retrieve("cus_123", {}, opts)

        assert_equal "2019-12-03", req.headers["Stripe-Version"]
        assert_equal "Bearer sk_test_456", req.headers["Authorization"]
        assert_equal "acct_123", req.headers["Stripe-Account"]
        assert_equal "wksp_123", req.headers["Stripe-Context"]
        assert_equal "idemp_123", req.headers["Idempotency-Key"]
      end

      should "honor user-provided headers" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "customer"))

        client = StripeClient.new("test_123")

        opts = {
          "Stripe-Version" => "2019-12-03",
          "Stripe-Account" => "acct_123",
          "Stripe-Context" => "wksp_123",
          "Idempotency-Key" => "idemp_123",
        }
        client.v1.customers.retrieve("cus_123", {}, opts)

        assert_equal "2019-12-03", req.headers["Stripe-Version"]
        assert_equal "acct_123", req.headers["Stripe-Account"]
        assert_equal "wksp_123", req.headers["Stripe-Context"]
        assert_equal "idemp_123", req.headers["Idempotency-Key"]
      end

      should "carry over client options to objects" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .to_return(body: JSON.generate(object: "customer", id: "cus_123"))
        stub_request(:delete, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .with { |request| req = request }
          .to_return(body: "{}")

        Stripe.api_base = Stripe::DEFAULT_API_BASE
        client = StripeClient.new("sk_test_123", stripe_account: "acct_123")
        cus = client.v1.customers.retrieve("cus_123")
        cus.delete
        assert_requested(:delete, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
        assert_equal "acct_123", req.headers["Stripe-Account"]
        assert_equal "Bearer sk_test_123", req.headers["Authorization"]
      end

      should "carry over request options to objects" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .to_return(body: JSON.generate(object: "customer", id: "cus_123"))
        stub_request(:delete, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .with { |request| req = request }
          .to_return(body: "{}")

        Stripe.api_base = Stripe::DEFAULT_API_BASE
        client = StripeClient.new("sk_test_123")
        opts = {
          api_key: "sk_test_456",
          stripe_account: "acct_123",
        }
        cus = client.v1.customers.retrieve("cus_123", {}, opts)
        cus.delete
        assert_requested(:delete, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
        assert_equal "acct_123", req.headers["Stripe-Account"]
        assert_equal "Bearer sk_test_456", req.headers["Authorization"]
      end
    end

    context "#last_response" do
      should "return last_response with StripeObjects" do
        stub_request(:get, "#{Stripe.api_base}/v1/charges")
          .to_return(body: '{"id": "ch_123", "amount": "100"}')
        charge = Stripe::Charge.list
        assert_not_nil charge.last_response
        assert charge.last_response.is_a?(Stripe::StripeResponse)
        assert_equal 200, charge.last_response.http_status
        assert_not_nil charge.last_response.http_headers
        assert charge.last_response.http_headers.is_a?(Stripe::StripeResponseHeaders)
        assert_not_nil charge.last_response.data
        assert_equal({ id: "ch_123", amount: "100" }, charge.last_response.data)
      end
    end

    EVENT_PAYLOAD = <<~PAYLOAD
      {
        "id": "evt_test_webhook",
        "data": {
          "object": "account",
          "id": "acct_123"
        },
        "object": "event"
      }
    PAYLOAD

    context "#parse_snapshot_event" do
      should "return the same as Webhook.construct_event" do
        header = Test::WebhookHelpers.generate_header(payload: EVENT_PAYLOAD)
        construct_event = Stripe::Webhook.construct_event(EVENT_PAYLOAD, header, Test::WebhookHelpers::SECRET)
        client_event = StripeClient.new("sk_test_123").parse_snapshot_event(EVENT_PAYLOAD, header, Test::WebhookHelpers::SECRET)
        assert construct_event.is_a?(Stripe::Event)
        assert client_event.is_a?(Stripe::Event)
        assert construct_event.id == client_event.id
        assert construct_event.data.is_a?(Stripe::Account)
        assert client_event.data.is_a?(Stripe::Account)
        assert construct_event.data == client_event.data
      end
    end
  end
end
