# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class PayoutTest < Test::Unit::TestCase
    should "be listable" do
      payouts = EwStripe::Payout.list
      assert_requested :get, "#{EwStripe.api_base}/v1/payouts"
      assert payouts.data.is_a?(Array)
      assert payouts.data[0].is_a?(EwStripe::Payout)
    end

    should "be retrievable" do
      payout = EwStripe::Payout.retrieve("tr_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/payouts/tr_123"
      assert payout.is_a?(EwStripe::Payout)
    end

    should "be creatable" do
      payout = EwStripe::Payout.create(
        amount: 100,
        currency: "USD"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/payouts"
      assert payout.is_a?(EwStripe::Payout)
    end

    should "be saveable" do
      payout = EwStripe::Payout.retrieve("tr_123")
      payout.metadata["key"] = "value"
      payout.save
      assert_requested :post, "#{EwStripe.api_base}/v1/payouts/#{payout.id}"
    end

    should "be updateable" do
      payout = EwStripe::Payout.update("tr_123", metadata: { foo: "bar" })
      assert_requested :post, "#{EwStripe.api_base}/v1/payouts/tr_123"
      assert payout.is_a?(EwStripe::Payout)
    end

    context "#cancel" do
      should "cancel a payout" do
        payout = EwStripe::Payout.retrieve("tr_123")
        payout = payout.cancel
        assert payout.is_a?(EwStripe::Payout)
      end
    end

    context ".cancel" do
      should "cancel a payout" do
        payout = EwStripe::Payout.cancel("pm_123")
        assert payout.is_a?(EwStripe::Payout)
      end
    end

    context "#reverse" do
      should "reverse a payout" do
        payout = EwStripe::Payout.retrieve("tr_123")
        payout = payout.reverse
        assert payout.is_a?(EwStripe::Payout)
      end
    end

    context ".reverse" do
      should "reverse a payout" do
        payout = EwStripe::Payout.reverse("pm_123")
        assert payout.is_a?(EwStripe::Payout)
      end
    end
  end
end
