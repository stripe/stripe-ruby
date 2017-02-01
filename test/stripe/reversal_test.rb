require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class ReversalTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:transfer_reversal)

    setup do
      @transfer = Stripe::Transfer.retrieve(API_FIXTURES.fetch(:transfer)[:id])
    end

    should "be listable" do
      reversals = @transfer.reversals.list
      assert_requested :get,
        "#{Stripe.api_base}/v1/transfers/#{@transfer.id}/reversals"
      assert reversals.data.kind_of?(Array)
      assert reversals.data[0].kind_of?(Stripe::Reversal)
    end

    should "be retrievable" do
      reversal = @transfer.reversals.retrieve(FIXTURE[:id])
      assert_requested :get,
        "#{Stripe.api_base}/v1/transfers/#{@transfer.id}/reversals/#{FIXTURE[:id]}"
      assert reversal.kind_of?(Stripe::Reversal)
    end

    should "be creatable" do
      reversal = @transfer.reversals.create(
        amount: 100
      )
      assert_requested :post,
        "#{Stripe.api_base}/v1/transfers/#{@transfer.id}/reversals"
      assert reversal.kind_of?(Stripe::Reversal)
    end

    should "be saveable" do
      reversal = @transfer.reversals.retrieve(FIXTURE[:id])
      reversal.metadata['key'] = 'value'
      reversal.save
      assert_requested :post,
        "#{Stripe.api_base}/v1/transfers/#{@transfer.id}/reversals/#{FIXTURE[:id]}"
    end
  end
end
