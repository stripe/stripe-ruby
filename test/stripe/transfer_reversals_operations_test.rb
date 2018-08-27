# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class TransferReversalsOperationsTest < Test::Unit::TestCase
    setup do
      @transfer_id = "tr_123"
      @reversal_id = "trr_123"
    end

    context "#create_reversal" do
      should "create a reversal" do
        reversal = Stripe::Transfer.create_reversal(
          @transfer_id,
          amount: 100
        )
        assert_requested :post, "#{Stripe.api_base}/v1/transfers/#{@transfer_id}/reversals"
        assert reversal.is_a?(Stripe::Reversal)
      end
    end

    context "#retrieve_reversal" do
      should "retrieve a reversal" do
        reversal = Stripe::Transfer.retrieve_reversal(
          @transfer_id,
          @reversal_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/transfers/#{@transfer_id}/reversals/#{@reversal_id}"
        assert reversal.is_a?(Stripe::Reversal)
      end
    end

    context "#update_reversal" do
      should "update a reversal" do
        reversal = Stripe::Transfer.update_reversal(
          @transfer_id,
          @reversal_id,
          metadata: { foo: "bar" }
        )
        assert_requested :post, "#{Stripe.api_base}/v1/transfers/#{@transfer_id}/reversals/#{@reversal_id}"
        assert reversal.is_a?(Stripe::Reversal)
      end
    end

    context "#list_reversals" do
      should "list the transfer's reversals" do
        reversals = Stripe::Transfer.list_reversals(
          @transfer_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/transfers/#{@transfer_id}/reversals"
        assert reversals.is_a?(Stripe::ListObject)
        assert reversals.data.is_a?(Array)
      end
    end
  end
end
