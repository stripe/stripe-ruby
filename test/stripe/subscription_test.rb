require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SubscriptionTest < Test::Unit::TestCase
    should "subscriptions should be retrievable by customer" do
      @mock.expects(:get).once.returns(make_response(make_customer))

      customer = Stripe::Customer.retrieve('test_customer')

      assert customer.subscriptions.first.kind_of?(Stripe::Subscription)
    end

    should "subscriptions should be listable by customer" do
      @mock.expects(:get).once.returns(make_response(make_customer))
      customer = Stripe::Customer.retrieve('test_customer')

      @mock.expects(:get).once.with("#{Stripe.api_base}/v1/subscriptions", nil, nil).returns(make_response(make_subscription_array('test_customer')))
      subs = customer.subscriptions.all()

      assert subs.kind_of? (Stripe::ListObject)
      assert subs.data.kind_of?(Array)
      assert subs.data[0].kind_of? Stripe::Subscription
    end

    should "subscriptions should be retrievable" do
      @mock.expects(:get).once.with("#{Stripe.api_base}/v1/subscriptions/test_sub", nil, nil).returns(make_response(make_subscription))

      sub = Stripe::Subscription.retrieve('test_sub')

      assert sub.kind_of?(Stripe::Subscription)
    end

    should "subscriptions should be listable" do
      @mock.expects(:get).once.returns(make_response(make_subscription_array(make_customer[:id])))
      subs = Stripe::Subscription.list.data

      assert subs.kind_of? Array
      assert subs[0].kind_of? Stripe::Subscription
    end

    should "subscriptions should be listable with filters" do
      @mock.expects(:get).once.with("#{Stripe.api_base}/v1/subscriptions?customer=test_customer&limit=3&plan=gold", nil, nil).returns(make_response(make_subscription_array(make_customer[:id])))
      subs = Stripe::Subscription.all(:customer => 'test_customer', :limit => 3, :plan => 'gold')

      assert subs.kind_of? (Stripe::ListObject)
      assert subs.data.kind_of?(Array)
      assert subs.data[0].kind_of? Stripe::Subscription
    end

    should "subscriptions should be refreshable" do
      @mock.expects(:get).twice.returns(make_response(make_subscription(:id => 'refreshed_subscription')))

      sub = Stripe::Subscription.retrieve('test_sub')
      sub.refresh

      assert_equal 'refreshed_subscription', sub.id
    end

    should "subscriptions should be deletable" do
      @mock.expects(:get).once.returns(make_response(make_subscription))
      sub = Stripe::Subscription.retrieve('test_sub')

      @mock.expects(:delete).once.with("#{Stripe.api_base}/v1/subscriptions/#{sub.id}?at_period_end=true", nil, nil).returns(make_response(make_subscription))
      sub.delete :at_period_end => true

      @mock.expects(:delete).once.with("#{Stripe.api_base}/v1/subscriptions/#{sub.id}", nil, nil).returns(make_response(make_subscription))
      sub.delete
    end

    should "subscriptions should be updateable" do
      @mock.expects(:get).once.returns(make_response(make_subscription))
      sub = Stripe::Subscription.retrieve('s_test_subscription')
      assert_equal 'trialing', sub.status

      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/subscriptions/s_test_subscription" && api_key.nil? && CGI.parse(params) == {'status' => ['active']}
      end.returns(make_response(make_subscription(:status => 'active')))

      sub.status = 'active'
      sub.save

      assert_equal 'active', sub.status
    end

    should "create should return a new subscription" do
      @mock.expects(:post).once.with do |url, api_key, params|
        url == "#{Stripe.api_base}/v1/subscriptions" && api_key.nil? && CGI.parse(params) == {'customer' => ['test_customer'], 'plan' => ['gold']}
      end.returns(make_response(make_subscription(:plan => 'gold', :id => 'test_new_subscription')))

      sub = Stripe::Subscription.create(:plan => 'gold', :customer => 'test_customer')

      assert_equal 'test_new_subscription', sub.id
      assert_equal 'gold', sub.plan.identifier
    end

    should "be able to delete a subscriptions's discount" do
      @mock.expects(:post).once.returns(make_response(make_subscription))
      sub = Stripe::Subscription.create(:plan => 'gold', :customer => 'test_customer', coupon: 'forever')

      url = "#{Stripe.api_base}/v1/subscriptions/s_test_subscription/discount"
      @mock.expects(:delete).once.with(url, nil, nil).returns(make_response(make_delete_discount_response))
      sub.delete_discount
      assert_equal nil, sub.discount
    end
  end
end
