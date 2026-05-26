# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventService < StripeService
        # List events, going back up to 30 days.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/core/events",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an event if it was created in the last 30 days. Supply the unique
        # identifier of the event, which might have been delivered to your event destination.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/core/events/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
