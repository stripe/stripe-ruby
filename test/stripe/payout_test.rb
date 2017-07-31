require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class PayoutTest < Test::Unit::TestCase
    should "be listable" do
      payouts = Stripe::Payout.list
      assert_requested :get, "#{Stripe.api_base}/v1/payouts"
      assert payouts.data.kind_of?(Array)
      assert payouts.data[0].kind_of?(Stripe::Payout)
    end

    should "be retrievable" do
      payout = Stripe::Payout.retrieve("tr_123")
      assert_requested :get, "#{Stripe.api_base}/v1/payouts/tr_123"
      assert payout.kind_of?(Stripe::Payout)
    end

    should "be creatable" do
      payout = Stripe::Payout.create(
        amount: 100,
        currency: "USD"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payouts"
      assert payout.kind_of?(Stripe::Payout)
    end

    should "be saveable" do
      payout = Stripe::Payout.retrieve("tr_123")
      payout.metadata['key'] = 'value'
      payout.save
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/#{payout.id}"
    end

    should "be updateable" do
      payout = Stripe::Payout.update("tr_123", metadata: {foo: 'bar'})
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/tr_123"
      assert payout.kind_of?(Stripe::Payout)
    end

    context "#cancel" do
      should "cancel a payout" do
        payout = Stripe::Payout.retrieve("tr_123")
        payout = payout.cancel
        assert payout.kind_of?(Stripe::Payout)
      end
    end
  end
end
