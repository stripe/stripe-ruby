# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A usage record summary represents an aggregated view of how much usage was accrued for a subscription item within a subscription billing period.
  class UsageRecordSummary < StripeObject
    class Period < Stripe::StripeObject
      # The end date of this usage period. All usage up to and including this point in time is included.
      sig { returns(T.nilable(Integer)) }
      attr_reader :end
      # The start date of this usage period. All usage after this point in time is included.
      sig { returns(T.nilable(Integer)) }
      attr_reader :start
    end
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # The invoice in which this usage period has been billed for.
    sig { returns(T.nilable(String)) }
    attr_reader :invoice
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Attribute for field period
    sig { returns(Period) }
    attr_reader :period
    # The ID of the subscription item this summary is describing.
    sig { returns(String) }
    attr_reader :subscription_item
    # The total usage within this usage period.
    sig { returns(Integer) }
    attr_reader :total_usage
  end
end