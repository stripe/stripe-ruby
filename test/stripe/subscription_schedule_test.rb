# frozen_string_literal: true

require ::File.expand_path("../test_helper", __dir__)

module Stripe
  class SubscriptionScheduleTest < Test::Unit::TestCase
    should "be listable" do
      subscriptions = StripeClient.new.subscription_schedule.list
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_schedules"
      assert subscriptions.data.is_a?(Array)
      assert subscriptions.data[0].is_a?(Stripe::SubscriptionSchedule)
    end

    should "be retrievable" do
      schedule = StripeClient.new.subscription_schedule.retrieve("sub_sched_123")
      assert_requested :get,
                       "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_123"
      assert schedule.is_a?(Stripe::SubscriptionSchedule)
    end

    should "be creatable" do
      schedule = StripeClient.new.subscription_schedule.create(
        customer: "cus_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules"
      assert schedule.is_a?(Stripe::SubscriptionSchedule)
    end

    should "be saveable" do
      schedule = StripeClient.new.subscription_schedule.retrieve("sub_sched_123")
      schedule.metadata["key"] = "value"
      schedule.save
      assert_requested :post,
                       "#{Stripe.api_base}/v1/subscription_schedules/#{schedule.id}"
    end

    should "be updateable" do
      schedule = StripeClient.new.subscription_schedule.update("sub_sched_123", metadata: { foo: "bar" })
      assert_requested :post,
                       "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_123"
      assert schedule.is_a?(Stripe::SubscriptionSchedule)
    end

    context "#cancel" do
      should "cancel a subscription schedule" do
        schedule = StripeClient.new.subscription_schedule.retrieve("sub_sched_123")
        schedule = schedule.cancel
        assert_requested :post,
                         "#{Stripe.api_base}/v1/subscription_schedules/#{schedule.id}/cancel"
        assert schedule.is_a?(Stripe::SubscriptionSchedule)
      end
    end

    context ".cancel" do
      should "cancel a subscription schedule" do
        schedule = StripeClient.new.subscription_schedule.cancel("sub_sched_123")
        assert_requested :post,
                         "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_123/cancel"
        assert schedule.is_a?(Stripe::SubscriptionSchedule)
      end
    end

    context "#release" do
      should "release a subscription schedule" do
        schedule = StripeClient.new.subscription_schedule.retrieve("sub_sched_123")
        schedule = schedule.release
        assert_requested :post,
                         "#{Stripe.api_base}/v1/subscription_schedules/#{schedule.id}/release"
        assert schedule.is_a?(Stripe::SubscriptionSchedule)
      end
    end

    context ".release" do
      should "release a subscription schedule" do
        schedule = StripeClient.new.subscription_schedule.release("sub_sched_123")
        assert_requested :post,
                         "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_123/release"
        assert schedule.is_a?(Stripe::SubscriptionSchedule)
      end
    end
  end
end
