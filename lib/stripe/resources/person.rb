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

    class AdditionalTosAcceptances < Stripe::StripeObject
      class Account < Stripe::StripeObject
        attr_reader :date, :ip, :user_agent
      end
      attr_reader :account
    end

    class Address < Stripe::StripeObject
      attr_reader :city, :country, :line1, :line2, :postal_code, :state
    end

    class AddressKana < Stripe::StripeObject
      attr_reader :city, :country, :line1, :line2, :postal_code, :state, :town
    end

    class AddressKanji < Stripe::StripeObject
      attr_reader :city, :country, :line1, :line2, :postal_code, :state, :town
    end

    class Dob < Stripe::StripeObject
      attr_reader :day, :month, :year
    end

    class FutureRequirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        attr_reader :alternative_fields_due, :original_fields_due
      end

      class Error < Stripe::StripeObject
        attr_reader :code, :reason, :requirement
      end
      attr_reader :alternatives, :currently_due, :errors, :eventually_due, :past_due, :pending_verification
    end

    class RegisteredAddress < Stripe::StripeObject
      attr_reader :city, :country, :line1, :line2, :postal_code, :state
    end

    class Relationship < Stripe::StripeObject
      attr_reader :authorizer, :director, :executive, :legal_guardian, :owner, :percent_ownership, :representative, :title
    end

    class Requirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        attr_reader :alternative_fields_due, :original_fields_due
      end

      class Error < Stripe::StripeObject
        attr_reader :code, :reason, :requirement
      end
      attr_reader :alternatives, :currently_due, :errors, :eventually_due, :past_due, :pending_verification
    end

    class Verification < Stripe::StripeObject
      class AdditionalDocument < Stripe::StripeObject
        attr_reader :back, :details, :details_code, :front
      end

      class Document < Stripe::StripeObject
        attr_reader :back, :details, :details_code, :front
      end
      attr_reader :additional_document, :details, :details_code, :document, :status
    end
    # The account the person is associated with.
    attr_reader :account
    # Attribute for field additional_tos_acceptances
    attr_reader :additional_tos_acceptances
    # Attribute for field address
    attr_reader :address
    # The Kana variation of the person's address (Japan only).
    attr_reader :address_kana
    # The Kanji variation of the person's address (Japan only).
    attr_reader :address_kanji
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Attribute for field dob
    attr_reader :dob
    # The person's email address.
    attr_reader :email
    # The person's first name.
    attr_reader :first_name
    # The Kana variation of the person's first name (Japan only).
    attr_reader :first_name_kana
    # The Kanji variation of the person's first name (Japan only).
    attr_reader :first_name_kanji
    # A list of alternate names or aliases that the person is known by.
    attr_reader :full_name_aliases
    # Information about the [upcoming new requirements for this person](https://stripe.com/docs/connect/custom-accounts/future-requirements), including what information needs to be collected, and by when.
    attr_reader :future_requirements
    # The person's gender.
    attr_reader :gender
    # Unique identifier for the object.
    attr_reader :id
    # Whether the person's `id_number` was provided. True if either the full ID number was provided or if only the required part of the ID number was provided (ex. last four of an individual's SSN for the US indicated by `ssn_last_4_provided`).
    attr_reader :id_number_provided
    # Whether the person's `id_number_secondary` was provided.
    attr_reader :id_number_secondary_provided
    # The person's last name.
    attr_reader :last_name
    # The Kana variation of the person's last name (Japan only).
    attr_reader :last_name_kana
    # The Kanji variation of the person's last name (Japan only).
    attr_reader :last_name_kanji
    # The person's maiden name.
    attr_reader :maiden_name
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # The country where the person is a national.
    attr_reader :nationality
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The person's phone number.
    attr_reader :phone
    # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
    attr_reader :political_exposure
    # Attribute for field registered_address
    attr_reader :registered_address
    # Attribute for field relationship
    attr_reader :relationship
    # Information about the requirements for this person, including what information needs to be collected, and by when.
    attr_reader :requirements
    # Whether the last four digits of the person's Social Security number have been provided (U.S. only).
    attr_reader :ssn_last_4_provided
    # Attribute for field verification
    attr_reader :verification
    # Always true for a deleted object
    attr_reader :deleted

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
