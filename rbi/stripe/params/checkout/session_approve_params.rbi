# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Checkout
    class SessionApproveParams < ::Stripe::RequestParams
      class PaymentIntentData < ::Stripe::RequestParams
        # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://docs.stripe.com/payments/connected-accounts).
        sig { returns(T.nilable(Integer)) }
        def application_fee_amount; end
        sig { params(_application_fee_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def application_fee_amount=(_application_fee_amount); end
        sig { params(application_fee_amount: T.nilable(Integer)).void }
        def initialize(application_fee_amount: nil); end
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
          sig { returns(T.nilable(String)) }
          def request_three_d_secure; end
          sig { params(_request_three_d_secure: T.nilable(String)).returns(T.nilable(String)) }
          def request_three_d_secure=(_request_three_d_secure); end
          sig { params(request_three_d_secure: T.nilable(String)).void }
          def initialize(request_three_d_secure: nil); end
        end
        # Card-specific payment method options. Use this to control 3D Secure behavior during approval.
        sig {
          returns(T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentMethodOptions::Card))
         }
        def card; end
        sig {
          params(_card: T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentMethodOptions::Card)).returns(T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentMethodOptions::Card))
         }
        def card=(_card); end
        sig {
          params(card: T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentMethodOptions::Card)).void
         }
        def initialize(card: nil); end
      end
      class SubscriptionData < ::Stripe::RequestParams
        # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. To use an application fee percent, the request must be made on behalf of another account, using the `Stripe-Account` header or an OAuth key. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
        sig { returns(T.nilable(Float)) }
        def application_fee_percent; end
        sig { params(_application_fee_percent: T.nilable(Float)).returns(T.nilable(Float)) }
        def application_fee_percent=(_application_fee_percent); end
        sig { params(application_fee_percent: T.nilable(Float)).void }
        def initialize(application_fee_percent: nil); end
      end
      # The ID of the customer's attempt to pay to approve.
      sig { returns(String) }
      def attempt; end
      sig { params(_attempt: String).returns(String) }
      def attempt=(_attempt); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
      sig { returns(T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentIntentData)) }
      def payment_intent_data; end
      sig {
        params(_payment_intent_data: T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentIntentData)).returns(T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentIntentData))
       }
      def payment_intent_data=(_payment_intent_data); end
      # Payment method-specific configuration to apply to the Checkout Session during approval. Currently only supports `card` payment method options.
      sig { returns(T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentMethodOptions)) }
      def payment_method_options; end
      sig {
        params(_payment_method_options: T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentMethodOptions)).returns(T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentMethodOptions))
       }
      def payment_method_options=(_payment_method_options); end
      # The URL to redirect your customer back to after they authenticate or cancel their payment on the
      # payment method's app or site. This parameter is allowed and required if and only if you did not
      # set the return URL during Checkout Session creation or in `checkout.confirm()` in Stripe.js.
      sig { returns(T.nilable(String)) }
      def return_url; end
      sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
      def return_url=(_return_url); end
      # A subset of parameters to be passed to subscription creation for Checkout Sessions in `subscription` mode.
      sig { returns(T.nilable(::Stripe::Checkout::SessionApproveParams::SubscriptionData)) }
      def subscription_data; end
      sig {
        params(_subscription_data: T.nilable(::Stripe::Checkout::SessionApproveParams::SubscriptionData)).returns(T.nilable(::Stripe::Checkout::SessionApproveParams::SubscriptionData))
       }
      def subscription_data=(_subscription_data); end
      sig {
        params(attempt: String, expand: T.nilable(T::Array[String]), payment_intent_data: T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentIntentData), payment_method_options: T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentMethodOptions), return_url: T.nilable(String), subscription_data: T.nilable(::Stripe::Checkout::SessionApproveParams::SubscriptionData)).void
       }
      def initialize(
        attempt: nil,
        expand: nil,
        payment_intent_data: nil,
        payment_method_options: nil,
        return_url: nil,
        subscription_data: nil
      ); end
    end
  end
end