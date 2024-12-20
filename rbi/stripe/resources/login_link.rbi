# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Login Links are single-use URLs for a connected account to access the Express Dashboard. The connected account's [account.controller.stripe_dashboard.type](https://stripe.com/api/accounts/object#account_object-controller-stripe_dashboard-type) must be `express` to have access to the Express Dashboard.
  class LoginLink < APIResource
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # The URL for the login link.
    sig { returns(String) }
    attr_reader :url
  end
end