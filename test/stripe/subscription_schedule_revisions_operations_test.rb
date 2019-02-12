# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Stripe
  class SubscriptionScheduleRevisionsOperationsTest < Test::Unit::TestCase
    setup do
      @schedule_id = "sub_sched_123"
      @revision_id = "sub_sched_rev_123"
    end

    context "#retrieve_revision" do
      should "retrieve a subscription schedule revision" do
        revision = Stripe::SubscriptionSchedule.retrieve_revision(
          @schedule_id,
          @revision_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/subscription_schedules/#{@schedule_id}/revisions/#{@revision_id}"
        assert revision.is_a?(Stripe::SubscriptionScheduleRevision)
      end
    end

    context "#list_revisions" do
      should "list a subscription schedule's revisions" do
        revisions = Stripe::SubscriptionSchedule.list_revisions(
          @schedule_id
        )
        assert_requested :get, "#{Stripe.api_base}/v1/subscription_schedules/#{@schedule_id}/revisions"
        assert revisions.is_a?(Stripe::ListObject)
        assert revisions.data.is_a?(Array)
        assert revisions.data[0].is_a?(Stripe::SubscriptionScheduleRevision)
      end
    end
  end
end
