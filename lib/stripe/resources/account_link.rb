# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Account Links are the means by which a Connect platform grants a connected account permission to access
  # Stripe-hosted applications, such as Connect Onboarding.
  #
  # Related guide: [Connect Onboarding](https://stripe.com/docs/connect/custom/hosted-onboarding)
  class AccountLink < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "account_link"

    # Creates an AccountLink object that includes a single-use Stripe URL that the platform can redirect their user to in order to take them through the Connect Onboarding flow.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/account_links", params: params, opts: opts)
    end
  end
end
