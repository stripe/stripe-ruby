# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing meter event summary represents an aggregated view of a customer's billing meter events within a specified timeframe. It indicates how much
    # usage was accrued by a customer for that period.
    class MeterEventSummary < APIResource
      sig { returns(Float) }
      # Aggregated value of all the events within `start_time` (inclusive) and `end_time` (inclusive). The aggregation strategy is defined on meter via `default_aggregation`.
      attr_reader :aggregated_value
      sig { returns(Integer) }
      # End timestamp for this event summary (exclusive). Must be aligned with minute boundaries.
      attr_reader :end_time
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # The meter associated with this event summary.
      attr_reader :meter
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Integer) }
      # Start timestamp for this event summary (inclusive). Must be aligned with minute boundaries.
      attr_reader :start_time
    end
  end
end