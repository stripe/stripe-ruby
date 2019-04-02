# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class DisputeTest < Test::Unit::TestCase
    should "be listable" do
      disputes = Stripe::Dispute.list
      assert_requested :get, "#{Stripe.api_base}/v1/disputes"
      assert disputes.data.is_a?(Array)
      assert disputes.first.is_a?(Stripe::Dispute)
    end

    should "be retrievable" do
      dispute = Stripe::Dispute.retrieve("dp_123")
      assert_requested :get, "#{Stripe.api_base}/v1/disputes/dp_123"
      assert dispute.is_a?(Stripe::Dispute)
    end

    should "be saveable" do
      dispute = Stripe::Dispute.retrieve("dp_123")
      dispute.metadata["key"] = "value"
      dispute.save
      assert_requested :post, "#{Stripe.api_base}/v1/disputes/#{dispute.id}"
    end

    should "be updateable" do
      dispute = Stripe::Dispute.update("dp_123", metadata: { key: "value" })
      assert_requested :post, "#{Stripe.api_base}/v1/disputes/dp_123"
      assert dispute.is_a?(Stripe::Dispute)
    end

    context "#close" do
      should "be closeable" do
        dispute = Stripe::Dispute.retrieve("dp_123")
        dispute.close
        assert_requested :post,
                         "#{Stripe.api_base}/v1/disputes/#{dispute.id}/close"
        assert dispute.is_a?(Stripe::Dispute)
      end
    end

    context ".close" do
      should "close a dispute" do
        dispute = Stripe::Dispute.close("dp_123")
        assert_requested :post, "#{Stripe.api_base}/v1/disputes/dp_123/close"
        assert dispute.is_a?(Stripe::Dispute)
      end
    end
  end
end
