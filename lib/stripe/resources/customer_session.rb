# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A customer session allows you to grant client access to Stripe's frontend SDKs (like StripeJs)
  # control over a customer.
  class CustomerSession < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "customer_session"

    # Creates a customer session object that includes a single-use client secret that you can use on your front-end to grant client-side API access for certain customer resources.
    def self.create(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/customer_sessions",
        params: params,
        opts: opts
      )
    end
  end
end
