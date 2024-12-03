# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Account Links are the means by which a Connect platform grants a connected account permission to access
  # Stripe-hosted applications, such as Connect Onboarding.
  #
  # Related guide: [Connect Onboarding](https://stripe.com/docs/connect/custom/hosted-onboarding)
  class AccountLink < APIResource
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # The timestamp at which this account link will expire.
    sig { returns(Integer) }
    attr_reader :expires_at

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The URL for the account link.
    sig { returns(String) }
    attr_reader :url
  end
end