# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Account Links are the means by which a Connect platform grants a connected account permission to access
  # Stripe-hosted applications, such as Connect Onboarding.
  #
  # Related guide: [Connect Onboarding](https://stripe.com/docs/connect/connect-onboarding).
  class AccountLink < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "account_link"
  end
end
