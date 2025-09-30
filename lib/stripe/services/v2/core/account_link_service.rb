# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class AccountLinkService < StripeService
        # Creates an AccountLink object that includes a single-use Stripe URL that the merchant can redirect their user to in order to take them to a Stripe-hosted application such as Recipient Onboarding.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/core/account_links",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
