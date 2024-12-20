# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerSessionService < StripeService
    class CreateParams < Stripe::RequestParams
      class Components < Stripe::RequestParams
        class BuyButton < Stripe::RequestParams
          # Whether the buy button is enabled.
          attr_accessor :enabled

          def initialize(enabled: nil)
            @enabled = enabled
          end
        end

        class PaymentElement < Stripe::RequestParams
          class Features < Stripe::RequestParams
            # A list of [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) values that controls which saved payment methods the Payment Element displays by filtering to only show payment methods with an `allow_redisplay` value that is present in this list.
            #
            # If not specified, defaults to ["always"]. In order to display all saved payment methods, specify ["always", "limited", "unspecified"].
            attr_accessor :payment_method_allow_redisplay_filters
            # Controls whether or not the Payment Element shows saved payment methods. This parameter defaults to `disabled`.
            attr_accessor :payment_method_redisplay
            # Determines the max number of saved payment methods for the Payment Element to display. This parameter defaults to `3`.
            attr_accessor :payment_method_redisplay_limit
            # Controls whether the Payment Element displays the option to remove a saved payment method. This parameter defaults to `disabled`.
            #
            # Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
            attr_accessor :payment_method_remove
            # Controls whether the Payment Element displays a checkbox offering to save a new payment method. This parameter defaults to `disabled`.
            #
            # If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
            attr_accessor :payment_method_save
            # When using PaymentIntents and the customer checks the save checkbox, this field determines the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value used to confirm the PaymentIntent.
            #
            # When using SetupIntents, directly configure the [`usage`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-usage) value on SetupIntent creation.
            attr_accessor :payment_method_save_usage

            def initialize(
              payment_method_allow_redisplay_filters: nil,
              payment_method_redisplay: nil,
              payment_method_redisplay_limit: nil,
              payment_method_remove: nil,
              payment_method_save: nil,
              payment_method_save_usage: nil
            )
              @payment_method_allow_redisplay_filters = payment_method_allow_redisplay_filters
              @payment_method_redisplay = payment_method_redisplay
              @payment_method_redisplay_limit = payment_method_redisplay_limit
              @payment_method_remove = payment_method_remove
              @payment_method_save = payment_method_save
              @payment_method_save_usage = payment_method_save_usage
            end
          end
          # Whether the Payment Element is enabled.
          attr_accessor :enabled
          # This hash defines whether the Payment Element supports certain features.
          attr_accessor :features

          def initialize(enabled: nil, features: nil)
            @enabled = enabled
            @features = features
          end
        end

        class PricingTable < Stripe::RequestParams
          # Whether the pricing table is enabled.
          attr_accessor :enabled

          def initialize(enabled: nil)
            @enabled = enabled
          end
        end
        # Configuration for buy button.
        attr_accessor :buy_button
        # Configuration for the Payment Element.
        attr_accessor :payment_element
        # Configuration for the pricing table.
        attr_accessor :pricing_table

        def initialize(buy_button: nil, payment_element: nil, pricing_table: nil)
          @buy_button = buy_button
          @payment_element = payment_element
          @pricing_table = pricing_table
        end
      end
      # Configuration for each component. Exactly 1 component must be enabled.
      attr_accessor :components
      # The ID of an existing customer for which to create the Customer Session.
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(components: nil, customer: nil, expand: nil)
        @components = components
        @customer = customer
        @expand = expand
      end
    end

    # Creates a Customer Session object that includes a single-use client secret that you can use on your front-end to grant client-side API access for certain customer resources.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/customer_sessions",
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
