# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class FxQuoteService < StripeService
    # Creates an FX Quote object
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/fx_quotes", params: params, opts: opts, base_address: :api)
    end

    # Returns a list of FX quotes that have been issued. The FX quotes are returned in sorted order, with the most recent FX quotes appearing first.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/fx_quotes", params: params, opts: opts, base_address: :api)
    end

    # Retrieve an FX Quote object
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/fx_quotes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
