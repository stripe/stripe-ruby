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
        @orig_api_version = Stripe.api_version

        Stripe.api_key = "DONT_USE_THIS_KEY"
        Stripe.stripe_account = "DONT_USE_THIS_ACCOUNT"
        Stripe.open_timeout = 30_000
      end

      teardown do
        Stripe.api_key = @orig_api_key
        Stripe.stripe_account = @orig_stripe_account
        Stripe.open_timeout = @orig_open_timeout
        Stripe.api_version = @orig_api_version
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

      should "use global config options for options unavailable in client" do
        Stripe.api_key = "NOT_THIS_KEY"
        Stripe.stripe_account = "NOT_THIS_ACCOUNT"
        Stripe.api_version = "2022-11-15"
        client = StripeClient.new("test_123", stripe_account: "acct_123")
        # Imported from global options
        assert_equal 30_000, client.instance_variable_get(:@requestor).config.open_timeout
        # Not set in client options, not imported from global
        assert_equal client.instance_variable_get(:@requestor).config.api_base, Stripe::DEFAULT_API_BASE
        assert_equal client.instance_variable_get(:@requestor).config.api_version, Stripe::ApiVersion::CURRENT

        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "customer"))

        client.v1.customers.retrieve("cus_123")

        # Set in client options
        assert_equal "Bearer test_123", req.headers["Authorization"]
        assert_equal "acct_123", req.headers["Stripe-Account"]
        assert_requested(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
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
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "v2.core.event"))

        client = StripeClient.new("sk_test_123")
        resp = client.v2.core.events.retrieve("evt_123")

        assert_equal nil, req.headers["Content-Type"]

        assert resp.is_a?(Stripe::V2::Core::Event)
        assert_equal "sk_test_123", resp.instance_variable_get(:@opts)[:api_key]
        assert_equal 200, resp.last_response.http_status
      end

      should "honor user-provided stripe version" do
        req = nil
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v2/core/events/evt_123")
          .with { |request| req = request }
          .to_return(body: JSON.generate(object: "v2.core.event"))

        client = StripeClient.new("sk_test_123")
        resp, = client.v2.core.events.retrieve("evt_123", {}, stripe_version: "2022-11-15")

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

      should "allow a request with custom headers but not persist to subsequent requests" do
        req1 = nil
        req2 = nil
        stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/customers")
          .with { |request| req1 = request }
          .to_return(body: JSON.generate(object: "customer", id: "cus_123"))
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers/cus_123")
          .with { |request| req2 = request }
          .to_return(body: JSON.generate(object: "customer", id: "cus_123"))

        client = StripeClient.new("sk_test_123")
        Stripe.api_key = "sk_test_123"

        cus = client.v1.customers.create({}, { "A-Header": "foo" })
        assert_equal "foo", req1.headers["A-Header"]
        cus.refresh
        assert_nil req2.headers["A-Header"]
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

    context "deserialize" do
      setup do
        @client = Stripe::StripeClient.new("sk_test_deserialize")
      end

      should "deserializes string into known object" do
        expected_body = "{\"id\": \"acc_123\", \"object\": \"account\"}"

        obj = @client.deserialize(expected_body)

        assert_equal obj.class, Stripe::Account
        assert_equal obj.id, "acc_123"
      end

      should "deserializes string into unknown object" do
        expected_body = "{\"id\": \"acc_123\", \"object\": \"unknown\"}"

        obj = @client.deserialize(expected_body)

        assert_equal obj.class, Stripe::StripeObject
        assert_equal obj.id, "acc_123"
      end

      should "deserializes hash into known object" do
        expected_body = { "id" => "acc_123", "object" => "account" }

        obj = @client.deserialize(expected_body)

        assert_equal obj.class, Stripe::Account
        assert_equal obj.id, "acc_123"
      end

      should "allow refresh on deserialized object" do
        expected_body = "{\"id\": \"acc_123\", \"object\": \"account\"}"

        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/accounts/acc_123")
          .to_return(status: 200, body: expected_body)

        obj = @client.deserialize(expected_body)
        obj = obj.refresh

        assert_equal obj.class, Stripe::Account
        assert_equal obj.id, "acc_123"
      end

      should "deserializes hash into unknown object" do
        expected_body = { "id" => "acc_123", "object" => "unknown" }

        obj = @client.deserialize(expected_body)

        assert_equal obj.class, Stripe::StripeObject
        assert_equal obj.id, "acc_123"
      end

      should "be able to deserialize v2 objects" do
        expected_body = "{\"id\": \"evt_123\", \"object\": \"v2.core.event\"}"

        obj = @client.deserialize(expected_body, api_mode: :v2)

        assert_equal obj.class, Stripe::V2::Core::Event
        assert_equal obj.id, "evt_123"
      end
    end
  end
end
