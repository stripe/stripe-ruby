# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class SubscriptionItemTest < Test::Unit::TestCase
    should "be listable" do
      items = EwStripe::SubscriptionItem.list(
        subscription: "sub_123"
      )
      assert_requested :get, "#{EwStripe.api_base}/v1/subscription_items",
                       query: { subscription: "sub_123" }
      assert items.data.is_a?(Array)
      assert items.data[0].is_a?(EwStripe::SubscriptionItem)
    end

    should "be retrievable" do
      item = EwStripe::SubscriptionItem.retrieve("si_123")
      assert_requested :get, "#{EwStripe.api_base}/v1/subscription_items/si_123"
      assert item.is_a?(EwStripe::SubscriptionItem)
    end

    should "be creatable" do
      item = EwStripe::SubscriptionItem.create(
        price: "sapphire-elite",
        quantity: 3,
        subscription: "sub_123"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/subscription_items"
      assert item.is_a?(EwStripe::SubscriptionItem)
    end

    should "be saveable" do
      item = EwStripe::SubscriptionItem.retrieve("si_123")
      item.quantity = 4
      item.save
      assert_requested :post, "#{EwStripe.api_base}/v1/subscription_items/#{item.id}"
    end

    should "be updateable" do
      item = EwStripe::SubscriptionItem.update("si_123", metadata: { foo: "bar" })
      assert_requested :post, "#{EwStripe.api_base}/v1/subscription_items/si_123"
      assert item.is_a?(EwStripe::SubscriptionItem)
    end

    context "#delete" do
      should "be deletable" do
        item = EwStripe::SubscriptionItem.retrieve("si_123")
        item = item.delete
        assert_requested :delete, "#{EwStripe.api_base}/v1/subscription_items/#{item.id}"
        assert item.is_a?(EwStripe::SubscriptionItem)
      end
    end

    context ".delete" do
      should "be deletable" do
        item = EwStripe::SubscriptionItem.delete("si_123")
        assert_requested :delete, "#{EwStripe.api_base}/v1/subscription_items/si_123"
        assert item.is_a?(EwStripe::SubscriptionItem)
      end
    end

    context "#create_usage_record" do
      should "create a usage record" do
        EwStripe::SubscriptionItem.create_usage_record(
          "si_123",
          quantity: 5000,
          timestamp: Time.now.to_i,
          action: "increment"
        )
        assert_requested :post, "#{EwStripe.api_base}/v1/subscription_items/si_123/usage_records"
      end
    end

    context "#list_usage_record_summaries" do
      should "list usage record summaries" do
        EwStripe::SubscriptionItem.list_usage_record_summaries(
          "si_123"
        )
        assert_requested :get, "#{EwStripe.api_base}/v1/subscription_items/si_123/usage_record_summaries"
      end
    end
  end
end
