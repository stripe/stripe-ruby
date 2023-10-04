# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A SetupIntent guides you through the process of setting up and saving a customer's payment credentials for future payments.
  # For example, you can use a SetupIntent to set up and save your customer's card without immediately collecting a payment.
  # Later, you can use [PaymentIntents](https://stripe.com/docs/api#payment_intents) to drive the payment flow.
  #
  # Create a SetupIntent when you're ready to collect your customer's payment credentials.
  # Don't maintain long-lived, unconfirmed SetupIntents because they might not be valid.
  # The SetupIntent transitions through multiple [statuses](https://stripe.com/docs/payments/intents#intent-statuses) as it guides
  # you through the setup process.
  #
  # Successful SetupIntents result in payment credentials that are optimized for future payments.
  # For example, cardholders in [certain regions](https://stripe.com/guides/strong-customer-authentication) might need to be run through
  # [Strong Customer Authentication](https://stripe.com/docs/strong-customer-authentication) during payment method collection
  # to streamline later [off-session payments](https://stripe.com/docs/payments/setup-intents).
  # If you use the SetupIntent with a [Customer](https://stripe.com/docs/api#setup_intent_object-customer),
  # it automatically attaches the resulting payment method to that Customer after successful setup.
  # We recommend using SetupIntents or [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) on
  # PaymentIntents to save payment methods to prevent saving invalid or unoptimized payment methods.
  #
  # By using SetupIntents, you can reduce friction for your customers, even as regulations change over time.
  #
  # Related guide: [Setup Intents API](https://stripe.com/docs/payments/setup-intents)
  class SetupIntent < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "setup_intent"

    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/cancel", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def confirm(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/confirm", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def verify_microdeposits(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.cancel(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/cancel", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    def self.confirm(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/confirm", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end

    def self.verify_microdeposits(intent, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/setup_intents/%<intent>s/verify_microdeposits", { intent: CGI.escape(intent) }),
        params: params,
        opts: opts
      )
    end
  end
end
