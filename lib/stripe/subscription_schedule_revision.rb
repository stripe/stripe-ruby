# frozen_string_literal: true

module Stripe
  class SubscriptionScheduleRevision < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "subscription_schedule_revision".freeze

    def resource_url
      if !respond_to?(:schedule) || schedule.nil?
        raise NotImplementedError,
              "Subscription Schedule Revisions cannot be accessed without a Subscription Schedule ID."
      end
      "#{SubscriptionSchedule.resource_url}/#{CGI.escape(schedule)}/revisions/#{CGI.escape(id)}"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError, "Subscription Schedule Revisions cannot be retrieved without a Subscription Schedule ID. Retrieve it using schedule.revisions.retrieve('revision_id')"
    end

    def self.list(_id, _opts = {})
      raise NotImplementedError, "Subscription Schedule Revisions cannot be listed without a Subscription Schedule ID. List those using schedule.revisions"
    end
  end
end
