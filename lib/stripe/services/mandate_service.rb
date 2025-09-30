# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class MandateService < StripeService
    # Retrieves a list of Mandates for a given PaymentMethod.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/mandates", params: params, opts: opts, base_address: :api)
    end

    # Retrieves a Mandate object.
    def retrieve(mandate, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/mandates/%<mandate>s", { mandate: CGI.escape(mandate) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
