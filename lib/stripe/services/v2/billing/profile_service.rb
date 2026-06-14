# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ProfileService < StripeService
        # Create a BillingProfile object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/profiles",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List Billing Profiles.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/profiles",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a BillingProfile object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/profiles/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a BillingProfile object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/profiles/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
