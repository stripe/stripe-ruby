require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class PayoutTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:payout)

    should "be listable" do
      payouts = Stripe::Payout.list
      assert_requested :get, "#{Stripe.api_base}/v1/payouts"
      assert payouts.data.kind_of?(Array)
      assert payouts.data[0].kind_of?(Stripe::Payout)
    end

    should "be retrievable" do
      payout = Stripe::Payout.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/payouts/#{FIXTURE[:id]}"
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
      payout = Stripe::Payout.retrieve(FIXTURE[:id])
      payout.metadata['key'] = 'value'
      payout.save
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      payout = Stripe::Payout.update(FIXTURE[:id], metadata: {foo: 'bar'})
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/#{FIXTURE[:id]}"
      assert payout.kind_of?(Stripe::Payout)
    end

    context "#cancel" do
      should "cancel a payout" do
        payout = Stripe::Payout.retrieve(FIXTURE[:id])
        payout = payout.cancel
        assert payout.kind_of?(Stripe::Payout)
      end
    end
  end
end
