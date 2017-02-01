require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class SubscriptionTest < Test::Unit::TestCase
    FIXTURE = API_FIXTURES.fetch(:subscription)

    should "be listable" do
      subscriptions = Stripe::Subscription.list
      assert_requested :get, "#{Stripe.api_base}/v1/subscriptions"
      assert subscriptions.data.kind_of?(Array)
      assert subscriptions.data[0].kind_of?(Stripe::Subscription)
    end

    should "be retrievable" do
      subscription = Stripe::Subscription.retrieve(FIXTURE[:id])
      assert_requested :get,
        "#{Stripe.api_base}/v1/subscriptions/#{FIXTURE[:id]}"
      assert subscription.kind_of?(Stripe::Subscription)
    end

    should "be creatable" do
      subscription = Stripe::Subscription.create(
        customer: API_FIXTURES.fetch(:customer)[:id]
      )
      assert_requested :post, "#{Stripe.api_base}/v1/subscriptions"
      assert subscription.kind_of?(Stripe::Subscription)
    end

    should "be saveable" do
      subscription = Stripe::Subscription.retrieve(FIXTURE[:id])
      subscription.metadata['key'] = 'value'
      subscription.save
      assert_requested :post,
        "#{Stripe.api_base}/v1/subscriptions/#{FIXTURE[:id]}"
    end

    should "be updateable" do
      subscription = Stripe::Subscription.update(FIXTURE[:id], metadata: {foo: 'bar'})
      assert_requested :post,
        "#{Stripe.api_base}/v1/subscriptions/#{FIXTURE[:id]}"
      assert subscription.kind_of?(Stripe::Subscription)
    end

    should "be deletable" do
      subscription = Stripe::Subscription.retrieve(FIXTURE[:id])
      subscription = subscription.delete
      assert_requested :delete,
        "#{Stripe.api_base}/v1/subscriptions/#{FIXTURE[:id]}"
      assert subscription.kind_of?(Stripe::Subscription)
    end

    context "#delete_discount" do
      should "be able to delete a subscriptions's discount" do
        subscription = Stripe::Subscription.retrieve(FIXTURE[:id])
        subscription = subscription.delete_discount
        assert subscription.kind_of?(Stripe::Subscription)
      end
    end
  end
end
