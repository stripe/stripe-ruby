# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing meter event adjustment is a resource that allows you to cancel a meter event. For example, you might create a billing meter event adjustment to cancel a meter event that was created in error or attached to the wrong customer.
    class MeterEventAdjustment < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "billing.meter_event_adjustment"
      def self.object_name
        "billing.meter_event_adjustment"
      end

      # Creates a billing meter event adjustment.
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
