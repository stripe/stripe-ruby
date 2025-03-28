# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # Person retrieval response schema.
      class Person < APIResource
        class AdditionalAddress < Stripe::StripeObject
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
          # Purpose of additional address.
          sig { returns(String) }
          attr_reader :purpose
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          attr_reader :state
          # Town or cho-me.
          sig { returns(T.nilable(String)) }
          attr_reader :town
        end
        class AdditionalName < Stripe::StripeObject
          # The individual's full name.
          sig { returns(T.nilable(String)) }
          attr_reader :full_name
          # The individual's first or given name.
          sig { returns(T.nilable(String)) }
          attr_reader :given_name
          # The purpose or type of the additional name.
          sig { returns(String) }
          attr_reader :purpose
          # The individual's last or family name.
          sig { returns(T.nilable(String)) }
          attr_reader :surname
        end
        class AdditionalTermsOfService < Stripe::StripeObject
          class Account < Stripe::StripeObject
            # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
            sig { returns(T.nilable(String)) }
            attr_reader :date
            # The IP address from which the Account's representative accepted the terms of service.
            sig { returns(T.nilable(String)) }
            attr_reader :ip
            # The user agent of the browser from which the Account's representative accepted the terms of service.
            sig { returns(T.nilable(String)) }
            attr_reader :user_agent
          end
          # Stripe terms of service agreement.
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
          # Town or cho-me.
          sig { returns(T.nilable(String)) }
          attr_reader :town
        end
        class DateOfBirth < Stripe::StripeObject
          # The day of birth, between 1 and 31.
          sig { returns(Integer) }
          attr_reader :day
          # The month of birth, between 1 and 12.
          sig { returns(Integer) }
          attr_reader :month
          # The four-digit year of birth.
          sig { returns(Integer) }
          attr_reader :year
        end
        class Documents < Stripe::StripeObject
          class CompanyAuthorization < Stripe::StripeObject
            # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
            sig { returns(T::Array[String]) }
            attr_reader :files
            # The format of the document. Currently supports `files` only.
            sig { returns(String) }
            attr_reader :type
          end
          class Passport < Stripe::StripeObject
            # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
            sig { returns(T::Array[String]) }
            attr_reader :files
            # The format of the document. Currently supports `files` only.
            sig { returns(String) }
            attr_reader :type
          end
          class PrimaryVerification < Stripe::StripeObject
            class FrontBack < Stripe::StripeObject
              # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
              sig { returns(T.nilable(String)) }
              attr_reader :back
              # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
              sig { returns(String) }
              attr_reader :front
            end
            # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens for the front and back of the verification document.
            sig { returns(FrontBack) }
            attr_reader :front_back
            # The format of the verification document. Currently supports `front_back` only.
            sig { returns(String) }
            attr_reader :type
          end
          class SecondaryVerification < Stripe::StripeObject
            class FrontBack < Stripe::StripeObject
              # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
              sig { returns(T.nilable(String)) }
              attr_reader :back
              # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
              sig { returns(String) }
              attr_reader :front
            end
            # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens for the front and back of the verification document.
            sig { returns(FrontBack) }
            attr_reader :front_back
            # The format of the verification document. Currently supports `front_back` only.
            sig { returns(String) }
            attr_reader :type
          end
          class Visa < Stripe::StripeObject
            # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
            sig { returns(T::Array[String]) }
            attr_reader :files
            # The format of the document. Currently supports `files` only.
            sig { returns(String) }
            attr_reader :type
          end
          # One or more documents that demonstrate proof that this person is authorized to represent the company.
          sig { returns(T.nilable(CompanyAuthorization)) }
          attr_reader :company_authorization
          # One or more documents showing the person’s passport page with photo and personal data.
          sig { returns(T.nilable(Passport)) }
          attr_reader :passport
          # An identifying document showing the person's name, either a passport or local ID card.
          sig { returns(T.nilable(PrimaryVerification)) }
          attr_reader :primary_verification
          # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
          sig { returns(T.nilable(SecondaryVerification)) }
          attr_reader :secondary_verification
          # One or more documents showing the person’s visa required for living in the country where they are residing.
          sig { returns(T.nilable(Visa)) }
          attr_reader :visa
        end
        class IdNumber < Stripe::StripeObject
          # The ID number type of an individual.
          sig { returns(String) }
          attr_reader :type
        end
        class Relationship < Stripe::StripeObject
          # Whether the individual is a director of the Account’s legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :director
          # Whether the individual has significant responsibility to control, manage, or direct the organization.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :executive
          # Whether the individual is the legal guardian of the Account’s representative.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :legal_guardian
          # Whether the individual is an owner of the Account’s legal entity.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :owner
          # The percent owned by the individual of the Account’s legal entity.
          sig { returns(T.nilable(String)) }
          attr_reader :percent_ownership
          # Whether the individual is authorized as the primary representative of the Account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :representative
          # The individual's title (e.g., CEO, Support Engineer).
          sig { returns(T.nilable(String)) }
          attr_reader :title
        end
        class ScriptAddresses < Stripe::StripeObject
          class Kana < Stripe::StripeObject
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
            # Town or cho-me.
            sig { returns(T.nilable(String)) }
            attr_reader :town
          end
          class Kanji < Stripe::StripeObject
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
            # Town or cho-me.
            sig { returns(T.nilable(String)) }
            attr_reader :town
          end
          # Kana Address.
          sig { returns(T.nilable(Kana)) }
          attr_reader :kana
          # Kanji Address.
          sig { returns(T.nilable(Kanji)) }
          attr_reader :kanji
        end
        class ScriptNames < Stripe::StripeObject
          class Kana < Stripe::StripeObject
            # The person's first or given name.
            sig { returns(T.nilable(String)) }
            attr_reader :given_name
            # The person's last or family name.
            sig { returns(T.nilable(String)) }
            attr_reader :surname
          end
          class Kanji < Stripe::StripeObject
            # The person's first or given name.
            sig { returns(T.nilable(String)) }
            attr_reader :given_name
            # The person's last or family name.
            sig { returns(T.nilable(String)) }
            attr_reader :surname
          end
          # Persons name in kana script.
          sig { returns(T.nilable(Kana)) }
          attr_reader :kana
          # Persons name in kanji script.
          sig { returns(T.nilable(Kanji)) }
          attr_reader :kanji
        end
        # The account ID which the individual belongs to.
        sig { returns(String) }
        attr_reader :account
        # Additional addresses associated with the person.
        sig { returns(T.nilable(T::Array[AdditionalAddress])) }
        attr_reader :additional_addresses
        # Additional names (e.g. aliases) associated with the person.
        sig { returns(T.nilable(T::Array[AdditionalName])) }
        attr_reader :additional_names
        # Attestations of accepted terms of service agreements.
        sig { returns(T.nilable(AdditionalTermsOfService)) }
        attr_reader :additional_terms_of_service
        # The person's residential address.
        sig { returns(T.nilable(Address)) }
        attr_reader :address
        # Time at which the object was created. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        attr_reader :created
        # The person's date of birth.
        sig { returns(T.nilable(DateOfBirth)) }
        attr_reader :date_of_birth
        # Documents that may be submitted to satisfy various informational requests.
        sig { returns(T.nilable(Documents)) }
        attr_reader :documents
        # The person's email address.
        sig { returns(T.nilable(String)) }
        attr_reader :email
        # The person's first name.
        sig { returns(T.nilable(String)) }
        attr_reader :given_name
        # Unique identifier for the Person.
        sig { returns(String) }
        attr_reader :id
        # The identification numbers (e.g., SSN) associated with the person.
        sig { returns(T.nilable(T::Array[IdNumber])) }
        attr_reader :id_numbers
        # The person's gender (International regulations require either "male" or "female").
        sig { returns(T.nilable(String)) }
        attr_reader :legal_gender
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # The countries where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :nationalities
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The person's phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :phone
        # The person's political exposure.
        sig { returns(T.nilable(String)) }
        attr_reader :political_exposure
        # The relationship that this person has with the Account's business or legal entity.
        sig { returns(T.nilable(Relationship)) }
        attr_reader :relationship
        # The script addresses (e.g., non-Latin characters) associated with the person.
        sig { returns(T.nilable(ScriptAddresses)) }
        attr_reader :script_addresses
        # The script names (e.g. non-Latin characters) associated with the person.
        sig { returns(T.nilable(ScriptNames)) }
        attr_reader :script_names
        # The person's last name.
        sig { returns(T.nilable(String)) }
        attr_reader :surname
        # Time at which the object was last updated. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        attr_reader :updated
      end
    end
  end
end