# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class CustomPricingUnitService < StripeService
        # Create a Custom Pricing Unit object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/custom_pricing_units",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all Custom Pricing Unit objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/custom_pricing_units",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a Custom Pricing Unit object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/custom_pricing_units/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a Custom Pricing Unit object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/custom_pricing_units/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
