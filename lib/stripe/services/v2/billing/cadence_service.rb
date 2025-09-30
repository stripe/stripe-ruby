# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class CadenceService < StripeService
        # Cancel the Billing Cadence.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/cadences/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a Billing Cadence object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/cadences",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List Billing Cadences.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/cadences",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a Billing Cadence object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/cadences/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a Billing Cadence object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/cadences/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
