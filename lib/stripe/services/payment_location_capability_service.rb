# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentLocationCapabilityService < StripeService
    # Updates a specified Payment Location Capability. Request or remove a payment location capability by updating its requested parameter.
    def update(capability, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/payment_location_capabilities/%<capability>s", { capability: CGI.escape(capability) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
