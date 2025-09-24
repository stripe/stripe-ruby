# frozen_string_literal: true

require_relative "../test_helper"

module Stripe
  class StripeContextTest < Test::Unit::TestCase
    def test_empty_context
      context = StripeContext.new
      assert_equal("", context.to_s)
    end

    def test_context_with_segments
      context = StripeContext.new(["a", "b", "c"])
      assert_equal("a/b/c", context.to_s)
    end

    def test_parse_empty_string
      context = StripeContext.parse("")
      assert_equal("", context.to_s)
    end

    def test_parse_nil
      context = StripeContext.parse(nil)
      assert_equal("", context.to_s)
    end

    def test_parse_single_segment
      context = StripeContext.parse("a")
      assert_equal("a", context.to_s)
    end

    def test_parse_multiple_segments
      context = StripeContext.parse("a/b/c")
      assert_equal("a/b/c", context.to_s)
    end

    def test_parent_returns_new_instance
      context = StripeContext.parse("a/b/c")
      parent = context.parent

      # Original unchanged
      assert_equal("a/b/c", context.to_s)
      # New instance with removed segment
      assert_equal("a/b", parent.to_s)
    end

    def test_parent_of_single_segment
      context = StripeContext.parse("a")
      parent = context.parent
      assert_equal("", parent.to_s)
    end

    def test_parent_of_empty_context_raises_error
      context = StripeContext.new

      exception = assert_raise(ArgumentError) do
        context.parent
      end
      assert_equal("Cannot get parent of empty context", exception.message)
    end

    def test_child_returns_new_instance
      context = StripeContext.parse("a/b")
      child = context.child("c")

      # Original unchanged
      assert_equal("a/b", context.to_s)
      # New instance with added segment
      assert_equal("a/b/c", child.to_s)
    end

    def test_child_on_empty_context
      context = StripeContext.new
      child = context.child("a")
      assert_equal("a", child.to_s)
    end

    def test_method_chaining
      context = StripeContext.parse("a")
      result = context.child("b").child("c").parent
      assert_equal("a/b", result.to_s)
    end

    def test_init_with_nil_segments
      context = StripeContext.new(nil)
      assert_equal("", context.to_s)
    end

    def test_init_with_empty_array
      context = StripeContext.new([])
      assert_equal("", context.to_s)
    end

    def test_as_json
      context = StripeContext.parse("org_123/proj_456")
      assert_equal("org_123/proj_456", context.as_json)
    end

    def test_to_json
      context = StripeContext.parse("org_123/proj_456")
      assert_equal("\"org_123/proj_456\"", context.to_json)
    end

    def test_request_options_with_stripe_context
      context = StripeContext.parse("org_123/proj_456")

      opts = RequestOptions.extract_opts_from_hash(stripe_context: context)

      assert_equal("org_123/proj_456", opts[:stripe_context])
    end

    def test_request_options_with_stripe_context_string
      opts = RequestOptions.extract_opts_from_hash(stripe_context: "org_123/proj_456")

      assert_equal("org_123/proj_456", opts[:stripe_context])
    end

    def test_request_options_with_empty_stripe_context
      context = StripeContext.new

      opts = RequestOptions.extract_opts_from_hash(stripe_context: context)

      assert_equal("", opts[:stripe_context])
    end

    def test_request_options_validation_allows_stripe_context
      context = StripeContext.parse("org_123/proj_456")

      # Should not raise an error
      opts = { stripe_context: context }
      normalized_opts = Util.normalize_opts(opts)

      assert_nothing_raised do
        RequestOptions.error_on_non_string_user_opts(normalized_opts)
      end
    end

    def test_thin_event_with_context
      event = ThinEvent.new(
        id: "evt_123",
        type: "test.event",
        created: Time.now.to_i,
        context: "org_123/proj_456"
      )

      assert_instance_of(StripeContext, event.context)
      assert_equal("org_123/proj_456", event.context.to_s)
    end

    def test_thin_event_with_empty_context
      event = ThinEvent.new(
        id: "evt_123",
        type: "test.event",
        created: Time.now.to_i,
        context: ""
      )

      assert_instance_of(StripeContext, event.context)
      assert_equal("", event.context.to_s)
    end

    def test_thin_event_with_nil_context
      event = ThinEvent.new(
        id: "evt_123",
        type: "test.event",
        created: Time.now.to_i,
        context: nil
      )

      assert_nil(event.context)
    end

    def test_thin_event_without_context
      event = ThinEvent.new(
        id: "evt_123",
        type: "test.event",
        created: Time.now.to_i
      )

      assert_nil(event.context)
    end

    def test_empty_context_does_not_set_header
      empty_context = StripeContext.new

      opts = RequestOptions.extract_opts_from_hash(stripe_context: empty_context)

      # Empty context should not set stripe_context in options
      assert_nil(opts[:stripe_context])
    end

    def test_non_empty_context_sets_header
      context = StripeContext.parse("org_123/proj_456")

      opts = RequestOptions.extract_opts_from_hash(stripe_context: context)

      # Non-empty context should set the header
      assert_equal("org_123/proj_456", opts[:stripe_context])
    end
  end
end