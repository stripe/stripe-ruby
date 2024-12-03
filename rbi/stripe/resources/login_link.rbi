# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Login Links are single-use URLs for a connected account to access the Express Dashboard. The connected account's [account.controller.stripe_dashboard.type](https://stripe.com/api/accounts/object#account_object-controller-stripe_dashboard-type) must be `express` to have access to the Express Dashboard.
  class LoginLink < APIResource
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(String) }
    # The URL for the login link.
    attr_reader :url
  end
end