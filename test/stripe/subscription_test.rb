# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class SubscriptionTest < Test::Unit::TestCase
    should "be listable" do
      subscriptions = StripeClient.new.subscriptions.list
      assert_requested :get, "#{Stripe.api_base}/v1/subscriptions"
      assert subscriptions.data.is_a?(Array)
      assert subscriptions.data[0].is_a?(Stripe::Subscription)
    end

    should "be retrievable" do
      subscription = StripeClient.new.subscriptions.retrieve("sub_123")
      assert_requested :get,
                       "#{Stripe.api_base}/v1/subscriptions/sub_123"
      assert subscription.is_a?(Stripe::Subscription)
    end

    should "be creatable" do
      subscription = StripeClient.new.subscriptions.create(
        customer: "cus_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/subscriptions"
      assert subscription.is_a?(Stripe::Subscription)
    end

    should "be saveable" do
      subscription = StripeClient.new.subscriptions.retrieve("sub_123")
      subscription.metadata["key"] = "value"
      subscription.save
      assert_requested :post,
                       "#{Stripe.api_base}/v1/subscriptions/#{subscription.id}"
    end

    should "be updateable" do
      subscription = StripeClient.new.subscriptions.update("sub_123", metadata: { foo: "bar" })
      assert_requested :post,
                       "#{Stripe.api_base}/v1/subscriptions/sub_123"
      assert subscription.is_a?(Stripe::Subscription)
    end

    context "#delete" do
      should "be deletable" do
        subscription = StripeClient.new.subscriptions.retrieve("sub_123")
        subscription = subscription.delete
        assert_requested :delete,
                         "#{Stripe.api_base}/v1/subscriptions/#{subscription.id}"
        assert subscription.is_a?(Stripe::Subscription)
      end
    end

    context ".delete" do
      should "be deletable" do
        subscription = StripeClient.new.subscriptions.delete("sub_123")
        assert_requested :delete,
                         "#{Stripe.api_base}/v1/subscriptions/sub_123"
        assert subscription.is_a?(Stripe::Subscription)
      end
    end

    context "#delete_discount" do
      should "be able to delete a subscriptions's discount" do
        subscription = StripeClient.new.subscriptions.retrieve("sub_123")
        discount = subscription.delete_discount
        assert_requested :delete, "#{Stripe.api_base}/v1/subscriptions/sub_123/discount"
        assert discount.is_a?(Stripe::Discount)
      end
    end

    context ".delete_discount" do
      should "be able to delete a subscriptions's discount" do
        discount = StripeClient.new.subscriptions.delete_discount("sub_123")
        assert_requested :delete, "#{Stripe.api_base}/v1/subscriptions/sub_123/discount"
        assert discount.is_a?(Stripe::Discount)
      end
    end
  end
end
