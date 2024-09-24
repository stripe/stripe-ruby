# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class MeterEventService < StripeService
        # Creates a meter event. Validates the event synchronously.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/meter_events",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
