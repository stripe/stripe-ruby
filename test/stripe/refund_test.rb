# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class RefundTest < Test::Unit::TestCase
    should "be listable" do
      refunds = EwStripe::Refund.list
      assert_requested :get, "#{EwStripe.api_base}/v1/refunds"
      assert refunds.data.is_a?(Array)
      assert refunds.first.is_a?(EwStripe::Refund)
    end

    should "be retrievable" do
      refund = EwStripe::Refund.retrieve("re_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/refunds/re_123"
      assert refund.is_a?(EwStripe::Refund)
    end

    should "be creatable" do
      refund = EwStripe::Refund.create(charge: "ch_123")
      assert_requested :post, "#{EwStripe.api_base}/v1/refunds"
      assert refund.is_a?(EwStripe::Refund)
    end

    should "be saveable" do
      refund = EwStripe::Refund.retrieve("re_123")
      refund.metadata["key"] = "value"
      refund.save
      assert_requested :post, "#{EwStripe.api_base}/v1/refunds/#{refund.id}"
    end

    should "be updateable" do
      refund = EwStripe::Refund.update("re_123", metadata: { key: "value" })
      assert_requested :post, "#{EwStripe.api_base}/v1/refunds/re_123"
      assert refund.is_a?(EwStripe::Refund)
    end
  end
end
