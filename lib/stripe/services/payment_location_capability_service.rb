# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentLocationCapabilityService < StripeService
    # List all payment location capabilities associated with the payment location.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/payment_location_capabilities",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves a payment_location capability
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/payment_location_capabilities/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates a payment_location capability. Request or remove a payment_location capability by updating its requested parameter.
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_location_capabilities/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
