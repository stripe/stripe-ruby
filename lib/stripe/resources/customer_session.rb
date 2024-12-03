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

    class Components < Stripe::StripeObject
      class BuyButton < Stripe::StripeObject
        attr_reader :enabled
      end

      class PaymentElement < Stripe::StripeObject
        class Features < Stripe::StripeObject
          attr_reader :payment_method_allow_redisplay_filters, :payment_method_redisplay, :payment_method_redisplay_limit, :payment_method_remove, :payment_method_save, :payment_method_save_usage
        end
        attr_reader :enabled, :features
      end

      class PricingTable < Stripe::StripeObject
        attr_reader :enabled
      end
      attr_reader :buy_button, :payment_element, :pricing_table
    end
    # The client secret of this Customer Session. Used on the client to set up secure access to the given `customer`.
    #
    # The client secret can be used to provide access to `customer` from your frontend. It should not be stored, logged, or exposed to anyone other than the relevant customer. Make sure that you have TLS enabled on any page that includes the client secret.
    attr_reader :client_secret
    # Configuration for the components supported by this Customer Session.
    attr_reader :components
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # The Customer the Customer Session was created for.
    attr_reader :customer
    # The timestamp at which this Customer Session will expire.
    attr_reader :expires_at
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

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
