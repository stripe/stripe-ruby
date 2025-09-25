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
end
