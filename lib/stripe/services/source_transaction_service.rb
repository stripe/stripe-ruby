# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SourceTransactionService < StripeService
    # List source transactions for a given source.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/sources/%<id>s/source_transactions", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
