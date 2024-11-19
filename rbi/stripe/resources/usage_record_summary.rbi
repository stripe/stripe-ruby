# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A usage record summary represents an aggregated view of how much usage was accrued for a subscription item within a subscription billing period.
  class UsageRecordSummary < StripeObject
    class Period < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :end
      sig { returns(T.nilable(Integer)) }
      attr_reader :start
    end
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(String)) }
    # The invoice in which this usage period has been billed for.
    attr_reader :invoice
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Period) }
    # Attribute for field period
    attr_reader :period
    sig { returns(String) }
    # The ID of the subscription item this summary is describing.
    attr_reader :subscription_item
    sig { returns(Integer) }
    # The total usage within this usage period.
    attr_reader :total_usage
  end
end