require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SubscriptionItemTest < Test::Unit::TestCase
    should "subscription items should be retrievable" do
      stub_request(:get, "#{Stripe.api_base}/v1/subscription_items/si_test_subscription_item").
        to_return(body: JSON.generate(make_subscription_item))
      sub_item = Stripe::SubscriptionItem.retrieve('si_test_subscription_item')

      assert sub_item.kind_of?(Stripe::SubscriptionItem)
    end

    should "subscription items should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/subscription_items").
        with(query: { subscription: "s_test_subscription", limit: "3" }).
        to_return(body: JSON.generate(make_subscription_item_array))
      sub_items = Stripe::SubscriptionItem.list(:subscription => 's_test_subscription', :limit => 3).data

      assert sub_items.kind_of? Array
      assert sub_items[0].kind_of? Stripe::SubscriptionItem
    end

    should "subscription items should be deletable" do
      stub_request(:get, "#{Stripe.api_base}/v1/subscription_items/si_test_subscription_item").
        to_return(body: JSON.generate(make_subscription_item))
      sub_item = Stripe::SubscriptionItem.retrieve('si_test_subscription_item')

      stub_request(:delete, "#{Stripe.api_base}/v1/subscription_items/#{sub_item.id}").
        to_return(body: JSON.generate(make_subscription_item))
      sub_item.delete
    end

    should "subscription items should be updateable" do
      sid = 'si_test_subscription_item'
      stub_request(:post, "#{Stripe.api_base}/v1/subscription_items/#{sid}").
        with(body: { plan: "silver", quantity: "3" }).
        to_return(body: JSON.generate(make_subscription_item))

      _ = Stripe::SubscriptionItem.update(sid, {:plan => 'silver', :quantity => 3})
    end

    should "subscription items should be saveable" do
      stub_request(:get, "#{Stripe.api_base}/v1/subscription_items/si_test_subscription_item").
        to_return(body: JSON.generate(make_subscription_item))
      sub_item = Stripe::SubscriptionItem.retrieve('si_test_subscription_item')

      stub_request(:post, "#{Stripe.api_base}/v1/subscription_items/#{sub_item.id}").
        with(body: { plan: "silver", quantity: "3" }).
        to_return(body: JSON.generate(make_subscription_item))
      sub_item.plan = 'silver'
      sub_item.quantity = 3
      sub_item.save
    end

    should "create should return a new subscription item" do
      stub_request(:post, "#{Stripe.api_base}/v1/subscription_items").
        with(body: { plan: "silver", quantity: "3" }).
        to_return(body: JSON.generate(make_subscription_item))

      _ = Stripe::SubscriptionItem.create(:plan => 'silver', :quantity => 3)
    end
  end
end
