# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class SubscriptionScheduleRevisionTest < Test::Unit::TestCase
    context "#resource_url" do
      should "return a resource URL" do
        revision = Stripe::SubscriptionScheduleRevision.construct_from(
          id: "sub_sched_rev_123",
          schedule: "sub_sched_123"
        )
        assert_equal "/v1/subscription_schedules/sub_sched_123/revisions/sub_sched_rev_123",
                     revision.resource_url
      end

      should "raise without a subscription schedule" do
        revision = Stripe::SubscriptionScheduleRevision.construct_from(id: "sub_sched_rev_123")
        assert_raises NotImplementedError do
          revision.resource_url
        end
      end
    end

    should "raise on #retrieve" do
      assert_raises NotImplementedError do
        Stripe::SubscriptionScheduleRevision.retrieve("sub_sched_rev_123")
      end
    end

    should "raise on #list" do
      assert_raises NotImplementedError do
        Stripe::SubscriptionScheduleRevision.list("sub_sched_rev_123", {})
      end
    end
  end
end
