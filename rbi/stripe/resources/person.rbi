# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # This is an object representing a person associated with a Stripe account.
  #
  # A platform can only access a subset of data in a person for an account where [account.controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is `stripe`, which includes Standard and Express accounts, after creating an Account Link or Account Session to start Connect onboarding.
  #
  # See the [Standard onboarding](https://docs.stripe.com/connect/standard-accounts) or [Express onboarding](https://docs.stripe.com/connect/express-accounts) documentation for information about prefilling information and account onboarding steps. Learn more about [handling identity verification with the API](https://docs.stripe.com/connect/handling-api-verification#person-information).
  class Person < APIResource
    class AdditionalTosAcceptances < Stripe::StripeObject
      class Account < Stripe::StripeObject
        # The Unix timestamp marking when the legal guardian accepted the service agreement.
        sig { returns(T.nilable(Integer)) }
        attr_reader :date
        # The IP address from which the legal guardian accepted the service agreement.
        sig { returns(T.nilable(String)) }
        attr_reader :ip
        # The user agent of the browser from which the legal guardian accepted the service agreement.
        sig { returns(T.nilable(String)) }
        attr_reader :user_agent
      end
      # Details on the legal guardian's acceptance of the main Stripe service agreement.
      sig { returns(T.nilable(Account)) }
      attr_reader :account
    end
    class Address < Stripe::StripeObject
      # City, district, suburb, town, or village.
      sig { returns(T.nilable(String)) }
      attr_reader :city
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # Address line 1 (e.g., street, PO Box, or company name).
      sig { returns(T.nilable(String)) }
      attr_reader :line1
      # Address line 2 (e.g., apartment, suite, unit, or building).
      sig { returns(T.nilable(String)) }
      attr_reader :line2
      # ZIP or postal code.
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code
      # State, county, province, or region.
      sig { returns(T.nilable(String)) }
      attr_reader :state
    end
    class AddressKana < Stripe::StripeObject
      # City/Ward.
      sig { returns(T.nilable(String)) }
      attr_reader :city
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # Block/Building number.
      sig { returns(T.nilable(String)) }
      attr_reader :line1
      # Building details.
      sig { returns(T.nilable(String)) }
      attr_reader :line2
      # ZIP or postal code.
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code
      # Prefecture.
      sig { returns(T.nilable(String)) }
      attr_reader :state
      # Town/cho-me.
      sig { returns(T.nilable(String)) }
      attr_reader :town
    end
    class AddressKanji < Stripe::StripeObject
      # City/Ward.
      sig { returns(T.nilable(String)) }
      attr_reader :city
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # Block/Building number.
      sig { returns(T.nilable(String)) }
      attr_reader :line1
      # Building details.
      sig { returns(T.nilable(String)) }
      attr_reader :line2
      # ZIP or postal code.
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code
      # Prefecture.
      sig { returns(T.nilable(String)) }
      attr_reader :state
      # Town/cho-me.
      sig { returns(T.nilable(String)) }
      attr_reader :town
    end
    class Dob < Stripe::StripeObject
      # The day of birth, between 1 and 31.
      sig { returns(T.nilable(Integer)) }
      attr_reader :day
      # The month of birth, between 1 and 12.
      sig { returns(T.nilable(Integer)) }
      attr_reader :month
      # The four-digit year of birth.
      sig { returns(T.nilable(Integer)) }
      attr_reader :year
    end
    class FutureRequirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        # Fields that can be provided to satisfy all fields in `original_fields_due`.
        sig { returns(T::Array[String]) }
        attr_reader :alternative_fields_due
        # Fields that are due and can be satisfied by providing all fields in `alternative_fields_due`.
        sig { returns(T::Array[String]) }
        attr_reader :original_fields_due
      end
      class Error < Stripe::StripeObject
        # The code for the type of error.
        sig { returns(String) }
        attr_reader :code
        # An informative message that indicates the error type and provides additional details about the error.
        sig { returns(String) }
        attr_reader :reason
        # The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
        sig { returns(String) }
        attr_reader :requirement
      end
      # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
      sig { returns(T.nilable(T::Array[Alternative])) }
      attr_reader :alternatives
      # Fields that need to be collected to keep the person's account enabled. If not collected by the account's `future_requirements[current_deadline]`, these fields will transition to the main `requirements` hash, and may immediately become `past_due`, but the account may also be given a grace period depending on the account's enablement state prior to transition.
      sig { returns(T::Array[String]) }
      attr_reader :currently_due
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      sig { returns(T::Array[Error]) }
      attr_reader :errors
      # Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well, and the account's `future_requirements[current_deadline]` becomes set.
      sig { returns(T::Array[String]) }
      attr_reader :eventually_due
      # Fields that weren't collected by the account's `requirements.current_deadline`. These fields need to be collected to enable the person's account. New fields will never appear here; `future_requirements.past_due` will always be a subset of `requirements.past_due`.
      sig { returns(T::Array[String]) }
      attr_reader :past_due
      # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due` or `currently_due`. Fields might appear in `eventually_due` or `currently_due` and in `pending_verification` if verification fails but another verification is still pending.
      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
    end
    class RegisteredAddress < Stripe::StripeObject
      # City, district, suburb, town, or village.
      sig { returns(T.nilable(String)) }
      attr_reader :city
      # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
      sig { returns(T.nilable(String)) }
      attr_reader :country
      # Address line 1 (e.g., street, PO Box, or company name).
      sig { returns(T.nilable(String)) }
      attr_reader :line1
      # Address line 2 (e.g., apartment, suite, unit, or building).
      sig { returns(T.nilable(String)) }
      attr_reader :line2
      # ZIP or postal code.
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code
      # State, county, province, or region.
      sig { returns(T.nilable(String)) }
      attr_reader :state
    end
    class Relationship < Stripe::StripeObject
      # Whether the person is the authorizer of the account's representative.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :authorizer
      # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :director
      # Whether the person has significant responsibility to control, manage, or direct the organization.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :executive
      # Whether the person is the legal guardian of the account's representative.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :legal_guardian
      # Whether the person is an owner of the account’s legal entity.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :owner
      # The percent owned by the person of the account's legal entity.
      sig { returns(T.nilable(Float)) }
      attr_reader :percent_ownership
      # Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :representative
      # The person's title (e.g., CEO, Support Engineer).
      sig { returns(T.nilable(String)) }
      attr_reader :title
    end
    class Requirements < Stripe::StripeObject
      class Alternative < Stripe::StripeObject
        # Fields that can be provided to satisfy all fields in `original_fields_due`.
        sig { returns(T::Array[String]) }
        attr_reader :alternative_fields_due
        # Fields that are due and can be satisfied by providing all fields in `alternative_fields_due`.
        sig { returns(T::Array[String]) }
        attr_reader :original_fields_due
      end
      class Error < Stripe::StripeObject
        # The code for the type of error.
        sig { returns(String) }
        attr_reader :code
        # An informative message that indicates the error type and provides additional details about the error.
        sig { returns(String) }
        attr_reader :reason
        # The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
        sig { returns(String) }
        attr_reader :requirement
      end
      # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
      sig { returns(T.nilable(T::Array[Alternative])) }
      attr_reader :alternatives
      # Fields that need to be collected to keep the person's account enabled. If not collected by the account's `current_deadline`, these fields appear in `past_due` as well, and the account is disabled.
      sig { returns(T::Array[String]) }
      attr_reader :currently_due
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      sig { returns(T::Array[Error]) }
      attr_reader :errors
      # Fields you must collect when all thresholds are reached. As they become required, they appear in `currently_due` as well, and the account's `current_deadline` becomes set.
      sig { returns(T::Array[String]) }
      attr_reader :eventually_due
      # Fields that weren't collected by the account's `current_deadline`. These fields need to be collected to enable the person's account.
      sig { returns(T::Array[String]) }
      attr_reader :past_due
      # Fields that might become required depending on the results of verification or review. It's an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`. Fields might appear in `eventually_due`, `currently_due`, or `past_due` and in `pending_verification` if verification fails but another verification is still pending.
      sig { returns(T::Array[String]) }
      attr_reader :pending_verification
    end
    class UsCfpbData < Stripe::StripeObject
      class EthnicityDetails < Stripe::StripeObject
        # The persons ethnicity
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :ethnicity
        # Please specify your origin, when other is selected.
        sig { returns(T.nilable(String)) }
        attr_reader :ethnicity_other
      end
      class RaceDetails < Stripe::StripeObject
        # The persons race.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :race
        # Please specify your race, when other is selected.
        sig { returns(T.nilable(String)) }
        attr_reader :race_other
      end
      # The persons ethnicity details
      sig { returns(T.nilable(EthnicityDetails)) }
      attr_reader :ethnicity_details
      # The persons race details
      sig { returns(T.nilable(RaceDetails)) }
      attr_reader :race_details
      # The persons self-identified gender
      sig { returns(T.nilable(String)) }
      attr_reader :self_identified_gender
    end
    class Verification < Stripe::StripeObject
      class AdditionalDocument < Stripe::StripeObject
        # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :back
        # A user-displayable string describing the verification state of this document. For example, if a document is uploaded and the picture is too fuzzy, this may say "Identity document is too unclear to read".
        sig { returns(T.nilable(String)) }
        attr_reader :details
        # One of `document_corrupt`, `document_country_not_supported`, `document_expired`, `document_failed_copy`, `document_failed_other`, `document_failed_test_mode`, `document_fraudulent`, `document_failed_greyscale`, `document_incomplete`, `document_invalid`, `document_manipulated`, `document_missing_back`, `document_missing_front`, `document_not_readable`, `document_not_uploaded`, `document_photo_mismatch`, `document_too_large`, or `document_type_not_supported`. A machine-readable code specifying the verification state for this document.
        sig { returns(T.nilable(String)) }
        attr_reader :details_code
        # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :front
      end
      class Document < Stripe::StripeObject
        # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :back
        # A user-displayable string describing the verification state of this document. For example, if a document is uploaded and the picture is too fuzzy, this may say "Identity document is too unclear to read".
        sig { returns(T.nilable(String)) }
        attr_reader :details
        # One of `document_corrupt`, `document_country_not_supported`, `document_expired`, `document_failed_copy`, `document_failed_other`, `document_failed_test_mode`, `document_fraudulent`, `document_failed_greyscale`, `document_incomplete`, `document_invalid`, `document_manipulated`, `document_missing_back`, `document_missing_front`, `document_not_readable`, `document_not_uploaded`, `document_photo_mismatch`, `document_too_large`, or `document_type_not_supported`. A machine-readable code specifying the verification state for this document.
        sig { returns(T.nilable(String)) }
        attr_reader :details_code
        # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
        sig { returns(T.nilable(T.any(String, Stripe::File))) }
        attr_reader :front
      end
      # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
      sig { returns(T.nilable(AdditionalDocument)) }
      attr_reader :additional_document
      # A user-displayable string describing the verification state for the person. For example, this may say "Provided identity information could not be verified".
      sig { returns(T.nilable(String)) }
      attr_reader :details
      # One of `document_address_mismatch`, `document_dob_mismatch`, `document_duplicate_type`, `document_id_number_mismatch`, `document_name_mismatch`, `document_nationality_mismatch`, `failed_keyed_identity`, or `failed_other`. A machine-readable code specifying the verification state for the person.
      sig { returns(T.nilable(String)) }
      attr_reader :details_code
      # Attribute for field document
      sig { returns(Document) }
      attr_reader :document
      # The state of verification for the person. Possible values are `unverified`, `pending`, or `verified`. Please refer [guide](https://stripe.com/docs/connect/handling-api-verification) to handle verification updates.
      sig { returns(String) }
      attr_reader :status
    end
    # The account the person is associated with.
    sig { returns(String) }
    attr_reader :account
    # Attribute for field additional_tos_acceptances
    sig { returns(AdditionalTosAcceptances) }
    attr_reader :additional_tos_acceptances
    # Attribute for field address
    sig { returns(Address) }
    attr_reader :address
    # The Kana variation of the person's address (Japan only).
    sig { returns(T.nilable(AddressKana)) }
    attr_reader :address_kana
    # The Kanji variation of the person's address (Japan only).
    sig { returns(T.nilable(AddressKanji)) }
    attr_reader :address_kanji
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Attribute for field dob
    sig { returns(Dob) }
    attr_reader :dob
    # The person's email address. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
    sig { returns(T.nilable(String)) }
    attr_reader :email
    # The person's first name. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
    sig { returns(T.nilable(String)) }
    attr_reader :first_name
    # The Kana variation of the person's first name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
    sig { returns(T.nilable(String)) }
    attr_reader :first_name_kana
    # The Kanji variation of the person's first name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
    sig { returns(T.nilable(String)) }
    attr_reader :first_name_kanji
    # A list of alternate names or aliases that the person is known by. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
    sig { returns(T::Array[String]) }
    attr_reader :full_name_aliases
    # Information about the [upcoming new requirements for this person](https://stripe.com/docs/connect/custom-accounts/future-requirements), including what information needs to be collected, and by when.
    sig { returns(T.nilable(FutureRequirements)) }
    attr_reader :future_requirements
    # The person's gender.
    sig { returns(T.nilable(String)) }
    attr_reader :gender
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Whether the person's `id_number` was provided. True if either the full ID number was provided or if only the required part of the ID number was provided (ex. last four of an individual's SSN for the US indicated by `ssn_last_4_provided`).
    sig { returns(T::Boolean) }
    attr_reader :id_number_provided
    # Whether the person's `id_number_secondary` was provided.
    sig { returns(T::Boolean) }
    attr_reader :id_number_secondary_provided
    # The person's last name. Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
    sig { returns(T.nilable(String)) }
    attr_reader :last_name
    # The Kana variation of the person's last name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
    sig { returns(T.nilable(String)) }
    attr_reader :last_name_kana
    # The Kanji variation of the person's last name (Japan only). Also available for accounts where [controller.requirement_collection](/api/accounts/object#account_object-controller-requirement_collection) is `stripe`.
    sig { returns(T.nilable(String)) }
    attr_reader :last_name_kanji
    # The person's maiden name.
    sig { returns(T.nilable(String)) }
    attr_reader :maiden_name
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata
    # The country where the person is a national.
    sig { returns(T.nilable(String)) }
    attr_reader :nationality
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # The person's phone number.
    sig { returns(T.nilable(String)) }
    attr_reader :phone
    # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
    sig { returns(String) }
    attr_reader :political_exposure
    # Attribute for field registered_address
    sig { returns(RegisteredAddress) }
    attr_reader :registered_address
    # Attribute for field relationship
    sig { returns(Relationship) }
    attr_reader :relationship
    # Information about the requirements for this person, including what information needs to be collected, and by when.
    sig { returns(T.nilable(Requirements)) }
    attr_reader :requirements
    # Whether the last four digits of the person's Social Security number have been provided (U.S. only).
    sig { returns(T::Boolean) }
    attr_reader :ssn_last_4_provided
    # Demographic data related to the person.
    sig { returns(T.nilable(UsCfpbData)) }
    attr_reader :us_cfpb_data
    # Attribute for field verification
    sig { returns(Verification) }
    attr_reader :verification
    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end