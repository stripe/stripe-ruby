# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class ConnectionSessionService < StripeService
        # Create a new ConnectionSession.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/core/connection_sessions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a ConnectionSession.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/core/connection_sessions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
