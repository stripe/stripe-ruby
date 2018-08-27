# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class RefundTest < Test::Unit::TestCase
    should "be listable" do
      refunds = Stripe::Refund.list
      assert_requested :get, "#{Stripe.api_base}/v1/refunds"
      assert refunds.data.is_a?(Array)
      assert refunds.first.is_a?(Stripe::Refund)
    end

    should "be retrievable" do
      refund = Stripe::Refund.retrieve("re_123")
      assert_requested :get, "#{Stripe.api_base}/v1/refunds/re_123"
      assert refund.is_a?(Stripe::Refund)
    end

    should "be creatable" do
      refund = Stripe::Refund.create(charge: "ch_123")
      assert_requested :post, "#{Stripe.api_base}/v1/refunds"
      assert refund.is_a?(Stripe::Refund)
    end

    should "be saveable" do
      refund = Stripe::Refund.retrieve("re_123")
      refund.metadata["key"] = "value"
      refund.save
      assert_requested :post, "#{Stripe.api_base}/v1/refunds/#{refund.id}"
    end

    should "be updateable" do
      refund = Stripe::Refund.update("re_123", metadata: { key: "value" })
      assert_requested :post, "#{Stripe.api_base}/v1/refunds/re_123"
      assert refund.is_a?(Stripe::Refund)
    end
  end
end
