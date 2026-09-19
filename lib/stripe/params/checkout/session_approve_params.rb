# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Checkout
    class SessionApproveParams < ::Stripe::RequestParams
      class PaymentIntentData < ::Stripe::RequestParams
        # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
        attr_accessor :application_fee_amount

        def initialize(application_fee_amount: nil)
          @application_fee_amount = application_fee_amount
        end
      end

      class PaymentMethodOptions < ::Stripe::RequestParams
        class Card < ::Stripe::RequestParams
          # We recommend that you rely on our SCA Engine to automatically prompt your customers for
          # authentication based on risk level and [other requirements](https://docs.stripe.com/strong-customer-authentication).
          # However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this
          # option. When supplied during approval, this value overrides the 3D Secure preference of the
          # Checkout Session's underlying Intent. If omitted, Checkout does not modify the existing preference.
          # Read our guide on [manually requesting 3D Secure](https://docs.stripe.com/payments/3d-secure/authentication-flow#manual-three-ds)
          # for more information on how this configuration interacts with Radar and our SCA Engine.
          attr_accessor :request_three_d_secure

          def initialize(request_three_d_secure: nil)
            @request_three_d_secure = request_three_d_secure
          end
        end
        # Card-specific payment method options. Use this to control 3D Secure behavior during approval.
        attr_accessor :card

        def initialize(card: nil)
          @card = card
        end
      end

      class SubscriptionData < ::Stripe::RequestParams
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. To use an application fee percent, the request must be made on behalf of another account, using the `Stripe-Account` header or an OAuth key. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        attr_accessor :application_fee_percent

        def initialize(application_fee_percent: nil)
          @application_fee_percent = application_fee_percent
        end
      end
      # The ID of the customer's attempt to pay to approve.
      attr_accessor :attempt
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
      attr_accessor :payment_intent_data
      # Payment method-specific configuration to apply to the Checkout Session during approval. Currently only supports `card` payment method options.
      attr_accessor :payment_method_options
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the
      # payment method's app or site. This parameter is allowed and required if and only if you did not
      # set the return URL during Checkout Session creation or in `checkout.confirm()` in Stripe.js.
      attr_accessor :return_url
      # A subset of parameters to be passed to subscription creation for Checkout Sessions in `subscription` mode.
      attr_accessor :subscription_data

      def initialize(
        attempt: nil,
        expand: nil,
        payment_intent_data: nil,
        payment_method_options: nil,
        return_url: nil,
        subscription_data: nil
      )
        @attempt = attempt
        @expand = expand
        @payment_intent_data = payment_intent_data
        @payment_method_options = payment_method_options
        @return_url = return_url
        @subscription_data = subscription_data
      end
    end
  end
end
