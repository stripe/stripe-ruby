# frozen_string_literal: true

module Stripe
  class Person < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "person".freeze

    def resource_url
      if !respond_to?(:account) || account.nil?
        raise NotImplementedError,
              "Persons cannot be accessed without an account ID."
      end
      "#{Account.resource_url}/#{CGI.escape(account)}/persons/#{CGI.escape(id)}"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError, "Persons cannot be retrieved without an account ID. Retrieve a person using account.persons.retrieve('person_id')"
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError, "Persons cannot be updated without an account ID. Update a person using `p = account.persons.retrieve('person_id'); p.save`"
    end
  end
end
