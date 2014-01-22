require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SubscriptionTest < Test::Unit::TestCase
    should "subscriptions should be listable" do
      @mock.expects(:get).once.returns(test_response(test_customer))

      customer = Stripe::Customer.retrieve('test_customer')

      assert customer.subscriptions.first.kind_of?(Stripe::Subscription)
    end

    should "subscriptions should be refreshable" do
      @mock.expects(:get).twice.returns(test_response(test_customer), test_response(test_subscription(:id => 'refreshed_subscription')))

      customer = Stripe::Customer.retrieve('test_customer')
      subscription = customer.subscriptions.first
      subscription.refresh

      assert_equal subscription.id, 'refreshed_subscription'
    end

    should "subscriptions should be deletable" do
      @mock.expects(:get).once.returns(test_response(test_customer))
      @mock.expects(:delete).once.returns(test_response(test_subscription({:deleted => true})))

      customer = Stripe::Customer.retrieve('test_customer')
      subscription = customer.subscriptions.first
      subscription.delete

      assert subscription.deleted
    end

    should "subscriptions should be updateable" do
      @mock.expects(:get).once.returns(test_response(test_customer))
      @mock.expects(:post).once.returns(test_response(test_subscription({:status => 'active'})))

      customer = Stripe::Customer.retrieve('test_customer')
      subscription = customer.subscriptions.first
      assert_equal subscription.status, 'trialing'

      subscription.status = 'active'
      subscription.save

      assert_equal subscription.status, 'active'
    end

    should "create should return a new subscription" do
      @mock.expects(:get).once.returns(test_response(test_customer))
      @mock.expects(:post).once.returns(test_response(test_subscription(:id => 'test_new_subscription')))

      customer = Stripe::Customer.retrieve('test_customer')
      subscription = customer.subscriptions.create(:plan => 'silver')
      assert_equal subscription.id, 'test_new_subscription'
    end
  end
end
