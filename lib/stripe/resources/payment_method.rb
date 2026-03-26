# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # PaymentMethod objects represent your customer's payment instruments.
  # You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
  # Customer objects to store instrument details for future payments.
  #
  # Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
  class PaymentMethod < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_method"

    def attach(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<payment_method>s/attach", { payment_method: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def detach(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<payment_method>s/detach", { payment_method: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.attach(payment_method, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<payment_method>s/attach", { payment_method: CGI.escape(payment_method) }),
        params: params,
        opts: opts
      )
    end

    def self.detach(payment_method, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<payment_method>s/detach", { payment_method: CGI.escape(payment_method) }),
        params: params,
        opts: opts
      )
    end
  end
end
