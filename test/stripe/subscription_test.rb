require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SubscriptionTest < Test::Unit::TestCase
    should "subscriptions should be retrievable by customer" do
      @mock.expects(:get).once.returns(make_response(make_customer))
      customer = Stripe::Customer.retrieve('c_test_customer')

      @mock.expects(:get).once.with("#{Stripe.api_base}/v1/customers/c_test_customer/subscriptions/s_test_subscription", nil, nil).returns(make_response(make_subscription(:id => 's_test_subscription')))
      _ = customer.subscriptions.retrieve('s_test_subscription')
    end

    should "subscriptions should be listable by customer" do
      @mock.expects(:get).once.returns(make_response(make_customer))
      customer = Stripe::Customer.retrieve('c_test_customer')

      @mock.expects(:get).once.with("#{Stripe.api_base}/v1/customers/c_test_customer/subscriptions", nil, nil).returns(make_response(make_customer_subscription_array('c_test_customer')))
      subs = customer.subscriptions.all()

      assert subs.kind_of?(Stripe::ListObject)
      assert subs.data.kind_of?(Array)
      assert subs.data[0].kind_of? Stripe::Subscription
    end

    should "subscriptions should be creatable by customer" do
      @mock.expects(:get).once.returns(make_response(make_customer))
      customer = Stripe::Customer.retrieve('c_test_customer')

      @mock.expects(:post).once.with("#{Stripe.api_base}/v1/customers/c_test_customer/subscriptions", nil, 'plan=silver').returns(make_response(make_subscription(:id => 'test_new_subscription')))
      subscription = customer.subscriptions.create(:plan => 'silver')

      assert_equal 'test_new_subscription', subscription.id
    end

    should "subscriptions should be retrievable" do
      @mock.expects(:get).once.with("#{Stripe.api_base}/v1/subscriptions/s_test_subscription", nil, nil).returns(make_response(make_subscription))
      sub = Stripe::Subscription.retrieve('s_test_subscription')

      assert sub.kind_of?(Stripe::Subscription)
    end

    should "subscriptions should be listable" do
      @mock.expects(:get).once.returns(make_response(make_subscription_array))
      subs = Stripe::Subscription.list.data

      assert subs.kind_of? Array
      assert subs[0].kind_of? Stripe::Subscription
    end

    should "subscriptions should be listable with filters" do
      @mock.expects(:get).once.with("#{Stripe.api_base}/v1/subscriptions?customer=c_test_customer&limit=3&plan=gold", nil, nil).returns(make_response(make_subscription_array))
      subs = Stripe::Subscription.all(:customer => 'c_test_customer', :limit => 3, :plan => 'gold')

      assert subs.kind_of?(Stripe::ListObject)
      assert subs.data.kind_of?(Array)
      assert subs.data[0].kind_of? Stripe::Subscription
    end

    should "subscriptions should be refreshable" do
      @mock.expects(:get).twice.returns(make_response(make_subscription(:id => 'refreshed_subscription')))

      sub = Stripe::Subscription.retrieve('s_test_subscription')
      sub.refresh

      assert_equal 'refreshed_subscription', sub.id
    end

    should "subscriptions should be deletable" do
      @mock.expects(:get).once.returns(make_response(make_subscription))
      sub = Stripe::Subscription.retrieve('s_test_subscription')

      @mock.expects(:delete).once.with("#{Stripe.api_base}/v1/subscriptions/#{sub.id}?at_period_end=true", nil, nil).returns(make_response(make_subscription))
      sub.delete :at_period_end => true

      @mock.expects(:delete).once.with("#{Stripe.api_base}/v1/subscriptions/#{sub.id}", nil, nil).returns(make_response(make_subscription))
      sub.delete
    end

    should "subscriptions should be updateable" do
      sid = 's_test_subscription'
      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/subscriptions/#{sid}" && api_key.nil? && CGI.parse(params) == {'status' => ['active']}
      end.returns(make_response(make_subscription(:status => 'active')))

      sub = Stripe::Subscription.update(sid, :status => 'active')

      assert_equal 'active', sub.status
    end

    should "subscription items should be updateable" do
      sid = 's_test_subscription'
      items = {:data => [{:plan => {:id =>'gold'}, :quantity => 1}, {:plan => {:id =>'silver'}, :quantity => 2}]}

      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/subscriptions/#{sid}" &&
          api_key.nil? &&
          CGI.parse(params) == {
            'items[0][plan]' => ['gold'],
            'items[0][quantity]' => ['1'],
            'items[1][plan]' => ['silver'],
            'items[1][quantity]' => ['2'],
          }
      end.returns(make_response(make_subscription(:items => items)))

      sub = Stripe::Subscription.update(sid, :items => [{:plan => 'gold', :quantity =>1}, {:plan => 'silver', :quantity =>2}])

      assert_equal 'gold', sub.items.data[0].plan.id
      assert_equal 1, sub.items.data[0].quantity
      assert_equal 'silver', sub.items.data[1].plan.id
      assert_equal 2, sub.items.data[1].quantity
    end

    should "subscription items should be updateable with hash" do
      sid = 's_test_subscription'
      items = {:data => [{:plan => {:id =>'gold'}, :quantity => 1}, {:plan => {:id =>'silver'}, :quantity => 2}]}

      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/subscriptions/#{sid}" &&
          api_key.nil? &&
          CGI.parse(params) == {
            'items[0][plan]' => ['gold'],
            'items[0][quantity]' => ['1'],
            'items[1][plan]' => ['silver'],
            'items[1][quantity]' => ['2'],
          }
      end.returns(make_response(make_subscription(:items => items)))

      sub = Stripe::Subscription.update(sid, :items => {'0' => {:plan => 'gold', :quantity =>1}, '1' => {:plan => 'silver', :quantity =>2}})

      assert_equal 'gold', sub.items.data[0].plan.id
      assert_equal 1, sub.items.data[0].quantity
      assert_equal 'silver', sub.items.data[1].plan.id
      assert_equal 2, sub.items.data[1].quantity
    end

    should "subscriptions should be saveable" do
      @mock.expects(:get).once.returns(make_response(make_subscription))
      sub = Stripe::Subscription.retrieve('s_test_subscription')
      assert_equal 'trialing', sub.status

      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/subscriptions/#{sub.id}" && api_key.nil? && CGI.parse(params) == {'status' => ['active']}
      end.returns(make_response(make_subscription(:status => 'active')))

      sub.status = 'active'
      sub.save

      assert_equal 'active', sub.status
    end

    should "create should return a new subscription" do
      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/subscriptions" && api_key.nil? && CGI.parse(params) == {'customer' => ['c_test_customer'], 'plan' => ['gold']}
      end.returns(make_response(make_subscription(:plan => 'gold', :id => 'test_new_subscription')))

      sub = Stripe::Subscription.create(:plan => 'gold', :customer => 'c_test_customer')

      assert_equal 'test_new_subscription', sub.id
      assert_equal 'gold', sub.plan.identifier
    end

    should "create with items should return a new subscription" do
      items = {:data => [{:plan => {:id =>'gold'}, :quantity => 1}, {:plan => {:id =>'silver'}, :quantity => 2}]}

      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/subscriptions" &&
          api_key.nil? &&
          CGI.parse(params) == {
            'customer' => ['c_test_customer'],
            'items[0][plan]' => ['gold'],
            'items[0][quantity]' => ['1'],
            'items[1][plan]' => ['silver'],
            'items[1][quantity]' => ['2'],
          }
      end.returns(make_response(make_subscription(:items => items, :id => 'test_new_subscription')))

      sub = Stripe::Subscription.create(:customer => 'c_test_customer', :items => [{:plan => 'gold', :quantity =>1}, {:plan => 'silver', :quantity =>2}])

      assert_equal 'test_new_subscription', sub.id
      assert_equal 'gold', sub.items.data[0].plan.id
      assert_equal 1, sub.items.data[0].quantity
      assert_equal 'silver', sub.items.data[1].plan.id
      assert_equal 2, sub.items.data[1].quantity
    end

    should "be able to delete a subscriptions's discount" do
      @mock.expects(:post).once.returns(make_response(make_subscription))
      sub = Stripe::Subscription.create(:plan => 'gold', :customer => 'c_test_customer', coupon: 'forever')

      url = "#{Stripe.api_base}/v1/subscriptions/#{sub.id}/discount"
      @mock.expects(:delete).once.with(url, nil, nil).returns(make_response(make_delete_discount_response))
      sub.delete_discount
      assert_equal nil, sub.discount
    end
  end
end
