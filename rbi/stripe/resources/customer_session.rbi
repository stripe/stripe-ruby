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
    class Components < Stripe::StripeObject
      class BuyButton < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :enabled
      end
      class PaymentElement < Stripe::StripeObject
        class Features < Stripe::StripeObject
          sig { returns(T::Array[String]) }
          attr_reader :payment_method_allow_redisplay_filters
          sig { returns(String) }
          attr_reader :payment_method_redisplay
          sig { returns(T.nilable(Integer)) }
          attr_reader :payment_method_redisplay_limit
          sig { returns(String) }
          attr_reader :payment_method_remove
          sig { returns(String) }
          attr_reader :payment_method_save
          sig { returns(T.nilable(String)) }
          attr_reader :payment_method_save_usage
        end
        sig { returns(T::Boolean) }
        attr_reader :enabled
        sig { returns(T.nilable(Features)) }
        attr_reader :features
      end
      class PricingTable < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :enabled
      end
      sig { returns(BuyButton) }
      attr_reader :buy_button
      sig { returns(PaymentElement) }
      attr_reader :payment_element
      sig { returns(PricingTable) }
      attr_reader :pricing_table
    end
    sig { returns(String) }
    # The client secret of this Customer Session. Used on the client to set up secure access to the given `customer`.
    #
    # The client secret can be used to provide access to `customer` from your frontend. It should not be stored, logged, or exposed to anyone other than the relevant customer. Make sure that you have TLS enabled on any page that includes the client secret.
    attr_reader :client_secret
    sig { returns(Components) }
    # Configuration for the components supported by this Customer Session.
    attr_reader :components
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.any(String, Stripe::Customer)) }
    # The Customer the Customer Session was created for.
    attr_reader :customer
    sig { returns(Integer) }
    # The timestamp at which this Customer Session will expire.
    attr_reader :expires_at
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
  end
end