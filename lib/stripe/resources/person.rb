# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This is an object representing a person associated with a Stripe account.
  #
  # A platform cannot access a person for an account where [account.controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`, which includes Standard and Express accounts, after creating an Account Link or Account Session to start Connect onboarding.
  #
  # See the [Standard onboarding](https://stripe.com/connect/standard-accounts) or [Express onboarding](https://stripe.com/connect/express-accounts) documentation for information about prefilling information and account onboarding steps. Learn more about [handling identity verification with the API](https://stripe.com/connect/handling-api-verification#person-information).
  class Person < APIResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "person"
    def self.object_name
      "person"
    end

    def resource_url
      if !respond_to?(:account) || account.nil?
        raise NotImplementedError,
              "Persons cannot be accessed without an account ID."
      end
      "#{Account.resource_url}/#{CGI.escape(account)}/persons/#{CGI.escape(id)}"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError,
            "Persons cannot be retrieved without an account ID. Retrieve a " \
            "person using `Account.retrieve_person('account_id', 'person_id')`"
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError,
            "Persons cannot be updated without an account ID. Update a " \
            "person using `Account.update_person('account_id', 'person_id', " \
            "update_params)`"
    end
  end
end
