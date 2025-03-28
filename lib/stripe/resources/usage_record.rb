# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Usage records allow you to report customer usage and metrics to Stripe for
  # metered billing of subscription prices.
  #
  # Related guide: [Metered billing](https://stripe.com/docs/billing/subscriptions/metered-billing)
  #
  # This is our legacy usage-based billing API. See the [updated usage-based billing docs](https://docs.stripe.com/billing/subscriptions/usage-based).
  class UsageRecord < APIResource
    OBJECT_NAME = "usage_record"
    def self.object_name
      "usage_record"
    end

    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The usage quantity for the specified date.
    attr_reader :quantity
    # The ID of the subscription item this usage record contains data for.
    attr_reader :subscription_item
    # The timestamp when this usage occurred.
    attr_reader :timestamp
  end
end
