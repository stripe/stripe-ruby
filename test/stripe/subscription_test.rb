# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module EwStripe
  class SubscriptionTest < Test::Unit::TestCase
    should "be listable" do
      subscriptions = EwStripe::Subscription.list
      assert_requested :get, "#{EwStripe.api_base}/v1/subscriptions"
      assert subscriptions.data.is_a?(Array)
      assert subscriptions.data[0].is_a?(EwStripe::Subscription)
    end

    should "be retrievable" do
      subscription = EwStripe::Subscription.retrieve("sub_123")
      assert_requested :get,
                       "#{EwStripe.api_base}/v1/subscriptions/sub_123"
      assert subscription.is_a?(EwStripe::Subscription)
    end

    should "be creatable" do
      subscription = EwStripe::Subscription.create(
        customer: "cus_123"
      )
      assert_requested :post, "#{EwStripe.api_base}/v1/subscriptions"
      assert subscription.is_a?(EwStripe::Subscription)
    end

    should "be saveable" do
      subscription = EwStripe::Subscription.retrieve("sub_123")
      subscription.metadata["key"] = "value"
      subscription.save
      assert_requested :post,
                       "#{EwStripe.api_base}/v1/subscriptions/#{subscription.id}"
    end

    should "be updateable" do
      subscription = EwStripe::Subscription.update("sub_123", metadata: { foo: "bar" })
      assert_requested :post,
                       "#{EwStripe.api_base}/v1/subscriptions/sub_123"
      assert subscription.is_a?(EwStripe::Subscription)
    end

    context "#delete" do
      should "be deletable" do
        subscription = EwStripe::Subscription.retrieve("sub_123")
        subscription = subscription.delete
        assert_requested :delete,
                         "#{EwStripe.api_base}/v1/subscriptions/#{subscription.id}"
        assert subscription.is_a?(EwStripe::Subscription)
      end
    end

    context ".delete" do
      should "be deletable" do
        subscription = EwStripe::Subscription.delete("sub_123")
        assert_requested :delete,
                         "#{EwStripe.api_base}/v1/subscriptions/sub_123"
        assert subscription.is_a?(EwStripe::Subscription)
      end
    end

    context "#delete_discount" do
      should "be able to delete a subscriptions's discount" do
        subscription = EwStripe::Subscription.retrieve("sub_123")
        discount = subscription.delete_discount
        assert_requested :delete, "#{EwStripe.api_base}/v1/subscriptions/sub_123/discount"
        assert discount.is_a?(EwStripe::Discount)
      end
    end

    context ".delete_discount" do
      should "be able to delete a subscriptions's discount" do
        discount = EwStripe::Subscription.delete_discount("sub_123")
        assert_requested :delete, "#{EwStripe.api_base}/v1/subscriptions/sub_123/discount"
        assert discount.is_a?(EwStripe::Discount)
      end
    end
  end
end
