# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountSignalsService < StripeService
    # Retrieves the account's Signal objects
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<id>s/signals", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
