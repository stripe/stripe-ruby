# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Account Links are the means by which a Connect platform grants a connected account permission to access
  # Stripe-hosted applications, such as Connect Onboarding.
  #
  # Related guide: [Connect Onboarding](https://stripe.com/docs/connect/custom/hosted-onboarding)
  class AccountLink < APIResource
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(Integer) }
    # The timestamp at which this account link will expire.
    attr_reader :expires_at
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(String) }
    # The URL for the account link.
    attr_reader :url
  end
end