# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class EphemeralKeyService < StripeService
    # Creates a short-lived API key for a given resource.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/ephemeral_keys",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Invalidates a short-lived API key for a given resource.
    def delete(id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/ephemeral_keys/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
