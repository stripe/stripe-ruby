# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Login Links are single-use URLs for a connected account to access the Express Dashboard. The connected account's [account.controller.stripe_dashboard.type](https://stripe.com/api/accounts/object#account_object-controller-stripe_dashboard-type) must be `express` to have access to the Express Dashboard.
  class LoginLink < APIResource
    OBJECT_NAME = "login_link"
    def self.object_name
      "login_link"
    end

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The URL for the login link.
    attr_reader :url

    def self.retrieve(_id, _opts = nil)
      raise NotImplementedError,
            "Login links do not have IDs and cannot be retrieved. They can " \
            "only be created using `Account.create_login_link('account_id', " \
            "create_params)`"
    end
  end
end
