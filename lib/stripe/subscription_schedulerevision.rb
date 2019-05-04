# frozen_string_literal: true

module Stripe
  class SubscriptionScheduleRevision < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = 'subscription_schedule_revision'.freeze
  end
end
