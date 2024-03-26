# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing meter event adjustment represents the status of a meter event adjustment.
    class MeterEventAdjustment < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "billing.meter_event_adjustment"
      def self.object_name
        "billing.meter_event_adjustment"
      end

      # Creates a billing meter event adjustment
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/billing/meter_event_adjustments",
          params: params,
          opts: opts
        )
      end
    end
  end
end
