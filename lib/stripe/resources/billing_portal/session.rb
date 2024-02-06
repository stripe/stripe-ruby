# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module BillingPortal
    # The Billing customer portal is a Stripe-hosted UI for subscription and
    # billing management.
    #
    # A portal configuration describes the functionality and features that you
    # want to provide to your customers through the portal.
    #
    # A portal session describes the instantiation of the customer portal for
    # a particular customer. By visiting the session's URL, the customer
    # can manage their subscriptions and billing details. For security reasons,
    # sessions are short-lived and will expire if the customer does not visit the URL.
    # Create sessions on-demand when customers intend to manage their subscriptions
    # and billing details.
    #
    # Learn more in the [integration guide](https://stripe.com/docs/billing/subscriptions/integrating-customer-portal).
    class Session < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "billing_portal.session"

      # Creates a session of the customer portal.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/billing_portal/sessions",
          params: params,
          opts: opts
        )
      end
    end
  end
end
