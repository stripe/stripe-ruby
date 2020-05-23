# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class ClientAPIOperationsTest < Test::Unit::TestCase
    class TestAPIResource < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "test_resource"
      EXPECTED = Object.new

      # rubocop:disable Lint/UnderscorePrefixedVariableName
      def self.retrieve(_id, _opts = EXPECTED)
        unless _opts == EXPECTED
          raise "The ClientProxy should not send options when they are unused"
        end

        raise NotImplementedError
      end
      # rubocop:enable Lint/UnderscorePrefixedVariableName
    end

    context "API resource instance methods" do
      should "define methods for all api resources" do
        client = StripeClient.new

        # Update Sigma name to account for nuance
        api_resources = Stripe::Util.api_object_classes
        sigma_class = api_resources.delete("scheduled_query_run")
        api_resources["sigma.scheduled_query_run"] = sigma_class

        api_resources.each do |string, _|
          if string.include?(".")
            resource_module, resource_name = string.split(".")

            assert client.respond_to?(resource_module), "#{resource_module} not found"
            assert client.send(resource_module).respond_to?("#{resource_name}s"), "#{resource_name} not found"
          else
            assert client.respond_to?("#{string}s"), "#{string} not found"
          end
        end
      end

      should "raise when the resource doesn't respond to a method" do
        Stripe::Util.stubs(:api_object_classes)
                    .returns({ "test_resource" => TestAPIResource })
        proxied_resource = ClientAPIOperations::ClientProxy
                           .new(client: StripeClient.new, resource: TestAPIResource)

        assert_raises NoMethodError do
          proxied_resource.not_a_method
        end
      end

      context "setting configurable options" do
        should "allow for listing a resource with filters" do
          client = StripeClient.new
          accounts = client.accounts.list({ limit: 10 })
          assert_requested(:get, "#{Stripe.api_base}/v1/accounts?limit=10")
          assert accounts.data.is_a?(Array)
          assert accounts.data[0].is_a?(Stripe::Account)
        end

        should "override any global configurations" do
          Stripe.api_key = "sk_test_old"

          client = StripeClient.new(api_key: "sk_test_new")
          client.accounts.retrieve("acct_1234")
          assert_requested(:get,
                           "#{Stripe.api_base}/v1/accounts/acct_1234",
                           headers: {
                             "Authorization" => "Bearer sk_test_new",
                           })
        end

        should "use global settings by default" do
          client = StripeClient.new
          client.accounts.retrieve("acct_1234")
          assert_requested(:get,
                           "#{Stripe.api_base}/v1/accounts/acct_1234",
                           headers: {
                             "Authorization" => "Bearer #{Stripe.api_key}",
                           })
        end

        should "not modify options when the param is set as `_opt`" do
          Stripe::Util.stubs(:api_object_classes)
                      .returns({ "test_resource" => TestAPIResource })
          proxied_resource = ClientAPIOperations::ClientProxy
                             .new(client: StripeClient.new, resource: TestAPIResource)

          assert_raises TypeError do
            proxied_resource.list({}, nil)
          end

          assert_raises TypeError do
            proxied_resource.list({}, api_key: nil)
          end
        end

        should "preserve nil when passed as an option for downstream error handling" do
          Stripe::Util.stubs(:api_object_classes)
                      .returns({ "test_resource" => TestAPIResource })
          proxied_resource = ClientAPIOperations::ClientProxy
                             .new(client: StripeClient.new, resource: TestAPIResource)

          assert_raises NotImplementedError do
            proxied_resource.retrieve("1")
          end
        end

        should "allow for overrides when retrieving a resource" do
          client = StripeClient.new(api_key: "sk_test_local")
          account = client.accounts.retrieve("acct_123", { api_key: "sk_test_other" })
          assert_requested(:get, "#{Stripe.api_base}/v1/accounts/acct_123",
                           headers: { "Authorization" => "Bearer sk_test_other" })
          assert account.is_a?(Stripe::Account)
        end

        should "allow for retrieving a resource with options" do
          client = Stripe::StripeClient.new(api_key: "sk_test_local")
          account = client.charges.retrieve(id: "acct_123", expand: ["customer"])
          assert_requested(:get, "#{Stripe.api_base}/v1/charges/acct_123",
                           headers: { "Authorization" => "Bearer sk_test_local" },
                           query: { "expand[]" => "customer" })
          assert account.is_a?(Stripe::Charge)
        end

        should "allow for overrides when operating on a collection" do
          client = StripeClient.new(api_key: "sk_test_local")
          accounts = client.accounts.list({}, { api_key: "sk_test_other" })
          assert_requested(:get,
                           "#{Stripe.api_base}/v1/accounts",
                           headers: { "Authorization" => "Bearer sk_test_other" })
          assert accounts.data.is_a?(Array)
          assert accounts.data[0].is_a?(Stripe::Account)
        end

        should "allow for overrides when operating on a resource" do
          client = StripeClient.new(api_key: "sk_test_local")
          account = client.accounts.update("acct_123",
                                           {},
                                           { api_key: "sk_test_other" })
          assert_requested(:post,
                           "#{Stripe.api_base}/v1/accounts/acct_123",
                           headers: { "Authorization" => "Bearer sk_test_other" })
          assert account.is_a?(Stripe::Account)
        end

        should "allow for overrides when operating on an instance" do
          client = StripeClient.new(api_key: "sk_test_new")
          account = client.accounts.retrieve("acct_123")
          account.metadata = { foo: "bar" }
          account.save
          assert_requested(:post,
                           "#{Stripe.api_base}/v1/accounts/acct_123",
                           body: { metadata: { foo: "bar" } },
                           headers: {
                             "Authorization" => "Bearer sk_test_new",
                           })
          assert account.is_a?(Stripe::Account)
        end

        context "when the api key is provided as a string" do
          should "correctly normalize the options when operating on an instance" do
            client = StripeClient.new
            account = client.accounts.retrieve("acct_123", "sk_test_new")
            account.metadata = { foo: "bar" }
            account.save
            assert_requested(:post,
                             "#{Stripe.api_base}/v1/accounts/acct_123",
                             body: { metadata: { foo: "bar" } },
                             headers: {
                               "Authorization" => "Bearer sk_test_new",
                             })
          end

          should "correctly normalize the options when operating on a collection" do
            client = StripeClient.new(api_key: "sk_test_local")
            client.accounts.list({}, "sk_test_other")
            assert_requested(:get,
                             "#{Stripe.api_base}/v1/accounts",
                             headers: { "Authorization" => "Bearer sk_test_other" })
          end

          should "correctly normalize  the options when operationg on a resource" do
            client = StripeClient.new(api_key: "sk_test_local")
            client.accounts.update("acct_123", {}, "sk_test_other")
            assert_requested(:post,
                             "#{Stripe.api_base}/v1/accounts/acct_123",
                             headers: { "Authorization" => "Bearer sk_test_other" })
          end
        end
      end
    end
  end
end
