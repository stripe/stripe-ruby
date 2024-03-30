# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing meter event represents a customer's usage of a product. Meter events are used to bill a customer based on their usage.
    # Meter events are associated with billing meters, which define the shape of the event's payload and how those events are aggregated for billing.
    class MeterEvent < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "billing.meter_event"
      def self.object_name
        "billing.meter_event"
      end

      # Creates a billing meter event
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/billing/meter_events",
          params: params,
          opts: opts
        )
      end
    end
  end
end
