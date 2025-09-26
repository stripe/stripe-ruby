# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class StripeContextTest < Test::Unit::TestCase
    context "constructor" do
      should "create empty context with no segments" do
        context = StripeContext.new
        assert_equal [], context.segments
        assert context.empty?
      end

      should "create context with segments array" do
        segments = %w[a b c]
        context = StripeContext.new(segments)
        assert_equal segments, context.segments
        refute context.empty?
      end

      should "create context with nil segments" do
        context = StripeContext.new(nil)
        assert_equal [], context.segments
        assert context.empty?
      end

      should "convert non-string segments to strings" do
        context = StripeContext.new([1, :symbol, "string"])
        assert_equal %w[1 symbol string], context.segments
      end

      should "freeze segments array" do
        context = StripeContext.new(%w[a b])
        assert context.segments.frozen?
      end
    end

    context "parse" do
      should "parse nil string" do
        context = StripeContext.parse(nil)
        assert_equal [], context.segments
      end

      should "parse empty string" do
        context = StripeContext.parse("")
        assert_equal [], context.segments
      end

      should "parse single segment" do
        context = StripeContext.parse("workspace")
        assert_equal ["workspace"], context.segments
      end

      should "parse multiple segments" do
        context = StripeContext.parse("workspace/account/customer")
        assert_equal %w[workspace account customer], context.segments
      end

      should "handle empty segments in string" do
        context = StripeContext.parse("a//b")
        assert_equal ["a", "", "b"], context.segments
      end
    end

    context "push" do
      should "add segment to empty context" do
        context = StripeContext.new
        new_context = context.push("segment")

        assert_equal [], context.segments
        assert_equal ["segment"], new_context.segments
        refute_same context, new_context
      end

      should "add segment to existing context" do
        context = StripeContext.new(%w[a b])
        new_context = context.push("c")

        assert_equal %w[a b], context.segments
        assert_equal %w[a b c], new_context.segments
        refute_same context, new_context
      end

      should "raise error for nil segment" do
        context = StripeContext.new
        assert_raises(ArgumentError) { context.push(nil) }
      end

      should "raise error for empty segment" do
        context = StripeContext.new
        assert_raises(ArgumentError) { context.push("") }
      end

      should "raise error for whitespace segment" do
        context = StripeContext.new
        assert_raises(ArgumentError) { context.push("   ") }
      end

      should "convert non-string segment to string" do
        context = StripeContext.new
        new_context = context.push(123)
        assert_equal ["123"], new_context.segments
      end

      should "strip whitespace from segment" do
        context = StripeContext.new
        new_context = context.push("  segment  ")
        assert_equal ["segment"], new_context.segments
      end
    end

    context "pop" do
      should "remove last segment" do
        context = StripeContext.new(%w[a b c])
        new_context = context.pop

        assert_equal %w[a b c], context.segments
        assert_equal %w[a b], new_context.segments
        refute_same context, new_context
      end

      should "raise for popping empty context" do
        context = StripeContext.new
        assert_raises(IndexError) { context.pop }
      end

      should "handle single segment context" do
        context = StripeContext.new(["single"])
        new_context = context.pop

        assert_equal ["single"], context.segments
        assert_equal [], new_context.segments
      end
    end

    context "to_s" do
      should "return empty string for empty context" do
        context = StripeContext.new
        assert_equal "", context.to_s
      end

      should "return single segment" do
        context = StripeContext.new(["workspace"])
        assert_equal "workspace", context.to_s
      end

      should "return slash-separated segments" do
        context = StripeContext.new(%w[workspace account customer])
        assert_equal "workspace/account/customer", context.to_s
      end
    end

    context "utility methods" do
      should "return correct empty status" do
        empty_context = StripeContext.new
        non_empty_context = StripeContext.new(["a"])

        assert empty_context.empty?
        refute non_empty_context.empty?
      end
    end

    context "inspect" do
      should "return debug representation" do
        context = StripeContext.new(%w[a b])
        inspect_str = context.inspect

        assert_includes inspect_str, "StripeContext"
        assert_includes inspect_str, 'segments=["a", "b"]'
      end
    end

    context "immutability" do
      should "not modify original context when calling push" do
        original = StripeContext.new(%w[a b])
        pushed = original.push("c")
        popped = original.pop

        assert_equal %w[a b], original.segments
        assert_equal %w[a b c], pushed.segments
        assert_equal ["a"], popped.segments

        assert_not_same original, pushed
        assert_not_same original, popped
        assert_not_same pushed, popped
      end
    end

    context "usage patterns" do
      should "support hierarchical context building" do
        base_context = StripeContext.parse("workspace_123")
        child_context = base_context.push("account_456")
        grandchild_context = child_context.push("customer_789")

        assert_equal "workspace_123", base_context.to_s
        assert_equal "workspace_123/account_456", child_context.to_s
        assert_equal "workspace_123/account_456/customer_789", grandchild_context.to_s

        # Go back up the hierarchy
        back_to_child = grandchild_context.pop
        back_to_base = back_to_child.pop

        assert_equal "workspace_123/account_456", back_to_child.to_s
        assert_equal "workspace_123", back_to_base.to_s
      end
    end
  end

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

        notification = Stripe::V2::Core::EventNotification.new(event_payload, client)

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

        notification = Stripe::V2::Core::EventNotification.new(event_payload, client)

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

        notification = Stripe::V2::Core::EventNotification.new(event_payload, client)

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

    context "API Requestor integration" do
      should "convert StripeContext to header string" do
        # This test verifies that when a StripeContext is used in request options,
        # it gets properly converted to a string header value
        context = StripeContext.new(%w[workspace account])

        # Mock a simple request to verify header conversion
        stub_request(:get, "https://api.stripe.com/v1/customers")
          .with(
            headers: {
              "Stripe-Context" => "workspace/account",
            }
          ).to_return(
            status: 200,
            body: JSON.generate({ object: "list", data: [] }),
            headers: { "Content-Type" => "application/json" }
          )

        client = StripeClient.new("sk_test_123")
        client.raw_request(:get, "/v1/customers", opts: { stripe_context: context })

        # If we get here without an exception, the header conversion worked
        assert true
      end
    end
  end
end
