# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class MeterEventSessionService < StripeService
        # Creates a meter event session to send usage on the high-throughput meter event stream.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/meter_event_session",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
