# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class ReversalTest < Test::Unit::TestCase
    setup do
      @transfer = Stripe::Transfer.retrieve("tr_123")
    end

    should "be listable" do
      reversals = @transfer.reversals.list
      assert_requested :get,
                       "#{Stripe.api_base}/v1/transfers/#{@transfer.id}/reversals"
      assert reversals.data.is_a?(Array)
      assert reversals.data[0].is_a?(Stripe::Reversal)
    end

    should "be retrievable" do
      reversal = @transfer.reversals.retrieve("trr_123")
      assert_requested :get,
                       "#{Stripe.api_base}/v1/transfers/#{@transfer.id}/reversals/trr_123"
      assert reversal.is_a?(Stripe::Reversal)
    end

    should "be creatable" do
      reversal = @transfer.reversals.create(
        amount: 100
      )
      assert_requested :post,
                       "#{Stripe.api_base}/v1/transfers/#{@transfer.id}/reversals"
      assert reversal.is_a?(Stripe::Reversal)
    end

    should "be saveable" do
      reversal = @transfer.reversals.retrieve("trr_123")
      reversal.metadata["key"] = "value"
      reversal.save
      assert_requested :post,
                       "#{Stripe.api_base}/v1/transfers/#{reversal.transfer}/reversals/#{reversal.id}"
    end
  end
end
