# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class StripeObjectInt64Test < Test::Unit::TestCase
    # A test resource with an int64_string-encoded field.
    class Int64Resource < Stripe::StripeObject
      def self.field_encodings
        { amount: :int64_string }
      end
    end

    # A nested inner class that has its own field_encodings.
    class InnerDetail < Stripe::StripeObject
      def self.field_encodings
        { quantity: :int64_string }
      end
    end

    # A parent resource referencing the inner class via inner_class_types.
    # This demonstrates that nested coercion works through each StripeObject
    # applying its own field_encodings during update_attributes (not through
    # V2TypeCoercion recursing into StripeObjects).
    class ParentResource < Stripe::StripeObject
      def self.field_encodings
        { total: :int64_string }
      end

      def self.inner_class_types
        { detail: InnerDetail }
      end
    end

    context "response-side int64_string coercion via construct_from" do
      should "deserialize a string field to Integer" do
        obj = Int64Resource.construct_from(id: "obj_1", amount: "42")
        assert_equal 42, obj.amount
        assert_instance_of Integer, obj.amount
      end

      should "handle large int64 values" do
        obj = Int64Resource.construct_from(id: "obj_2", amount: "9223372036854775807")
        assert_equal 9_223_372_036_854_775_807, obj.amount
      end

      should "preserve negative values" do
        obj = Int64Resource.construct_from(id: "obj_3", amount: "-100")
        assert_equal(-100, obj.amount)
      end

      should "preserve zero" do
        obj = Int64Resource.construct_from(id: "obj_4", amount: "0")
        assert_equal 0, obj.amount
        assert_instance_of Integer, obj.amount
      end

      should "pass through nil without error" do
        obj = Int64Resource.construct_from(id: "obj_5", amount: nil)
        assert_nil obj.amount
      end

      should "leave non-encoded fields unaffected" do
        obj = Int64Resource.construct_from(id: "obj_6", amount: "10", name: "test")
        assert_equal "test", obj.name
      end
    end

    context "nested resource coercion (each layer applies its own field_encodings)" do
      should "coerce both parent and nested inner-class fields" do
        obj = ParentResource.construct_from(
          id: "parent_1",
          total: "500",
          detail: { quantity: "25", label: "items" }
        )

        assert_equal 500, obj.total
        assert_instance_of Integer, obj.total

        assert_equal 25, obj.detail.quantity
        assert_instance_of Integer, obj.detail.quantity

        assert_equal "items", obj.detail.label
      end

      should "handle nil nested object" do
        obj = ParentResource.construct_from(id: "parent_2", total: "100", detail: nil)
        assert_equal 100, obj.total
        assert_nil obj.detail
      end
    end
  end
end
