# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class TaxFundService < StripeService
    # Returns a list of tax funds in reverse chronological order.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/tax_funds", params: params, opts: opts, base_address: :api)
    end

    # Retrieves a tax fund object by its ID.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/tax_funds/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
