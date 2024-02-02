# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This is an object representing a person associated with a Stripe account.
  #
  # A platform cannot access a Standard or Express account's persons after the account starts onboarding, such as after generating an account link for the account.
  # See the [Standard onboarding](https://stripe.com/docs/connect/standard-accounts) or [Express onboarding documentation](https://stripe.com/docs/connect/express-accounts) for information about platform prefilling and account onboarding steps.
  #
  # Related guide: [Handling identity verification with the API](https://stripe.com/docs/connect/handling-api-verification#person-information)
  class Person < APIResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "person"

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
