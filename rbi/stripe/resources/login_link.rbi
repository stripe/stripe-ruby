# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Login Links are single-use URLs that takes an Express account to the login page for their Stripe dashboard.
  # A Login Link differs from an [Account Link](https://stripe.com/docs/api/account_links) in that it takes the user directly to their [Express dashboard for the specified account](https://stripe.com/docs/connect/integrate-express-dashboard#create-login-link)
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