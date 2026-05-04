# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentLocationService < StripeService
    # Create a Payment Location.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/payment_locations",
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
