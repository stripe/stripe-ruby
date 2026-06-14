# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Network
      class BusinessProfileService < StripeService
        # Retrieve the Stripe business profile associated with the requesting merchant and livemode.
        def me(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/network/business_profiles/me",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a Stripe business profile by its Network ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/network/business_profiles/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
