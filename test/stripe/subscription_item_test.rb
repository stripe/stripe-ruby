require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SubscriptionItemTest < Test::Unit::TestCase
    should "be listable" do
      items = Stripe::SubscriptionItem.list(
        subscription: "sub_123",
      )
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_items",
        query: { subscription: "sub_123" }
      assert items.data.kind_of?(Array)
      assert items.data[0].kind_of?(Stripe::SubscriptionItem)
    end

    should "be retrievable" do
      item = Stripe::SubscriptionItem.retrieve("si_123")
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_items/si_123"
      assert item.kind_of?(Stripe::SubscriptionItem)
    end

    should "be creatable" do
      item = Stripe::SubscriptionItem.create(
        item: 'silver',
        plan: "sapphire-elite",
        quantity: 3,
        subscription: "sub_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_items"
      assert item.kind_of?(Stripe::SubscriptionItem)
    end

    should "be saveable" do
      item = Stripe::SubscriptionItem.retrieve("si_123")
      item.quantity = 4
      item.save
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_items/#{item.id}"
    end

    should "be updateable" do
      item = Stripe::SubscriptionItem.update("si_123", metadata: {foo: 'bar'})
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_items/si_123"
      assert item.kind_of?(Stripe::SubscriptionItem)
    end

    should "be deletable" do
      item = Stripe::SubscriptionItem.retrieve("si_123")
      item = item.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/subscription_items/#{item.id}"
      assert item.kind_of?(Stripe::SubscriptionItem)
    end
  end
end
