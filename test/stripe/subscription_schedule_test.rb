# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class SubscriptionScheduleTest < Test::Unit::TestCase
    should "be listable" do
      subscriptions = Stripe::SubscriptionSchedule.list
      assert_requested :get, "#{Stripe.api_base}/v1/subscription_schedules"
      assert subscriptions.data.is_a?(Array)
      assert subscriptions.data[0].is_a?(Stripe::SubscriptionSchedule)
    end

    should "be retrievable" do
      schedule = Stripe::SubscriptionSchedule.retrieve("sub_sched_123")
      assert_requested :get,
                       "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_123"
      assert schedule.is_a?(Stripe::SubscriptionSchedule)
    end

    should "be creatable" do
      schedule = Stripe::SubscriptionSchedule.create(
        customer: "cus_123"
      )
      assert_requested :post, "#{Stripe.api_base}/v1/subscription_schedules"
      assert schedule.is_a?(Stripe::SubscriptionSchedule)
    end

    should "be saveable" do
      schedule = Stripe::SubscriptionSchedule.retrieve("sub_sched_123")
      schedule.metadata["key"] = "value"
      schedule.save
      assert_requested :post,
                       "#{Stripe.api_base}/v1/subscription_schedules/#{schedule.id}"
    end

    should "be updateable" do
      schedule = Stripe::SubscriptionSchedule.update("sub_sched_123", metadata: { foo: "bar" })
      assert_requested :post,
                       "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_123"
      assert schedule.is_a?(Stripe::SubscriptionSchedule)
    end

    context "#cancel" do
      should "cancel a subscription schedule" do
        schedule = Stripe::SubscriptionSchedule.retrieve("sub_sched_123")
        schedule = schedule.cancel
        assert_requested :post,
                         "#{Stripe.api_base}/v1/subscription_schedules/#{schedule.id}/cancel"
        assert schedule.is_a?(Stripe::SubscriptionSchedule)
      end
    end

    context ".cancel" do
      should "cancel a subscription schedule" do
        schedule = Stripe::SubscriptionSchedule.cancel("sub_sched_123")
        assert_requested :post,
                         "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_123/cancel"
        assert schedule.is_a?(Stripe::SubscriptionSchedule)
      end
    end

    context "#release" do
      should "release a subscription schedule" do
        schedule = Stripe::SubscriptionSchedule.retrieve("sub_sched_123")
        schedule = schedule.release
        assert_requested :post,
                         "#{Stripe.api_base}/v1/subscription_schedules/#{schedule.id}/release"
        assert schedule.is_a?(Stripe::SubscriptionSchedule)
      end
    end

    context ".release" do
      should "release a subscription schedule" do
        schedule = Stripe::SubscriptionSchedule.release("sub_sched_123")
        assert_requested :post,
                         "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_123/release"
        assert schedule.is_a?(Stripe::SubscriptionSchedule)
      end
    end

    context "#revisions" do
      should "retrieve the subscription schedule's revisions" do
        schedule = Stripe::SubscriptionSchedule.retrieve("sub_sched_123")
        revisions = schedule.revisions
        assert_requested :get,
                         "#{Stripe.api_base}/v1/subscription_schedules/sub_sched_123/revisions"
        assert revisions.data.is_a?(Array)
        assert revisions.data[0].is_a?(Stripe::SubscriptionScheduleRevision)
      end
    end
  end
end
