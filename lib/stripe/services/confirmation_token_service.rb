# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ConfirmationTokenService < StripeService
    # Retrieves an existing ConfirmationToken object
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/confirmation_tokens/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
