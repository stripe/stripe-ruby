# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentLocationCapabilityService < StripeService
    # Returns a list of PaymentLocationCapability objects associated with the location.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/payment_location_capabilities",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves information about the specified Payment Location Capability.
    def retrieve(capability, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/payment_location_capabilities/%<capability>s", { capability: CGI.escape(capability) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

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
