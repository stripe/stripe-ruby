require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SubscriptionItemTest < Test::Unit::TestCase
    should "subscription items should be retrievable" do
      @mock.expects(:get).once.with("#{Stripe.api_base}/v1/subscription_items/si_test_subscription_item", nil, nil).
        returns(make_response(make_subscription_item))

      sub_item = Stripe::SubscriptionItem.retrieve('si_test_subscription_item')

      assert sub_item.kind_of?(Stripe::SubscriptionItem)
    end

    should "subscription items should be listable" do
      @mock.expects(:get).once.with("#{Stripe.api_base}/v1/subscription_items?subscription=s_test_subscription&limit=3", nil, nil).
        returns(make_response(make_subscription_item_array))
      sub_items = Stripe::SubscriptionItem.list(:subscription => 's_test_subscription', :limit => 3).data

      assert sub_items.kind_of? Array
      assert sub_items[0].kind_of? Stripe::SubscriptionItem
    end

    should "subscription items should be deletable" do
      @mock.expects(:get).once.returns(make_response(make_subscription_item))
      sub_item = Stripe::SubscriptionItem.retrieve('si_test_subscription_item')

      @mock.expects(:delete).once.with("#{Stripe.api_base}/v1/subscription_items/#{sub_item.id}", nil, nil).
        returns(make_response(make_subscription_item))
      sub_item.delete
    end

    should "subscription items should be updateable" do
      sid = 'si_test_subscription_item'
      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/subscription_items/#{sid}" &&
          api_key.nil? &&
          CGI.parse(params) == {'plan' => ['silver'], 'quantity' => ['3']}
      end.returns(make_response(make_subscription_item(:plan => 'silver', :quantity => 3)))

      sub_item = Stripe::SubscriptionItem.update(sid, {:plan => 'silver', :quantity => 3})

      assert_equal 'silver', sub_item.plan.id
      assert_equal 3, sub_item.quantity
    end

    should "subscription items should be saveable" do
      @mock.expects(:get).once.returns(make_response(make_subscription_item))
      sub_item = Stripe::SubscriptionItem.retrieve('si_test_subscription_item')

      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/subscription_items/#{sub_item.id}" &&
          api_key.nil? &&
          CGI.parse(params) == {'plan' => ['silver'], 'quantity' => ['3']}
      end.returns(make_response(make_subscription_item(:plan => 'silver', :quantity => 3)))

      sub_item.plan = 'silver'
      sub_item.quantity = 3
      sub_item.save

      assert_equal 'silver', sub_item.plan.id
      assert_equal 3, sub_item.quantity
    end

    should "create should return a new subscription item" do
      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/subscription_items" && api_key.nil? &&
          CGI.parse(params) == {'plan' => ['silver'], 'quantity' => ['3']}
      end.returns(make_response(make_subscription_item(:plan => 'silver', :quantity => 3)))

      sub_item = Stripe::SubscriptionItem.create(:plan => 'silver', :quantity => 3)

      assert_equal 'silver', sub_item.plan.id
      assert_equal 3, sub_item.quantity
    end
  end
end
