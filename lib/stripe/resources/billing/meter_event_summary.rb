# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing meter event summary represents an aggregated view of a customer's billing meter events within a specified timeframe. It indicates how much
    # usage was accrued by a customer for that period.
    #
    # Note: Meters events are aggregated asynchronously so the meter event summaries provide an eventually consistent view of the reported usage.
    class MeterEventSummary < APIResource
      OBJECT_NAME = "billing.meter_event_summary"
      def self.object_name
        "billing.meter_event_summary"
      end
    end
  end
end
