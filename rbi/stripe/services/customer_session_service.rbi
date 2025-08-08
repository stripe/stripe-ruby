# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class CustomerSessionService < StripeService
    class CreateParams < Stripe::RequestParams
      class Components < Stripe::RequestParams
        class BuyButton < Stripe::RequestParams
          # Whether the buy button is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        class CustomerSheet < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the customer sheet displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.
            #
            # If not specified, defaults to ["always"]. In order to display all saved payment methods, specify ["always", "limited", "unspecified"].
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :payment_method_allow_redisplay_filters
            # Controls whether the customer sheet displays the option to remove a saved payment method."
            #
            # Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_remove
            sig {
              params(payment_method_allow_redisplay_filters: T.nilable(T::Array[String]), payment_method_remove: T.nilable(String)).void
             }
            def initialize(
              payment_method_allow_redisplay_filters: nil,
              payment_method_remove: nil
            ); end
          end
          # Whether the customer sheet is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # This hash defines whether the customer sheet supports certain features.
          sig {
            returns(T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::CustomerSheet::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::CustomerSheet::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class MobilePaymentElement < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the mobile payment element displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.
            #
            # If not specified, defaults to ["always"]. In order to display all saved payment methods, specify ["always", "limited", "unspecified"].
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :payment_method_allow_redisplay_filters
            # Controls whether or not the mobile payment element shows saved payment methods.
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_redisplay
            # Controls whether the mobile payment element displays the option to remove a saved payment method."
            #
            # Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_remove
            # Controls whether the mobile payment element displays a checkbox offering to save a new payment method.
            #
            # If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_save
            # Allows overriding the value of allow_override when saving a new payment method when payment_method_save is set to disabled. Use values: "always", "limited", or "unspecified".
            #
            # If not specified, defaults to `nil` (no override value).
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_save_allow_redisplay_override
            sig {
              params(payment_method_allow_redisplay_filters: T.nilable(T::Array[String]), payment_method_redisplay: T.nilable(String), payment_method_remove: T.nilable(String), payment_method_save: T.nilable(String), payment_method_save_allow_redisplay_override: T.nilable(String)).void
             }
            def initialize(
              payment_method_allow_redisplay_filters: nil,
              payment_method_redisplay: nil,
              payment_method_remove: nil,
              payment_method_save: nil,
              payment_method_save_allow_redisplay_override: nil
            ); end
          end
          # Whether the mobile payment element is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # This hash defines whether the mobile payment element supports certain features.
          sig {
            returns(T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::MobilePaymentElement::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::MobilePaymentElement::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PaymentElement < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the Payment Element displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.
            #
            # If not specified, defaults to ["always"]. In order to display all saved payment methods, specify ["always", "limited", "unspecified"].
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :payment_method_allow_redisplay_filters
            # Controls whether or not the Payment Element shows saved payment methods. This parameter defaults to `disabled`.
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_redisplay
            # Determines the max number of saved payment methods for the Payment Element to display. This parameter defaults to `3`. The maximum redisplay limit is `10`.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :payment_method_redisplay_limit
            # Controls whether the Payment Element displays the option to remove a saved payment method. This parameter defaults to `disabled`.
            #
            # Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_remove
            # Controls whether the Payment Element displays a checkbox offering to save a new payment method. This parameter defaults to `disabled`.
            #
            # If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_save
            # When using PaymentIntents and the customer checks the save checkbox, this field determines the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value used to confirm the PaymentIntent.
            #
            # When using SetupIntents, directly configure the [`usage`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-usage) value on SetupIntent creation.
            sig { returns(T.nilable(String)) }
            attr_accessor :payment_method_save_usage
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
          attr_accessor :enabled
          # This hash defines whether the Payment Element supports certain features.
          sig {
            returns(T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::PaymentElement::Features))
           }
          attr_accessor :features
          sig {
            params(enabled: T::Boolean, features: T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::PaymentElement::Features)).void
           }
          def initialize(enabled: nil, features: nil); end
        end
        class PricingTable < Stripe::RequestParams
          # Whether the pricing table is enabled.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          sig { params(enabled: T::Boolean).void }
          def initialize(enabled: nil); end
        end
        # Configuration for buy button.
        sig {
          returns(T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::BuyButton))
         }
        attr_accessor :buy_button
        # Configuration for the customer sheet.
        sig {
          returns(T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::CustomerSheet))
         }
        attr_accessor :customer_sheet
        # Configuration for the mobile payment element.
        sig {
          returns(T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::MobilePaymentElement))
         }
        attr_accessor :mobile_payment_element
        # Configuration for the Payment Element.
        sig {
          returns(T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::PaymentElement))
         }
        attr_accessor :payment_element
        # Configuration for the pricing table.
        sig {
          returns(T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::PricingTable))
         }
        attr_accessor :pricing_table
        sig {
          params(buy_button: T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::BuyButton), customer_sheet: T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::CustomerSheet), mobile_payment_element: T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::MobilePaymentElement), payment_element: T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::PaymentElement), pricing_table: T.nilable(::Stripe::CustomerSessionService::CreateParams::Components::PricingTable)).void
         }
        def initialize(
          buy_button: nil,
          customer_sheet: nil,
          mobile_payment_element: nil,
          payment_element: nil,
          pricing_table: nil
        ); end
      end
      # Configuration for each component. Exactly 1 component must be enabled.
      sig { returns(::Stripe::CustomerSessionService::CreateParams::Components) }
      attr_accessor :components
      # The ID of an existing customer for which to create the Customer Session.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # The ID of an existing Account for which to create the Customer Session.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_account
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig {
        params(components: ::Stripe::CustomerSessionService::CreateParams::Components, customer: T.nilable(String), customer_account: T.nilable(String), expand: T.nilable(T::Array[String])).void
       }
      def initialize(components: nil, customer: nil, customer_account: nil, expand: nil); end
    end
    # Creates a Customer Session object that includes a single-use client secret that you can use on your front-end to grant client-side API access for certain customer resources.
    sig {
      params(params: T.any(::Stripe::CustomerSessionService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::CustomerSession)
     }
    def create(params = {}, opts = {}); end
  end
end