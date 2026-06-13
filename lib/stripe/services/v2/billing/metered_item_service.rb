# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class MeteredItemService < StripeService
        # Create a Metered Item object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/metered_items",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all Metered Item objects in reverse chronological order of creation.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/metered_items",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a Metered Item object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/metered_items/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a Metered Item object. At least one of the fields is required.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/metered_items/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
