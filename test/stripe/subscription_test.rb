require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SubscriptionTest < Test::Unit::TestCase
    should "subscriptions should be retrievable by customer" do
      stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer").
        to_return(body: make_response(make_customer))
      customer = Stripe::Customer.retrieve('c_test_customer')

      stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer/subscriptions/s_test_subscription").
        to_return(body: make_response(make_subscription))
      _ = customer.subscriptions.retrieve('s_test_subscription')
    end

    should "subscriptions should be listable by customer" do
      stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer").
        to_return(body: make_response(make_customer))
      customer = Stripe::Customer.retrieve('c_test_customer')

      stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer/subscriptions").
        to_return(body: make_response(make_customer_subscription_array('c_test_customer')))
      subs = customer.subscriptions.list

      assert subs.kind_of?(Stripe::ListObject)
      assert subs.data.kind_of?(Array)
      assert subs.data[0].kind_of? Stripe::Subscription
    end

    should "subscriptions should be creatable by customer" do
      stub_request(:get, "#{Stripe.api_base}/v1/customers/c_test_customer").
        to_return(body: make_response(make_customer))
      customer = Stripe::Customer.retrieve('c_test_customer')

      stub_request(:post, "#{Stripe.api_base}/v1/customers/c_test_customer/subscriptions").
        with(body: { plan: "silver" }).
        to_return(body: make_response(make_subscription))
      _ = customer.subscriptions.create(:plan => 'silver')
    end

    should "subscriptions should be retrievable" do
      stub_request(:get, "#{Stripe.api_base}/v1/subscriptions/s_test_subscription").
        to_return(body: make_response(make_subscription))
      sub = Stripe::Subscription.retrieve('s_test_subscription')

      assert sub.kind_of?(Stripe::Subscription)
    end

    should "subscriptions should be listable" do
      stub_request(:get, "#{Stripe.api_base}/v1/subscriptions").
        to_return(body: make_response(make_subscription_array))
      subs = Stripe::Subscription.list.data

      assert subs.kind_of? Array
      assert subs[0].kind_of? Stripe::Subscription
    end

    should "subscriptions should be listable with filters" do
      stub_request(:get, "#{Stripe.api_base}/v1/subscriptions").
        with(query: { customer: "c_test_customer", limit: "3", plan: "gold" }).
        to_return(body: make_response(make_subscription_array))
      subs = Stripe::Subscription.all(:customer => 'c_test_customer', :limit => 3, :plan => 'gold')

      assert subs.kind_of?(Stripe::ListObject)
      assert subs.data.kind_of?(Array)
      assert subs.data[0].kind_of? Stripe::Subscription
    end

    should "subscriptions should be refreshable" do
      stub_request(:get, "#{Stripe.api_base}/v1/subscriptions/s_test_subscription").
        to_return(body: make_response(make_subscription))
      sub = Stripe::Subscription.retrieve('s_test_subscription')
      sub.refresh
    end

    should "subscriptions should be deletable" do
      stub_request(:get, "#{Stripe.api_base}/v1/subscriptions/s_test_subscription").
        to_return(body: make_response(make_subscription))
      sub = Stripe::Subscription.retrieve('s_test_subscription')

      stub_request(:delete, "#{Stripe.api_base}/v1/subscriptions/#{sub.id}").
        with(query: { at_period_end: "true" }).
        to_return(body: make_response(make_subscription))
      sub.delete :at_period_end => true

      stub_request(:delete, "#{Stripe.api_base}/v1/subscriptions/#{sub.id}").
        to_return(body: make_response(make_subscription))
      sub.delete
    end

    should "subscriptions should be updateable" do
      sid = 's_test_subscription'
      stub_request(:post, "#{Stripe.api_base}/v1/subscriptions/#{sid}").
        with(body: { status: "active" }).
        to_return(body: make_response(make_subscription))
      _ = Stripe::Subscription.update(sid, :status => 'active')
    end

    should "subscription items should be updateable" do
      sid = 's_test_subscription'
      items = {:data => [{:plan => {:id =>'gold'}, :quantity => 1}, {:plan => {:id =>'silver'}, :quantity => 2}]}

      stub_request(:post, "#{Stripe.api_base}/v1/subscriptions/#{sid}").
        with(body: { items: [{plan: "gold", quantity: "1"}, {plan: "silver", quantity: "2" }] }).
        to_return(body: make_response(make_subscription))
      _ = Stripe::Subscription.update(sid, :items => [{:plan => 'gold', :quantity =>1}, {:plan => 'silver', :quantity =>2}])
    end

    should "subscriptions should be saveable" do
      stub_request(:get, "#{Stripe.api_base}/v1/subscriptions/s_test_subscription").
        to_return(body: make_response(make_subscription))
      sub = Stripe::Subscription.retrieve('s_test_subscription')

      stub_request(:post, "#{Stripe.api_base}/v1/subscriptions/#{sub.id}").
        with(body: { status: "active" }).
        to_return(body: make_response(make_subscription))
      sub.status = 'active'
      sub.save
    end

    should "create should return a new subscription" do
      stub_request(:post, "#{Stripe.api_base}/v1/subscriptions").
        with(body: { customer: "c_test_customer", plan: "gold" }).
        to_return(body: make_response(make_subscription))
      _ = Stripe::Subscription.create(:plan => 'gold', :customer => 'c_test_customer')
    end

    should "be able to delete a subscriptions's discount" do
      stub_request(:post, "#{Stripe.api_base}/v1/subscriptions").
        to_return(body: make_response(make_subscription))
      sub = Stripe::Subscription.create(:plan => 'gold', :customer => 'c_test_customer', coupon: 'forever')

      stub_request(:delete, "#{Stripe.api_base}/v1/subscriptions/#{sub.id}/discount").
        to_return(body: make_response(make_delete_discount_response))
      sub.delete_discount
      assert_equal nil, sub.discount
    end
  end
end
