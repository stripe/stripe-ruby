# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AccountSignalsService < StripeService
    # Retrieves the account's Signal objects
    def retrieve(account_id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/accounts/%<account_id>s/signals", { account_id: CGI.escape(account_id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
