# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class StripeContextIntegrationTest < Test::Unit::TestCase
    context "RequestOptions integration" do
      should "accept string stripe_context" do
        opts = { stripe_context: "workspace/account" }
        request_opts = RequestOptions.extract_opts_from_hash(opts)
        assert_equal "workspace/account", request_opts[:stripe_context]
      end

      should "accept StripeContext object" do
        context = StripeContext.new(%w[workspace account])
        opts = { stripe_context: context }
        request_opts = RequestOptions.extract_opts_from_hash(opts)
        assert_equal context, request_opts[:stripe_context]
      end

      should "reject invalid context types" do
        assert_raises(ArgumentError) do
          RequestOptions.extract_opts_from_hash({ stripe_context: 123 })
        end
      end
    end

    context "RequestOptions.merge_config_and_opts" do
      should "merge string contexts" do
        config = StripeConfiguration.setup do |c|
          c.stripe_context = "config_context"
        end

        opts = { stripe_context: "request_context" }
        merged = RequestOptions.merge_config_and_opts(config, opts)

        assert_equal "request_context", merged[:stripe_context]
      end

      should "merge StripeContext objects" do
        config = StripeConfiguration.setup do |c|
          c.stripe_context = StripeContext.new(["config"])
        end

        opts = { stripe_context: StripeContext.new(["request"]) }
        merged = RequestOptions.merge_config_and_opts(config, opts)

        assert_equal "request", merged[:stripe_context]
      end

      should "fall back to config context" do
        config = StripeConfiguration.setup do |c|
          c.stripe_context = "config_context"
        end

        opts = {}
        merged = RequestOptions.merge_config_and_opts(config, opts)

        assert_equal "config_context", merged[:stripe_context]
      end

      should "handle StripeContext in config fallback" do
        config = StripeConfiguration.setup do |c|
          c.stripe_context = StripeContext.new(%w[workspace account])
        end

        opts = {}
        merged = RequestOptions.merge_config_and_opts(config, opts)

        assert_equal "workspace/account", merged[:stripe_context]
      end

      should "let request override config" do
        config = StripeConfiguration.setup do |c|
          c.stripe_context = StripeContext.new(%w[workspace account])
        end

        opts = { stripe_context: StripeContext.new }
        merged = RequestOptions.merge_config_and_opts(config, opts)

        assert_nil merged[:stripe_context]
      end

      should "not let request override config" do
        config = StripeConfiguration.setup do |c|
          c.stripe_context = StripeContext.new(%w[workspace account])
        end

        opts = { stripe_context: nil }
        merged = RequestOptions.merge_config_and_opts(config, opts)

        assert_equal "workspace/account", merged[:stripe_context]
      end

      should "handle both empty contexts" do
        config = StripeConfiguration.new

        opts = {}
        merged = RequestOptions.merge_config_and_opts(config, opts)

        assert_nil merged[:stripe_context]
      end

      should "allow empty config contexts" do
        config = StripeConfiguration.new

        opts = { stripe_context: StripeContext.new(["request"]) }
        merged = RequestOptions.merge_config_and_opts(config, opts)

        assert_equal "request", merged[:stripe_context]
      end
    end

    context "RequestOptions.combine_opts" do
      should "combine string contexts" do
        object_opts = { stripe_context: "object_context" }
        request_opts = { stripe_context: "request_context" }

        merged = RequestOptions.combine_opts(object_opts, request_opts)
        assert_equal "request_context", merged[:stripe_context]
      end

      should "combine StripeContext objects" do
        object_context = StripeContext.new(["object"])
        request_context = StripeContext.new(["request"])

        object_opts = { stripe_context: object_context }
        request_opts = { stripe_context: request_context }

        merged = RequestOptions.combine_opts(object_opts, request_opts)
        assert_equal "request", merged[:stripe_context]
      end

      should "handle empty req" do
        object_context = StripeContext.new(["object"])

        object_opts = { stripe_context: object_context }
        request_opts = {}

        merged = RequestOptions.combine_opts(object_opts, request_opts)
        assert_equal "object", merged[:stripe_context]
      end

      should "handle empty obj" do
        request_context = StripeContext.new(["request"])

        object_opts = {}
        request_opts = { stripe_context: request_context }

        merged = RequestOptions.combine_opts(object_opts, request_opts)
        assert_equal "request", merged[:stripe_context]
      end

      should "let empty context overwrite object" do
        object_context = StripeContext.new(["object"])
        request_context = StripeContext.new

        object_opts = { stripe_context: object_context }
        request_opts = { stripe_context: request_context }

        merged = RequestOptions.combine_opts(object_opts, request_opts)
        assert_nil merged[:stripe_context]
      end
    end

    context "EventNotification integration" do
      should "return StripeContext object from stripe_context method" do
        client = StripeClient.new("sk_test_123")
        event_payload = {
          id: "evt_123",
          type: "test.event",
          created: Time.now.to_i,
          livemode: false,
          context: "workspace/account/customer",
        }

        notification = Stripe::V2::EventNotification.new(event_payload, client)

        assert_not_nil notification.context
        assert_equal "workspace/account/customer", notification.context.to_s
        assert_kind_of StripeContext, notification.context
        assert_equal %w[workspace account customer], notification.context.segments
      end

      should "return nil context for nil context" do
        client = StripeClient.new("sk_test_123")
        event_payload = {
          id: "evt_123",
          type: "test.event",
          created: Time.now.to_i,
          livemode: false,
          context: nil,
        }

        notification = Stripe::V2::EventNotification.new(event_payload, client)

        assert_nil notification.context
      end

      should "return nil stripe_context for empty context" do
        client = StripeClient.new("sk_test_123")
        event_payload = {
          id: "evt_123",
          type: "test.event",
          created: Time.now.to_i,
          livemode: false,
          context: "",
        }

        notification = Stripe::V2::EventNotification.new(event_payload, client)

        assert_nil notification.context
      end
    end

    context "Context builder pattern" do
      should "work with request options" do
        base_context = StripeContext.parse("workspace_123")
        opts = { stripe_context: base_context.push("account_456") }

        request_opts = RequestOptions.extract_opts_from_hash(opts)
        context = request_opts[:stripe_context]

        assert_kind_of StripeContext, context
        assert_equal "workspace_123/account_456", context.to_s
      end
    end

    context "StripeConfiguration integration" do
      should "accept StripeContext object" do
        context = StripeContext.new(%w[workspace account])

        config = StripeConfiguration.setup do |c|
          c.stripe_context = context
        end

        assert_equal context, config.stripe_context
      end

      should "work in client initialization" do
        context = StripeContext.new(%w[workspace account])
        client = StripeClient.new("sk_test_123", stripe_context: context)

        # The client should accept the StripeContext and work with it
        assert_not_nil client
      end
    end

    context "backward compatibility" do
      should "continue to work with string contexts" do
        # Existing string-based context should continue to work
        opts = { stripe_context: "workspace/account" }
        request_opts = RequestOptions.extract_opts_from_hash(opts)

        assert_equal "workspace/account", request_opts[:stripe_context]
      end

      should "handle mixed string and StripeContext usage" do
        config = StripeConfiguration.setup do |c|
          c.stripe_context = "config_string"
        end

        context_object = StripeContext.new(%w[request object])
        opts = { stripe_context: context_object }

        merged = RequestOptions.merge_config_and_opts(config, opts)
        assert_equal "request/object", merged[:stripe_context]
      end
    end
  end
end

# context "API Requestor integration" do
#   should "convert StripeContext to header string" do
#     # This test verifies that when a StripeContext is used in request options,
#     # it gets properly converted to a string header value
#     context = StripeContext.new(%w[workspace account])

#     # Mock a simple request to verify header conversion
#     stub_request(:get, "#{Stripe.api_base}/v1/customers")
#       .with { |request| request.headers["Stripe-Context"] == "workspace/account" }
#       .to_return(
#         status: 200,
#         body: JSON.generate({ object: "list", data: [] }),
#         headers: { "Content-Type" => "application/json" }
#       )

#     client = StripeClient.new("sk_test_123")
#     client.raw_request(:get, "/v1/customers", opts: { stripe_context: context })

#     # If we get here without an exception, the header conversion worked
#     assert true
#   end
# end
