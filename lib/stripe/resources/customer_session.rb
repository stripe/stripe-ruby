# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Customer Session allows you to grant Stripe's frontend SDKs (like Stripe.js) client-side access
  # control over a Customer.
  #
  # Related guides: [Customer Session with the Payment Element](https://stripe.com/payments/accept-a-payment-deferred?platform=web&type=payment#save-payment-methods),
  # [Customer Session with the Pricing Table](https://stripe.com/payments/checkout/pricing-table#customer-session),
  # [Customer Session with the Buy Button](https://stripe.com/payment-links/buy-button#pass-an-existing-customer).
  class CustomerSession < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "customer_session"
    def self.object_name
      "customer_session"
    end

    # Creates a Customer Session object that includes a single-use client secret that you can use on your front-end to grant client-side API access for certain customer resources.
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
