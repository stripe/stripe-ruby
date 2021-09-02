# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class DisputeTest < Test::Unit::TestCase
    should "be listable" do
      disputes = EwStripe::Dispute.list
      assert_requested :get, "#{EwStripe.api_base}/v1/disputes"
      assert disputes.data.is_a?(Array)
      assert disputes.first.is_a?(EwStripe::Dispute)
    end

    should "be retrievable" do
      dispute = EwStripe::Dispute.retrieve("dp_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/disputes/dp_123"
      assert dispute.is_a?(EwStripe::Dispute)
    end

    should "be saveable" do
      dispute = EwStripe::Dispute.retrieve("dp_123")
      dispute.metadata["key"] = "value"
      dispute.save
      assert_requested :post, "#{EwStripe.api_base}/v1/disputes/#{dispute.id}"
    end

    should "be updateable" do
      dispute = EwStripe::Dispute.update("dp_123", metadata: { key: "value" })
      assert_requested :post, "#{EwStripe.api_base}/v1/disputes/dp_123"
      assert dispute.is_a?(EwStripe::Dispute)
    end

    context "#close" do
      should "be closeable" do
        dispute = EwStripe::Dispute.retrieve("dp_123")
        dispute.close
        assert_requested :post,
                         "#{EwStripe.api_base}/v1/disputes/#{dispute.id}/close"
        assert dispute.is_a?(EwStripe::Dispute)
      end
    end

    context ".close" do
      should "close a dispute" do
        dispute = EwStripe::Dispute.close("dp_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/disputes/dp_123/close"
        assert dispute.is_a?(EwStripe::Dispute)
      end
    end
  end
end
