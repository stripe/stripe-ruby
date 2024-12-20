# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A usage record summary represents an aggregated view of how much usage was accrued for a subscription item within a subscription billing period.
  class UsageRecordSummary < StripeObject
    OBJECT_NAME = "usage_record_summary"
    def self.object_name
      "usage_record_summary"
    end

    class Period < Stripe::StripeObject
      # The end date of this usage period. All usage up to and including this point in time is included.
      attr_reader :end

      # The start date of this usage period. All usage after this point in time is included.
      attr_reader :start
    end
    # Unique identifier for the object.
    attr_reader :id

    # The invoice in which this usage period has been billed for.
    attr_reader :invoice

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode

    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # Attribute for field period
    attr_reader :period

    # The ID of the subscription item this summary is describing.
    attr_reader :subscription_item

    # The total usage within this usage period.
    attr_reader :total_usage
  end
end
