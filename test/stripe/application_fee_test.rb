# frozen_string_literal: true

require File.expand_path("../test_helper", __dir__)

module Stripe
  class ApplicationFeeTest < Test::Unit::TestCase
    should "be listable" do
      fees = Stripe::ApplicationFee.list
      assert_requested :get, "#{Stripe.api_base}/v1/application_fees"
      assert fees.data.is_a?(Array)
      assert fees.data[0].is_a?(Stripe::ApplicationFee)
    end

    context "#create_refund" do
      should "create a refund" do
        refund = Stripe::ApplicationFee.create_refund(
          "fee_123"
        )
        assert_requested :post, "#{Stripe.api_base}/v1/application_fees/fee_123/refunds"
        assert refund.is_a?(Stripe::ApplicationFeeRefund)
      end
    end

    context "#retrieve_refund" do
      should "retrieve a refund" do
        refund = Stripe::ApplicationFee.retrieve_refund(
          "fee_123",
          "fr_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_123/refunds/fr_123"
        assert refund.is_a?(Stripe::ApplicationFeeRefund)
      end
    end

    context "#update_refund" do
      should "update a refund" do
        refund = Stripe::ApplicationFee.update_refund(
          "fee_123",
          "fr_123",
          metadata: { foo: "bar" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/application_fees/fee_123/refunds/fr_123"
        assert refund.is_a?(Stripe::ApplicationFeeRefund)
      end
    end

    context "#list_refunds" do
      should "list the application fee's refuns" do
        refunds = Stripe::ApplicationFee.list_refunds(
          "fee_123"
        )
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees/fee_123/refunds"
        assert refunds.is_a?(Stripe::ListObject)
        assert refunds.data.is_a?(Array)
      end
    end

    context "invalid inputs" do
      should "handle null values gracefully" do
        assert_raises(ArgumentError) { Stripe::ApplicationFee.create_refund(nil) }
        assert_raises(ArgumentError) { Stripe::ApplicationFee.retrieve_refund(nil, "fr_123") }
        assert_raises(ArgumentError) { Stripe::ApplicationFee.retrieve_refund("fee_123", nil) }
        assert_raises(ArgumentError) { Stripe::ApplicationFee.update_refund(nil, "fr_123", metadata: { foo: "bar" }) }
        assert_raises(ArgumentError) { Stripe::ApplicationFee.update_refund("fee_123", nil, metadata: { foo: "bar" }) }
        assert_raises(ArgumentError) { Stripe::ApplicationFee.list_refunds(nil) }
      end

      should "handle empty strings gracefully" do
        assert_raises(ArgumentError) { Stripe::ApplicationFee.create_refund("") }
        assert_raises(ArgumentError) { Stripe::ApplicationFee.retrieve_refund("", "fr_123") }
        assert_raises(ArgumentError) { Stripe::ApplicationFee.retrieve_refund("fee_123", "") }
        assert_raises(ArgumentError) { Stripe::ApplicationFee.update_refund("", "fr_123", metadata: { foo: "bar" }) }
        assert_raises(ArgumentError) { Stripe::ApplicationFee.update_refund("fee_123", "", metadata: { foo: "bar" }) }
        assert_raises(ArgumentError) { Stripe::ApplicationFee.list_refunds("") }
      end

      should "handle incorrect data types gracefully" do
        assert_raises(TypeError) { Stripe::ApplicationFee.create_refund(123) }
        assert_raises(TypeError) { Stripe::ApplicationFee.retrieve_refund(123, "fr_123") }
        assert_raises(TypeError) { Stripe::ApplicationFee.retrieve_refund("fee_123", 123) }
        assert_raises(TypeError) { Stripe::ApplicationFee.update_refund(123, "fr_123", metadata: { foo: "bar" }) }
        assert_raises(TypeError) { Stripe::ApplicationFee.update_refund("fee_123", 123, metadata: { foo: "bar" }) }
        assert_raises(TypeError) { Stripe::ApplicationFee.list_refunds(123) }
      end
    end
  end
end
