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
        params(attempt: String, expand: T.nilable(T::Array[String]), payment_intent_data: T.nilable(::Stripe::Checkout::SessionApproveParams::PaymentIntentData), return_url: T.nilable(String), subscription_data: T.nilable(::Stripe::Checkout::SessionApproveParams::SubscriptionData)).void
       }
      def initialize(
        attempt: nil,
        expand: nil,
        payment_intent_data: nil,
        return_url: nil,
        subscription_data: nil
      ); end
    end
  end
end