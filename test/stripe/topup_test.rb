# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class TopupTest < Test::Unit::TestCase
    should "be listable" do
      topups = EwStripe::Topup.list
      assert_requested :get, "#{EwStripe.api_base}/v1/topups"
      assert topups.data.is_a?(Array)
      assert topups.data[0].is_a?(EwStripe::Topup)
    end

    should "be retrievable" do
      topup = EwStripe::Topup.retrieve("tu_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/topups/tu_123"
      assert topup.is_a?(EwStripe::Topup)
    end

    should "be creatable" do
      topup = EwStripe::Topup.create(
        amount: 100,
        currency: "USD",
        source: "src_123",
        description: "description",
        statement_descriptor: "statement descriptor"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/topups"
      assert topup.is_a?(EwStripe::Topup)
    end

    should "be saveable" do
      topup = EwStripe::Topup.retrieve("tu_123")
      topup.metadata["key"] = "value"
      topup.save
      assert_requested :post, "#{EwStripe.api_base}/v1/topups/#{topup.id}"
    end

    should "be updateable" do
      topup = EwStripe::Topup.update("tu_123", metadata: { foo: "bar" })
      assert_requested :post, "#{EwStripe.api_base}/v1/topups/tu_123"
      assert topup.is_a?(EwStripe::Topup)
    end

    context "#cancel" do
      should "cancel the topup" do
        topup = EwStripe::Topup.retrieve("tu_123")
        topup = topup.cancel
        assert_requested :post, "#{EwStripe.api_base}/v1/topups/#{topup.id}/cancel"
        assert topup.is_a?(EwStripe::Topup)
      end
    end

    context ".cancel" do
      should "cancel the topup" do
        topup = EwStripe::Topup.cancel("tu_123")
        assert_requested :post, "#{EwStripe.api_base}/v1/topups/tu_123/cancel"
        assert topup.is_a?(EwStripe::Topup)
      end
    end
  end
end
