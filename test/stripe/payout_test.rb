# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class PayoutTest < Test::Unit::TestCase
    should "be listable" do
      payouts = StripeClient.new.payouts.list
      assert_requested :get, "#{Stripe.api_base}/v1/payouts"
      assert payouts.data.is_a?(Array)
      assert payouts.data[0].is_a?(Stripe::Payout)
    end

    should "be retrievable" do
      payout = StripeClient.new.payouts.retrieve("tr_123")
      assert_requested :get, "#{Stripe.api_base}/v1/payouts/tr_123"
      assert payout.is_a?(Stripe::Payout)
    end

    should "be creatable" do
      payout = StripeClient.new.payouts.create(
        amount: 100,
        currency: "USD"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/payouts"
      assert payout.is_a?(Stripe::Payout)
    end

    should "be saveable" do
      payout = StripeClient.new.payouts.retrieve("tr_123")
      payout.metadata["key"] = "value"
      payout.save
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/#{payout.id}"
    end

    should "be updateable" do
      payout = StripeClient.new.payouts.update("tr_123", metadata: { foo: "bar" })
      assert_requested :post, "#{Stripe.api_base}/v1/payouts/tr_123"
      assert payout.is_a?(Stripe::Payout)
    end

    context "#cancel" do
      should "cancel a payout" do
        payout = StripeClient.new.payouts.retrieve("tr_123")
        payout = payout.cancel
        assert payout.is_a?(Stripe::Payout)
      end
    end

    context ".cancel" do
      should "cancel a payout" do
        payout = StripeClient.new.payouts.cancel("pm_123")
        assert payout.is_a?(Stripe::Payout)
      end
    end

    context "#reverse" do
      should "reverse a payout" do
        payout = StripeClient.new.payouts.retrieve("tr_123")
        payout = payout.reverse
        assert payout.is_a?(Stripe::Payout)
      end
    end

    context ".reverse" do
      should "reverse a payout" do
        payout = StripeClient.new.payouts.reverse("pm_123")
        assert payout.is_a?(Stripe::Payout)
      end
    end
  end
end
