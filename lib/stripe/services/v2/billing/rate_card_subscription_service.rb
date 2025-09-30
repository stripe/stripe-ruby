# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class RateCardSubscriptionService < StripeService
        # Cancel an existing, active Rate Card Subscription.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/rate_card_subscriptions/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a Rate Card Subscription to bill a Rate Card on a specified Billing Cadence.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/rate_card_subscriptions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all Rate Card Subscription objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/billing/rate_card_subscriptions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a Rate Card Subscription by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/rate_card_subscriptions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update fields on an existing, active Rate Card Subscription.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/rate_card_subscriptions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
