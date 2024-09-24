# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class MeterEventStreamService < StripeService
        # Sends a meter event for asynchronous processing. Supports higher rate limits. Requires a meter event session for authentication.
        #
        # ** raises TemporarySessionExpiredError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/meter_event_stream",
            params: params,
            opts: opts,
            base_address: :meter_events
          )
        end
      end
    end
  end
end
