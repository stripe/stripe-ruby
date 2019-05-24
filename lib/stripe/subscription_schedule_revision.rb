# frozen_string_literal: true

module Stripe
  class SubscriptionScheduleRevision < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "subscription_schedule_revision".freeze

    def resource_url
      if !respond_to?(:schedule) || schedule.nil?
        raise NotImplementedError,
              "Subscription schedule revisions cannot be accessed without a " \
              "subscription schedule ID."
      end
      "#{SubscriptionSchedule.resource_url}/#{CGI.escape(schedule)}" \
      "/revisions/#{CGI.escape(id)}"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError,
            "Subscription schedule revisions cannot be retrieved without a " \
            "subscription schedule ID. Retrieve a subscribtion schedule " \
            "revision using `SubscriptionSchedule.retrieve_revision(" \
            "'schedule_id', 'revision_id')`"
    end

    def self.list(_id, _opts = {})
      raise NotImplementedError,
            "Subscription schedule revisions cannot be listed without a " \
            "subscription schedule ID. List subscribtion schedule revisions " \
            "using `SubscriptionSchedule.list_revisions('schedule_id')`"
    end
  end
end
