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

    # Attaches a PaymentMethod object to a Customer.
    #
    # To attach a new PaymentMethod to a customer for future payments, we recommend you use a [SetupIntent](https://stripe.com/docs/api/setup_intents)
    # or a PaymentIntent with [setup_future_usage](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-setup_future_usage).
    # These approaches will perform any necessary steps to set up the PaymentMethod for future payments. Using the /v1/payment_methods/:id/attach
    # endpoint without first using a SetupIntent or PaymentIntent with setup_future_usage does not optimize the PaymentMethod for
    # future use, which makes later declines and payment friction more likely.
    # See [Optimizing cards for future payments](https://stripe.com/docs/payments/payment-intents#future-usage) for more information about setting up
    # future payments.
    #
    # To use this PaymentMethod as the default for invoice or subscription payments,
    # set [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/update#update_customer-invoice_settings-default_payment_method),
    # on the Customer to the PaymentMethod's ID.
    def attach(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<payment_method>s/attach", { payment_method: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Detaches a PaymentMethod object from a Customer. After a PaymentMethod is detached, it can no longer be used for a payment or re-attached to a Customer.
    def detach(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<payment_method>s/detach", { payment_method: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Attaches a PaymentMethod object to a Customer.
    #
    # To attach a new PaymentMethod to a customer for future payments, we recommend you use a [SetupIntent](https://stripe.com/docs/api/setup_intents)
    # or a PaymentIntent with [setup_future_usage](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-setup_future_usage).
    # These approaches will perform any necessary steps to set up the PaymentMethod for future payments. Using the /v1/payment_methods/:id/attach
    # endpoint without first using a SetupIntent or PaymentIntent with setup_future_usage does not optimize the PaymentMethod for
    # future use, which makes later declines and payment friction more likely.
    # See [Optimizing cards for future payments](https://stripe.com/docs/payments/payment-intents#future-usage) for more information about setting up
    # future payments.
    #
    # To use this PaymentMethod as the default for invoice or subscription payments,
    # set [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/update#update_customer-invoice_settings-default_payment_method),
    # on the Customer to the PaymentMethod's ID.
    def self.attach(payment_method, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_methods/%<payment_method>s/attach", { payment_method: CGI.escape(payment_method) }),
        params: params,
        opts: opts
      )
    end

    # Detaches a PaymentMethod object from a Customer. After a PaymentMethod is detached, it can no longer be used for a payment or re-attached to a Customer.
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
