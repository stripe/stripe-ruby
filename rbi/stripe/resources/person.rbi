# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # This is an object representing a person associated with a Stripe account.
  #
  # A platform cannot access a person for an account where [account.controller.requirement_collection](https://stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`, which includes Standard and Express accounts, after creating an Account Link or Account Session to start Connect onboarding.
  #
  # See the [Standard onboarding](https://stripe.com/connect/standard-accounts) or [Express onboarding](https://stripe.com/connect/express-accounts) documentation for information about prefilling information and account onboarding steps. Learn more about [handling identity verification with the API](https://stripe.com/connect/handling-api-verification#person-information).
  class Person < APIResource
    class AdditionalTosAcceptances < Stripe::StripeObject
      class Account < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :date
        sig { returns(T.nilable(String)) }
        attr_reader :ip
        sig { returns(T.nilable(String)) }
        attr_reader :user_agent
      end
      sig { returns(T.nilable(Account)) }
      attr_reader :account
    end
    class Address < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :city
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :line1
      sig { returns(T.nilable(String)) }
      attr_reader :line2
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code
      sig { returns(T.nilable(String)) }
      attr_reader :state
    end
    class AddressKana < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :city
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :line1
      sig { returns(T.nilable(String)) }
      attr_reader :line2
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code
      sig { returns(T.nilable(String)) }
      attr_reader :state
      sig { returns(T.nilable(String)) }
      attr_reader :town
    end
    class AddressKanji < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :city
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :line1
      sig { returns(T.nilable(String)) }
      attr_reader :line2
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code
      sig { returns(T.nilable(String)) }
      attr_reader :state
      sig { returns(T.nilable(String)) }
      attr_reader :town
    end
    class Dob < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :day
      sig { returns(T.nilable(Integer)) }
      attr_reader :month
      sig { returns(T.nilable(Integer)) }
      attr_reader :year
    end
    class FutureRequirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :alternative_fields_due
        sig { returns(T::Array[String]) }
        attr_reader :original_fields_due
      end
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code
        sig { returns(String) }
        attr_reader :reason
        sig { returns(String) }
        attr_reader :requirement
      end
      sig { returns(T.nilable(T::Array[Alternative])) }
      attr_reader :alternatives
      sig { returns(T::Array[String]) }
      attr_reader :currently_due
      sig { returns(T::Array[Error]) }
      attr_reader :errors
      sig { returns(T::Array[String]) }
      attr_reader :eventually_due
      sig { returns(T::Array[String]) }
      attr_reader :past_due
      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
    end
    class RegisteredAddress < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :city
      sig { returns(T.nilable(String)) }
      attr_reader :country
      sig { returns(T.nilable(String)) }
      attr_reader :line1
      sig { returns(T.nilable(String)) }
      attr_reader :line2
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code
      sig { returns(T.nilable(String)) }
      attr_reader :state
    end
    class Relationship < Stripe::StripeObject
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :authorizer
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :director
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :executive
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :legal_guardian
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :owner
      sig { returns(T.nilable(Float)) }
      attr_reader :percent_ownership
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :representative
      sig { returns(T.nilable(String)) }
      attr_reader :title
    end
    class Requirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        sig { returns(T::Array[String]) }
        attr_reader :alternative_fields_due
        sig { returns(T::Array[String]) }
        attr_reader :original_fields_due
      end
      class Error < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code
        sig { returns(String) }
        attr_reader :reason
        sig { returns(String) }
        attr_reader :requirement
      end
      sig { returns(T.nilable(T::Array[Alternative])) }
      attr_reader :alternatives
      sig { returns(T::Array[String]) }
      attr_reader :currently_due
      sig { returns(T::Array[Error]) }
      attr_reader :errors
      sig { returns(T::Array[String]) }
      attr_reader :eventually_due
      sig { returns(T::Array[String]) }
      attr_reader :past_due
      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
    end
    class Verification < Stripe::StripeObject
      class AdditionalDocument < Stripe::StripeObject
        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :back
        sig { returns(T.nilable(String)) }
        attr_reader :details
        sig { returns(T.nilable(String)) }
        attr_reader :details_code
        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :front
      end
      class Document < Stripe::StripeObject
        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :back
        sig { returns(T.nilable(String)) }
        attr_reader :details
        sig { returns(T.nilable(String)) }
        attr_reader :details_code
        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :front
      end
      sig { returns(T.nilable(AdditionalDocument)) }
      attr_reader :additional_document
      sig { returns(T.nilable(String)) }
      attr_reader :details
      sig { returns(T.nilable(String)) }
      attr_reader :details_code
      sig { returns(Document) }
      attr_reader :document
      sig { returns(String) }
      attr_reader :status
    end
    sig { returns(String) }
    # The account the person is associated with.
    attr_reader :account
    sig { returns(AdditionalTosAcceptances) }
    # Attribute for field additional_tos_acceptances
    attr_reader :additional_tos_acceptances
    sig { returns(Address) }
    # Attribute for field address
    attr_reader :address
    sig { returns(T.nilable(AddressKana)) }
    # The Kana variation of the person's address (Japan only).
    attr_reader :address_kana
    sig { returns(T.nilable(AddressKanji)) }
    # The Kanji variation of the person's address (Japan only).
    attr_reader :address_kanji
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(Dob) }
    # Attribute for field dob
    attr_reader :dob
    sig { returns(T.nilable(String)) }
    # The person's email address.
    attr_reader :email
    sig { returns(T.nilable(String)) }
    # The person's first name.
    attr_reader :first_name
    sig { returns(T.nilable(String)) }
    # The Kana variation of the person's first name (Japan only).
    attr_reader :first_name_kana
    sig { returns(T.nilable(String)) }
    # The Kanji variation of the person's first name (Japan only).
    attr_reader :first_name_kanji
    sig { returns(T::Array[String]) }
    # A list of alternate names or aliases that the person is known by.
    attr_reader :full_name_aliases
    sig { returns(T.nilable(FutureRequirements)) }
    # Information about the [upcoming new requirements for this person](https://stripe.com/docs/connect/custom-accounts/future-requirements), including what information needs to be collected, and by when.
    attr_reader :future_requirements
    sig { returns(T.nilable(String)) }
    # The person's gender.
    attr_reader :gender
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Whether the person's `id_number` was provided. True if either the full ID number was provided or if only the required part of the ID number was provided (ex. last four of an individual's SSN for the US indicated by `ssn_last_4_provided`).
    attr_reader :id_number_provided
    sig { returns(T::Boolean) }
    # Whether the person's `id_number_secondary` was provided.
    attr_reader :id_number_secondary_provided
    sig { returns(T.nilable(String)) }
    # The person's last name.
    attr_reader :last_name
    sig { returns(T.nilable(String)) }
    # The Kana variation of the person's last name (Japan only).
    attr_reader :last_name_kana
    sig { returns(T.nilable(String)) }
    # The Kanji variation of the person's last name (Japan only).
    attr_reader :last_name_kanji
    sig { returns(T.nilable(String)) }
    # The person's maiden name.
    attr_reader :maiden_name
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(T.nilable(String)) }
    # The country where the person is a national.
    attr_reader :nationality
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(String)) }
    # The person's phone number.
    attr_reader :phone
    sig { returns(String) }
    # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
    attr_reader :political_exposure
    sig { returns(RegisteredAddress) }
    # Attribute for field registered_address
    attr_reader :registered_address
    sig { returns(Relationship) }
    # Attribute for field relationship
    attr_reader :relationship
    sig { returns(T.nilable(Requirements)) }
    # Information about the requirements for this person, including what information needs to be collected, and by when.
    attr_reader :requirements
    sig { returns(T::Boolean) }
    # Whether the last four digits of the person's Social Security number have been provided (U.S. only).
    attr_reader :ssn_last_4_provided
    sig { returns(Verification) }
    # Attribute for field verification
    attr_reader :verification
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end