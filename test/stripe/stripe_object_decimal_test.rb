# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)
require "bigdecimal"

module Stripe
  class StripeObjectDecimalTest < Test::Unit::TestCase
    # A test resource with a decimal_string-encoded field.
    class DecimalResource < Stripe::StripeObject
      def self.field_encodings
        { amount: :decimal_string }
      end
    end

    # A test resource without any field_encodings (non-regression).
    class PlainResource < Stripe::StripeObject
    end

    context "response-side decimal_string coercion" do
      should "deserialize a string field to BigDecimal when encoding is :decimal_string" do
        obj = DecimalResource.construct_from(id: "obj_1", amount: "99.999")
        assert_equal BigDecimal("99.999"), obj.amount
        assert_instance_of BigDecimal, obj.amount
      end

      should "preserve full decimal precision (0.1 is a BigDecimal, not a Float)" do
        obj = DecimalResource.construct_from(id: "obj_2", amount: "0.1")
        assert_equal BigDecimal("0.1"), obj.amount
        assert_instance_of BigDecimal, obj.amount
        # Confirm it's not stored as a Float (which would lose precision)
        refute_instance_of Float, obj.amount
      end

      should "preserve negative decimal values" do
        obj = DecimalResource.construct_from(id: "obj_3", amount: "-1.5")
        assert_equal BigDecimal("-1.5"), obj.amount
        assert_instance_of BigDecimal, obj.amount
      end

      should "preserve zero" do
        obj = DecimalResource.construct_from(id: "obj_4", amount: "0")
        assert_equal BigDecimal("0"), obj.amount
        assert_instance_of BigDecimal, obj.amount
      end

      should "pass through nil without error" do
        obj = DecimalResource.construct_from(id: "obj_5", amount: nil)
        assert_nil obj.amount
      end

      should "leave non-decimal fields unaffected on a resource with field_encodings" do
        obj = DecimalResource.construct_from(id: "obj_6", amount: "10.0", name: "test")
        assert_equal "test", obj.name
      end
    end

    context "non-regression: resources without field_encodings" do
      should "not coerce string fields on plain resources" do
        obj = PlainResource.construct_from(id: "obj_7", value: "99.999")
        assert_equal "99.999", obj.value
        assert_instance_of String, obj.value
      end

      should "leave all fields unaffected" do
        obj = PlainResource.construct_from(id: "obj_8", count: 42, label: "hello")
        assert_equal 42, obj.count
        assert_equal "hello", obj.label
      end
    end
  end
end
