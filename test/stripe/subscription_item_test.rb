require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SubscriptionItemTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:subscription_item)

    should "be listable" do
      items = Stripe::SubscriptionItem.list(
        subscription: API_FIXTURES.fetch(:subscription)[:id]
      )
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_items",
        query: { subscription: API_FIXTURES.fetch(:subscription)[:id] }
      assert items.data.kind_of?(Array)
      assert items.data[0].kind_of?(Stripe::SubscriptionItem)
    end

    should "be retrievable" do
      item = Stripe::SubscriptionItem.retrieve(FIXTURE[:id])
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_items/#{FIXTURE[:id]}"
      assert item.kind_of?(Stripe::SubscriptionItem)
    end

    should "be creatable" do
      item = Stripe::SubscriptionItem.create(
        item: 'silver',
        plan: API_FIXTURES.fetch(:plan)[:id],
        quantity: 3,
        subscription: API_FIXTURES.fetch(:subscription)[:id]
      )
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_items"
      assert item.kind_of?(Stripe::SubscriptionItem)
    end

    should "be saveable" do
      item = Stripe::SubscriptionItem.retrieve(FIXTURE[:id])
      item.quantity = 4
      item.save
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_items/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      item = Stripe::SubscriptionItem.update(FIXTURE[:id], metadata: {foo: 'bar'})
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_items/#{FIXTURE[:id]}"
      assert item.kind_of?(Stripe::SubscriptionItem)
    end

    should "be deletable" do
      item = Stripe::SubscriptionItem.retrieve(FIXTURE[:id])
      item = item.delete
      assert_requested :delete, "#{Stripe.api_base}/v1/subscription_items/#{FIXTURE[:id]}"
      assert item.kind_of?(Stripe::SubscriptionItem)
    end
  end
end
