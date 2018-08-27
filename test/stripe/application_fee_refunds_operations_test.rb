# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class ApplicationFeeRefundsOperationsTest < Test::Unit::TestCase
    setup do
      @application_fee_id = "fee_123"
      @refund_id = "fr_123"
    end

    context "#create_refund" do
      should "create a refund" do
        refund = Stripe::ApplicationFee.create_refund(
          @application_fee_id
        )
        assert_requested :post, "#{Stripe.api_base}/v1/application_fees/#{@application_fee_id}/refunds"
        assert refund.is_a?(Stripe::ApplicationFeeRefund)
      end
    end

    context "#retrieve_refund" do
      should "retrieve a refund" do
        refund = Stripe::ApplicationFee.retrieve_refund(
          @application_fee_id,
          @refund_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees/#{@application_fee_id}/refunds/#{@refund_id}"
        assert refund.is_a?(Stripe::ApplicationFeeRefund)
      end
    end

    context "#update_refund" do
      should "update a refund" do
        refund = Stripe::ApplicationFee.update_refund(
          @application_fee_id,
          @refund_id,
          metadata: { foo: "bar" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/application_fees/#{@application_fee_id}/refunds/#{@refund_id}"
        assert refund.is_a?(Stripe::ApplicationFeeRefund)
      end
    end

    context "#list_refunds" do
      should "list the application fee's refuns" do
        refunds = Stripe::ApplicationFee.list_refunds(
          @application_fee_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/application_fees/#{@application_fee_id}/refunds"
        assert refunds.is_a?(Stripe::ListObject)
        assert refunds.data.is_a?(Array)
      end
    end
  end
end
