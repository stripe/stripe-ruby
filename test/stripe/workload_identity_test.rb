# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class WorkloadIdentityTest < Test::Unit::TestCase
    class FakeProvider
      attr_reader :provider

      def initialize(provider: "gcp", &block)
        @provider = provider
        @block = block || -> { "fake-assertion" }
      end

      # rubocop:disable Naming/AccessorMethodName -- matches the duck-typed provider interface
      def identity_assertion
        @block.call
      end
      # rubocop:enable Naming/AccessorMethodName
    end

    EXCHANGE_URL = "https://api.stripe.com/stripe-workload/oauth2/token"

    def valid_exchange_response(access_token: "rk_live_fake", expires_in: 3600, token_type: "Bearer")
      JSON.generate(access_token: access_token, token_type: token_type, expires_in: expires_in)
    end

    context "WorkloadIdentity.validate_provider!" do
      should "raise if the provider doesn't respond to the expected methods" do
        e = assert_raises(WorkloadIdentityError) { WorkloadIdentity.validate_provider!(Object.new) }
        assert_match(/provider` and `identity_assertion`/, e.message)
      end

      should "raise if provider name is unsupported" do
        e = assert_raises(WorkloadIdentityError) do
          WorkloadIdentity.validate_provider!(FakeProvider.new(provider: "aws"))
        end
        assert_match(/Unsupported workload identity provider/, e.message)
      end

      should "raise if provider name is not a string" do
        assert_raises(WorkloadIdentityError) do
          WorkloadIdentity.validate_provider!(FakeProvider.new(provider: nil))
        end
      end

      should "not raise for a valid gcp provider" do
        assert_nothing_raised do
          WorkloadIdentity.validate_provider!(FakeProvider.new)
        end
      end
    end

    context "WorkloadIdentity.extract_bearer_token" do
      should "extract the token from a Bearer header value" do
        assert_equal "abc123", WorkloadIdentity.extract_bearer_token("Bearer abc123")
      end

      should "return nil for a non-Bearer value" do
        assert_nil WorkloadIdentity.extract_bearer_token("Basic abc123")
        assert_nil WorkloadIdentity.extract_bearer_token(nil)
      end
    end

    context "WorkloadIdentity.sanitize_relayed_text" do
      should "redact the assertion if present" do
        text = WorkloadIdentity.sanitize_relayed_text("bad assertion: secret-assertion-value",
                                                      assertion: "secret-assertion-value")
        assert_not_match(/secret-assertion-value/, text)
        assert_match(/\[redacted\]/, text)
      end

      should "bound the length of the text" do
        text = WorkloadIdentity.sanitize_relayed_text("x" * 1000)
        assert_operator text.length, :<=, WorkloadIdentity::MAX_RELAYED_TEXT_LENGTH + 3
      end
    end

    context "StripeClient.for_workload_identity" do
      should "reject a client_options :api_key" do
        assert_raises(ArgumentError) do
          StripeClient.for_workload_identity("wci_123", FakeProvider.new, api_key: "sk_test_123")
        end
      end

      should "reject a client_options :authenticator" do
        assert_raises(ArgumentError) do
          StripeClient.for_workload_identity("wci_123", FakeProvider.new, authenticator: ->(*_) {})
        end
      end

      should "reject an invalid identity_provider" do
        assert_raises(WorkloadIdentityError) do
          StripeClient.for_workload_identity("wci_123", Object.new)
        end
      end

      should "build a client whose config has no api_key and a workload identity authenticator" do
        client = StripeClient.for_workload_identity("wci_123", FakeProvider.new)
        config = client.instance_variable_get(:@requestor).config
        assert_nil config.api_key
        assert config.authenticator.is_a?(WorkloadIdentity::Authenticator)
      end
    end

    context "token exchange over the wire" do
      should "POST a form-encoded grant to the fixed endpoint regardless of api_base" do
        stub_request(:post, EXCHANGE_URL)
          .with(
            body: hash_including(
              "grant_type" => WorkloadIdentity::GRANT_TYPE,
              "client_id" => "wci_123",
              "assertion" => "fake-assertion"
            )
          )
          .to_return(status: 200, body: valid_exchange_response)
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers")
          .with { |req| req.headers["Authorization"] == "Bearer rk_live_fake" }
          .to_return(status: 200, body: JSON.generate(object: "list", data: []))

        client = StripeClient.for_workload_identity("wci_123", FakeProvider.new)
        client.v1.customers.list

        assert_requested :post, EXCHANGE_URL, times: 1
      end

      should "hit the fixed endpoint even when api_base points elsewhere" do
        stub_request(:post, EXCHANGE_URL).to_return(status: 200, body: valid_exchange_response)
        stub_request(:get, "http://127.0.0.1:9/v1/customers")
          .to_return(status: 200, body: JSON.generate(object: "list", data: []))

        client = StripeClient.for_workload_identity("wci_123", FakeProvider.new, api_base: "http://127.0.0.1:9")
        client.v1.customers.list

        assert_requested :post, EXCHANGE_URL, times: 1
      end

      should "not follow a redirect from the exchange endpoint" do
        stub_request(:post, EXCHANGE_URL).to_return(status: 302, headers: { "Location" => "https://evil.example/" })

        client = StripeClient.for_workload_identity("wci_123", FakeProvider.new)
        assert_raises(WorkloadIdentityError) { client.v1.customers.list }
        assert_not_requested :any, "https://evil.example/"
      end

      should "raise for a non-JSON exchange response" do
        stub_request(:post, EXCHANGE_URL).to_return(status: 200, body: "not json")

        client = StripeClient.for_workload_identity("wci_123", FakeProvider.new)
        assert_raises(WorkloadIdentityError) { client.v1.customers.list }
      end

      should "raise if access_token is missing" do
        stub_request(:post, EXCHANGE_URL)
          .to_return(status: 200, body: JSON.generate(token_type: "Bearer", expires_in: 3600))

        client = StripeClient.for_workload_identity("wci_123", FakeProvider.new)
        assert_raises(WorkloadIdentityError) { client.v1.customers.list }
      end

      should "raise if token_type isn't bearer" do
        stub_request(:post, EXCHANGE_URL)
          .to_return(status: 200, body: valid_exchange_response(token_type: "mac"))

        client = StripeClient.for_workload_identity("wci_123", FakeProvider.new)
        assert_raises(WorkloadIdentityError) { client.v1.customers.list }
      end

      should "raise if expires_in is not a positive number" do
        stub_request(:post, EXCHANGE_URL).to_return(status: 200, body: valid_exchange_response(expires_in: 0))

        client = StripeClient.for_workload_identity("wci_123", FakeProvider.new)
        assert_raises(WorkloadIdentityError) { client.v1.customers.list }
      end

      should "redact the assertion from an exchange rejection error message" do
        stub_request(:post, EXCHANGE_URL)
          .to_return(status: 400,
                     body: JSON.generate(error: "invalid_grant",
                                         error_description: "assertion rejected: super-secret-assertion"))

        provider = FakeProvider.new { "super-secret-assertion" }
        client = StripeClient.for_workload_identity("wci_123", provider)

        e = assert_raises(WorkloadIdentityError) { client.v1.customers.list }
        assert_not_match(/super-secret-assertion/, e.message)
      end
    end

    context "credential caching and concurrency" do
      should "coalesce concurrent exchanges into a single transport call" do
        call_count = 0
        mutex = Mutex.new
        transport = lambda { |_body|
          mutex.synchronize { call_count += 1 }
          sleep 0.05
          [200, valid_exchange_response]
        }
        credentials = WorkloadIdentity::Credentials.new("wci_123", FakeProvider.new, transport: transport)

        threads = Array.new(10) { Thread.new { credentials.token } }
        tokens = threads.map(&:value)

        assert_equal 1, call_count
        assert_equal ["rk_live_fake"], tokens.uniq
      end

      should "not refresh if the cache already moved past the stale token" do
        call_count = 0
        transport = lambda { |_body|
          call_count += 1
          [200, valid_exchange_response(access_token: "rk_live_#{call_count}")]
        }
        credentials = WorkloadIdentity::Credentials.new("wci_123", FakeProvider.new, transport: transport)

        first_token = credentials.token
        credentials.refresh_token("some-other-stale-token")
        assert_equal first_token, credentials.token
        assert_equal 1, call_count
      end

      should "refresh when the cache still holds the stale token" do
        call_count = 0
        transport = lambda { |_body|
          call_count += 1
          [200, valid_exchange_response(access_token: "rk_live_#{call_count}")]
        }
        credentials = WorkloadIdentity::Credentials.new("wci_123", FakeProvider.new, transport: transport)

        first_token = credentials.token
        credentials.refresh_token(first_token)
        refute_equal first_token, credentials.token
        assert_equal 2, call_count
      end
    end

    context "401 replay" do
      should "refresh and replay exactly once, preserving body and idempotency key" do
        stub_request(:post, EXCHANGE_URL)
          .to_return(
            { status: 200, body: valid_exchange_response(access_token: "rk_live_1") },
            { status: 200, body: valid_exchange_response(access_token: "rk_live_2") }
          )

        attempts = []
        stub_request(:post, "#{Stripe::DEFAULT_API_BASE}/v1/customers")
          .to_return do |request|
            attempts << request
            if attempts.size == 1
              { status: 401, body: JSON.generate(error: { message: "expired", type: "authentication_error" }) }
            else
              { status: 200, body: JSON.generate(object: "customer", id: "cus_123") }
            end
          end

        client = StripeClient.for_workload_identity("wci_123", FakeProvider.new)
        client.v1.customers.create({ name: "foo" })

        assert_equal 2, attempts.size
        assert_equal "Bearer rk_live_1", attempts[0].headers["Authorization"]
        assert_equal "Bearer rk_live_2", attempts[1].headers["Authorization"]
        assert_equal attempts[0].headers["Idempotency-Key"], attempts[1].headers["Idempotency-Key"]
        assert_equal attempts[0].body, attempts[1].body
      end

      should "not loop forever if every attempt is a 401" do
        stub_request(:post, EXCHANGE_URL).to_return(status: 200, body: valid_exchange_response)
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers")
          .to_return(status: 401, body: JSON.generate(error: { message: "nope", type: "authentication_error" }))

        client = StripeClient.for_workload_identity("wci_123", FakeProvider.new)
        assert_raises(AuthenticationError) { client.v1.customers.list }
        assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers", times: 2
      end
    end

    context "per-request overrides on a workload identity client" do
      setup do
        stub_request(:post, EXCHANGE_URL).to_return(status: 200, body: valid_exchange_response)
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers")
          .to_return(status: 200, body: JSON.generate(object: "list", data: []))
        @client = StripeClient.for_workload_identity("wci_123", FakeProvider.new)
      end

      should "sign the request with a request-level api_key override instead of the workload identity token" do
        @client.v1.customers.list({}, { api_key: "sk_override" })

        assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers",
                         headers: { "Authorization" => "Bearer sk_override" }
      end

      should "sign the request with a custom Authorization header override" do
        @client.v1.customers.list({}, { "Authorization" => "Bearer sk_override" })

        assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers",
                         headers: { "Authorization" => "Bearer sk_override" }
      end

      should "sign the request with an api_key override via raw_request" do
        @client.raw_request(:get, "/v1/customers", opts: { api_key: "sk_override" })

        assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers",
                         headers: { "Authorization" => "Bearer sk_override" }
      end

      should "not refresh or retry a 401 caused by an overridden Authorization header" do
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers")
          .to_return(status: 401, body: JSON.generate(error: { message: "nope", type: "authentication_error" }))

        assert_raises(AuthenticationError) do
          @client.v1.customers.list({}, { "Authorization" => "Bearer sk_override" })
        end

        assert_requested :get, "#{Stripe::DEFAULT_API_BASE}/v1/customers", times: 1
        assert_requested :post, EXCHANGE_URL, times: 1
      end
    end

    context "derived clients" do
      should "share the same credentials cache via with_stripe_context" do
        stub_request(:post, EXCHANGE_URL).to_return(status: 200, body: valid_exchange_response)
        stub_request(:get, "#{Stripe::DEFAULT_API_BASE}/v1/customers")
          .to_return(status: 200, body: JSON.generate(object: "list", data: []))

        client = StripeClient.for_workload_identity("wci_123", FakeProvider.new)
        derived = client.with_stripe_context("ctx_123")

        config = derived.instance_variable_get(:@requestor).config
        assert config.authenticator.is_a?(WorkloadIdentity::Authenticator)
        assert_same client.instance_variable_get(:@requestor).config.authenticator.credentials,
                    config.authenticator.credentials

        client.v1.customers.list
        derived.v1.customers.list

        assert_requested :post, EXCHANGE_URL, times: 1
      end
    end
  end
end
