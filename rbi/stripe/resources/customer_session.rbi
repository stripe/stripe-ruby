# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A Customer Session allows you to grant Stripe's frontend SDKs (like Stripe.js) client-side access
  # control over a Customer.
  #
  # Related guides: [Customer Session with the Payment Element](https://docs.stripe.com/payments/accept-a-payment-deferred?platform=web&type=payment#save-payment-methods),
  # [Customer Session with the Pricing Table](https://docs.stripe.com/payments/checkout/pricing-table#customer-session),
  # [Customer Session with the Buy Button](https://docs.stripe.com/payment-links/buy-button#pass-an-existing-customer).
  class CustomerSession < APIResource
    class Components < Stripe::StripeObject
      class BuyButton < Stripe::StripeObject
        # Whether the buy button is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
      end
      class PaymentElement < Stripe::StripeObject
        class Features < Stripe::StripeObject
          # A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the Payment Element displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.
          #
          # If not specified, defaults to ["always"]. In order to display all saved payment methods, specify ["always", "limited", "unspecified"].
          sig { returns(T::Array[String]) }
          def payment_method_allow_redisplay_filters; end
          # Controls whether or not the Payment Element shows saved payment methods. This parameter defaults to `disabled`.
          sig { returns(String) }
          def payment_method_redisplay; end
          # Determines the max number of saved payment methods for the Payment Element to display. This parameter defaults to `3`. The maximum redisplay limit is `10`.
          sig { returns(T.nilable(Integer)) }
          def payment_method_redisplay_limit; end
          # Controls whether the Payment Element displays the option to remove a saved payment method. This parameter defaults to `disabled`.
          #
          # Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
          sig { returns(String) }
          def payment_method_remove; end
          # Controls whether the Payment Element displays a checkbox offering to save a new payment method. This parameter defaults to `disabled`.
          #
          # If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
          sig { returns(String) }
          def payment_method_save; end
          # When using PaymentIntents and the customer checks the save checkbox, this field determines the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value used to confirm the PaymentIntent.
          #
          # When using SetupIntents, directly configure the [`usage`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-usage) value on SetupIntent creation.
          sig { returns(T.nilable(String)) }
          def payment_method_save_usage; end
        end
        # Whether the Payment Element is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
        # This hash defines whether the Payment Element supports certain features.
        sig { returns(T.nilable(Features)) }
        def features; end
      end
      class PricingTable < Stripe::StripeObject
        # Whether the pricing table is enabled.
        sig { returns(T::Boolean) }
        def enabled; end
      end
      # This hash contains whether the buy button is enabled.
      sig { returns(BuyButton) }
      def buy_button; end
      # This hash contains whether the Payment Element is enabled and the features it supports.
      sig { returns(PaymentElement) }
      def payment_element; end
      # This hash contains whether the pricing table is enabled.
      sig { returns(PricingTable) }
      def pricing_table; end
    end
    # The client secret of this Customer Session. Used on the client to set up secure access to the given `customer`.
    #
    # The client secret can be used to provide access to `customer` from your frontend. It should not be stored, logged, or exposed to anyone other than the relevant customer. Make sure that you have TLS enabled on any page that includes the client secret.
    sig { returns(String) }
    def client_secret; end
    # Configuration for the components supported by this Customer Session.
    sig { returns(Components) }
    def components; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # The Customer the Customer Session was created for.
    sig { returns(T.any(String, Stripe::Customer)) }
    def customer; end
    # The timestamp at which this Customer Session will expire.
    sig { returns(Integer) }
    def expires_at; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    class CreateParams < Stripe::RequestParams
      class Components < Stripe::RequestParams
        class BuyButton < Stripe::RequestParams
          # Whether the buy button is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        class PaymentElement < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the Payment Element displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.
            #
            # If not specified, defaults to ["always"]. In order to display all saved payment methods, specify ["always", "limited", "unspecified"].
            sig { returns(T.nilable(T::Array[String])) }
            def payment_method_allow_redisplay_filters; end
            sig {
              params(_payment_method_allow_redisplay_filters: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def payment_method_allow_redisplay_filters=(
              _payment_method_allow_redisplay_filters
            ); end
            # Controls whether or not the Payment Element shows saved payment methods. This parameter defaults to `disabled`.
            sig { returns(T.nilable(String)) }
            def payment_method_redisplay; end
            sig { params(_payment_method_redisplay: T.nilable(String)).returns(T.nilable(String)) }
            def payment_method_redisplay=(_payment_method_redisplay); end
            # Determines the max number of saved payment methods for the Payment Element to display. This parameter defaults to `3`. The maximum redisplay limit is `10`.
            sig { returns(T.nilable(Integer)) }
            def payment_method_redisplay_limit; end
            sig {
              params(_payment_method_redisplay_limit: T.nilable(Integer)).returns(T.nilable(Integer))
             }
            def payment_method_redisplay_limit=(_payment_method_redisplay_limit); end
            # Controls whether the Payment Element displays the option to remove a saved payment method. This parameter defaults to `disabled`.
            #
            # Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
            sig { returns(T.nilable(String)) }
            def payment_method_remove; end
            sig { params(_payment_method_remove: T.nilable(String)).returns(T.nilable(String)) }
            def payment_method_remove=(_payment_method_remove); end
            # Controls whether the Payment Element displays a checkbox offering to save a new payment method. This parameter defaults to `disabled`.
            #
            # If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
            sig { returns(T.nilable(String)) }
            def payment_method_save; end
            sig { params(_payment_method_save: T.nilable(String)).returns(T.nilable(String)) }
            def payment_method_save=(_payment_method_save); end
            # When using PaymentIntents and the customer checks the save checkbox, this field determines the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value used to confirm the PaymentIntent.
            #
            # When using SetupIntents, directly configure the [`usage`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-usage) value on SetupIntent creation.
            sig { returns(T.nilable(String)) }
            def payment_method_save_usage; end
            sig { params(_payment_method_save_usage: T.nilable(String)).returns(T.nilable(String)) }
            def payment_method_save_usage=(_payment_method_save_usage); end
            sig {
              params(payment_method_allow_redisplay_filters: T.nilable(T::Array[String]), payment_method_redisplay: T.nilable(String), payment_method_redisplay_limit: T.nilable(Integer), payment_method_remove: T.nilable(String), payment_method_save: T.nilable(String), payment_method_save_usage: T.nilable(String)).void
             }
            def initialize(
              payment_method_allow_redisplay_filters: nil,
              payment_method_redisplay: nil,
              payment_method_redisplay_limit: nil,
              payment_method_remove: nil,
              payment_method_save: nil,
              payment_method_save_usage: nil
            ); end
          end
          # Whether the Payment Element is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          # This hash defines whether the Payment Element supports certain features.
          sig {
            returns(T.nilable(::Stripe::CustomerSession::CreateParams::Components::PaymentElement::Features))
           }
          def features; end
          sig {
            params(_features: T.nilable(::Stripe::CustomerSession::CreateParams::Components::PaymentElement::Features)).returns(T.nilable(::Stripe::CustomerSession::CreateParams::Components::PaymentElement::Features))
           }
          def features=(_features); end
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::CustomerSession::CreateParams::Components::PaymentElement::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PricingTable < Stripe::RequestParams
          # Whether the pricing table is enabled.
          sig { returns(T::Boolean) }
          def enabled; end
          sig { params(_enabled: T::Boolean).returns(T::Boolean) }
          def enabled=(_enabled); end
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        # Configuration for buy button.
        sig { returns(T.nilable(::Stripe::CustomerSession::CreateParams::Components::BuyButton)) }
        def buy_button; end
        sig {
          params(_buy_button: T.nilable(::Stripe::CustomerSession::CreateParams::Components::BuyButton)).returns(T.nilable(::Stripe::CustomerSession::CreateParams::Components::BuyButton))
         }
        def buy_button=(_buy_button); end
        # Configuration for the Payment Element.
        sig {
          returns(T.nilable(::Stripe::CustomerSession::CreateParams::Components::PaymentElement))
         }
        def payment_element; end
        sig {
          params(_payment_element: T.nilable(::Stripe::CustomerSession::CreateParams::Components::PaymentElement)).returns(T.nilable(::Stripe::CustomerSession::CreateParams::Components::PaymentElement))
         }
        def payment_element=(_payment_element); end
        # Configuration for the pricing table.
        sig {
          returns(T.nilable(::Stripe::CustomerSession::CreateParams::Components::PricingTable))
         }
        def pricing_table; end
        sig {
          params(_pricing_table: T.nilable(::Stripe::CustomerSession::CreateParams::Components::PricingTable)).returns(T.nilable(::Stripe::CustomerSession::CreateParams::Components::PricingTable))
         }
        def pricing_table=(_pricing_table); end
        sig {
          params(buy_button: T.nilable(::Stripe::CustomerSession::CreateParams::Components::BuyButton), payment_element: T.nilable(::Stripe::CustomerSession::CreateParams::Components::PaymentElement), pricing_table: T.nilable(::Stripe::CustomerSession::CreateParams::Components::PricingTable)).void
         }
        def initialize(buy_button: nil, payment_element: nil, pricing_table: nil); end
      end
      # Configuration for each component. Exactly 1 component must be enabled.
      sig { returns(::Stripe::CustomerSession::CreateParams::Components) }
      def components; end
      sig {
        params(_components: ::Stripe::CustomerSession::CreateParams::Components).returns(::Stripe::CustomerSession::CreateParams::Components)
       }
      def components=(_components); end
      # The ID of an existing customer for which to create the Customer Session.
      sig { returns(String) }
      def customer; end
      sig { params(_customer: String).returns(String) }
      def customer=(_customer); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig {
        params(components: ::Stripe::CustomerSession::CreateParams::Components, customer: String, expand: T.nilable(T::Array[String])).void
       }
      def initialize(components: nil, customer: nil, expand: nil); end
    end
    # Creates a Customer Session object that includes a single-use client secret that you can use on your front-end to grant client-side API access for certain customer resources.
    sig {
      params(params: T.any(::Stripe::CustomerSession::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CustomerSession)
     }
    def self.create(params = {}, opts = {}); end
  end
end