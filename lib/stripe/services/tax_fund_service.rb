# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class TaxFundService < StripeService
    # Returns a list of tax funds in reverse chronological order.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/tax_funds", params: params, opts: opts, base_address: :api)
    end

    # Retrieves a tax fund object by its ID.
    def retrieve(tax_fund, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/tax_funds/%<tax_fund>s", { tax_fund: CGI.escape(tax_fund) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
