# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # Meter events represent actions that customers take in your system. You can use meter events to bill a customer based on their usage. Meter events are associated with billing meters, which define both the contents of the event's payload and how to aggregate those events.
    class MeterEvent < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "billing.meter_event"
      def self.object_name
        "billing.meter_event"
      end

      # Creates a billing meter event.
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
