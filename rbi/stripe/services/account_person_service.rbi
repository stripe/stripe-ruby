# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountPersonService < StripeService
    class DeleteParams < Stripe::RequestParams; end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class AdditionalTosAcceptances < Stripe::RequestParams
        class Account < Stripe::RequestParams
          # The Unix timestamp marking when the account representative accepted the service agreement.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :date
          # The IP address from which the account representative accepted the service agreement.
          sig { returns(T.nilable(String)) }
          attr_accessor :ip
          # The user agent of the browser from which the account representative accepted the service agreement.
          sig { returns(T.nilable(String)) }
          attr_accessor :user_agent
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        # Details on the legal guardian's acceptance of the main Stripe service agreement.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AdditionalTosAcceptances::Account))
         }
        attr_accessor :account
        sig {
          params(account: T.nilable(::Stripe::AccountPersonService::UpdateParams::AdditionalTosAcceptances::Account)).void
         }
        def initialize(account: nil); end
      end
      class Address < Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        attr_accessor :country
        # Address line 1 (e.g., street, PO Box, or company name).
        sig { returns(T.nilable(String)) }
        attr_accessor :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        attr_accessor :line2
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        attr_accessor :state
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
         }
        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil
        ); end
      end
      class AddressKana < Stripe::RequestParams
        # City or ward.
        sig { returns(T.nilable(String)) }
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        attr_accessor :country
        # Block or building number.
        sig { returns(T.nilable(String)) }
        attr_accessor :line1
        # Building details.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2
        # Postal code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code
        # Prefecture.
        sig { returns(T.nilable(String)) }
        attr_accessor :state
        # Town or cho-me.
        sig { returns(T.nilable(String)) }
        attr_accessor :town
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
         }
        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil,
          town: nil
        ); end
      end
      class AddressKanji < Stripe::RequestParams
        # City or ward.
        sig { returns(T.nilable(String)) }
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        attr_accessor :country
        # Block or building number.
        sig { returns(T.nilable(String)) }
        attr_accessor :line1
        # Building details.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2
        # Postal code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code
        # Prefecture.
        sig { returns(T.nilable(String)) }
        attr_accessor :state
        # Town or cho-me.
        sig { returns(T.nilable(String)) }
        attr_accessor :town
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
         }
        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil,
          town: nil
        ); end
      end
      class Dob < Stripe::RequestParams
        # The day of birth, between 1 and 31.
        sig { returns(Integer) }
        attr_accessor :day
        # The month of birth, between 1 and 12.
        sig { returns(Integer) }
        attr_accessor :month
        # The four-digit year of birth.
        sig { returns(Integer) }
        attr_accessor :year
        sig { params(day: Integer, month: Integer, year: Integer).void }
        def initialize(day: nil, month: nil, year: nil); end
      end
      class Documents < Stripe::RequestParams
        class CompanyAuthorization < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :files
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class Passport < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :files
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class Visa < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :files
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        # One or more documents that demonstrate proof that this person is authorized to represent the company.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::CompanyAuthorization))
         }
        attr_accessor :company_authorization
        # One or more documents showing the person's passport page with photo and personal data.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Passport))
         }
        attr_accessor :passport
        # One or more documents showing the person's visa required for living in the country where they are residing.
        sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Visa)) }
        attr_accessor :visa
        sig {
          params(company_authorization: T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::CompanyAuthorization), passport: T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Passport), visa: T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Visa)).void
         }
        def initialize(company_authorization: nil, passport: nil, visa: nil); end
      end
      class RegisteredAddress < Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        attr_accessor :country
        # Address line 1 (e.g., street, PO Box, or company name).
        sig { returns(T.nilable(String)) }
        attr_accessor :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        attr_accessor :line2
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        attr_accessor :state
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
         }
        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil
        ); end
      end
      class Relationship < Stripe::RequestParams
        # Whether the person is the authorizer of the account's representative.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :authorizer
        # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :director
        # Whether the person has significant responsibility to control, manage, or direct the organization.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :executive
        # Whether the person is the legal guardian of the account's representative.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :legal_guardian
        # Whether the person is an owner of the account’s legal entity.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :owner
        # The percent owned by the person of the account's legal entity.
        sig { returns(T.nilable(T.any(String, Float))) }
        attr_accessor :percent_ownership
        # Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :representative
        # The person's title (e.g., CEO, Support Engineer).
        sig { returns(T.nilable(String)) }
        attr_accessor :title
        sig {
          params(authorizer: T.nilable(T::Boolean), director: T.nilable(T::Boolean), executive: T.nilable(T::Boolean), legal_guardian: T.nilable(T::Boolean), owner: T.nilable(T::Boolean), percent_ownership: T.nilable(T.any(String, Float)), representative: T.nilable(T::Boolean), title: T.nilable(String)).void
         }
        def initialize(
          authorizer: nil,
          director: nil,
          executive: nil,
          legal_guardian: nil,
          owner: nil,
          percent_ownership: nil,
          representative: nil,
          title: nil
        ); end
      end
      class UsCfpbData < Stripe::RequestParams
        class EthnicityDetails < Stripe::RequestParams
          # The persons ethnicity
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :ethnicity
          # Please specify your origin, when other is selected.
          sig { returns(T.nilable(String)) }
          attr_accessor :ethnicity_other
          sig {
            params(ethnicity: T.nilable(T::Array[String]), ethnicity_other: T.nilable(String)).void
           }
          def initialize(ethnicity: nil, ethnicity_other: nil); end
        end
        class RaceDetails < Stripe::RequestParams
          # The persons race.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :race
          # Please specify your race, when other is selected.
          sig { returns(T.nilable(String)) }
          attr_accessor :race_other
          sig { params(race: T.nilable(T::Array[String]), race_other: T.nilable(String)).void }
          def initialize(race: nil, race_other: nil); end
        end
        # The persons ethnicity details
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::EthnicityDetails))
         }
        attr_accessor :ethnicity_details
        # The persons race details
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::RaceDetails))
         }
        attr_accessor :race_details
        # The persons self-identified gender
        sig { returns(T.nilable(String)) }
        attr_accessor :self_identified_gender
        sig {
          params(ethnicity_details: T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::EthnicityDetails), race_details: T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::RaceDetails), self_identified_gender: T.nilable(String)).void
         }
        def initialize(ethnicity_details: nil, race_details: nil, self_identified_gender: nil); end
      end
      class Verification < Stripe::RequestParams
        class AdditionalDocument < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          attr_accessor :back
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          attr_accessor :front
          sig { params(back: T.nilable(String), front: T.nilable(String)).void }
          def initialize(back: nil, front: nil); end
        end
        class Document < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          attr_accessor :back
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          attr_accessor :front
          sig { params(back: T.nilable(String), front: T.nilable(String)).void }
          def initialize(back: nil, front: nil); end
        end
        # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::AdditionalDocument))
         }
        attr_accessor :additional_document
        # An identifying document, either a passport or local ID card.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::Document))
         }
        attr_accessor :document
        sig {
          params(additional_document: T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::AdditionalDocument), document: T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::Document)).void
         }
        def initialize(additional_document: nil, document: nil); end
      end
      # Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
      sig {
        returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AdditionalTosAcceptances))
       }
      attr_accessor :additional_tos_acceptances
      # The person's address.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Address)) }
      attr_accessor :address
      # The Kana variation of the person's address (Japan only).
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AddressKana)) }
      attr_accessor :address_kana
      # The Kanji variation of the person's address (Japan only).
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AddressKanji)) }
      attr_accessor :address_kanji
      # The person's date of birth.
      sig { returns(T.nilable(T.any(String, ::Stripe::AccountPersonService::UpdateParams::Dob))) }
      attr_accessor :dob
      # Documents that may be submitted to satisfy various informational requests.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents)) }
      attr_accessor :documents
      # The person's email address.
      sig { returns(T.nilable(String)) }
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The person's first name.
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name
      # The Kana variation of the person's first name (Japan only).
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name_kana
      # The Kanji variation of the person's first name (Japan only).
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name_kanji
      # A list of alternate names or aliases that the person is known by.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      attr_accessor :full_name_aliases
      # The person's gender (International regulations require either "male" or "female").
      sig { returns(T.nilable(String)) }
      attr_accessor :gender
      # The person's ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      sig { returns(T.nilable(String)) }
      attr_accessor :id_number
      # The person's secondary ID number, as appropriate for their country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      sig { returns(T.nilable(String)) }
      attr_accessor :id_number_secondary
      # The person's last name.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name
      # The Kana variation of the person's last name (Japan only).
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name_kana
      # The Kanji variation of the person's last name (Japan only).
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name_kanji
      # The person's maiden name.
      sig { returns(T.nilable(String)) }
      attr_accessor :maiden_name
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # The country where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), or "XX" if unavailable.
      sig { returns(T.nilable(String)) }
      attr_accessor :nationality
      # A [person token](https://docs.stripe.com/connect/account-tokens), used to securely provide details to the person.
      sig { returns(T.nilable(String)) }
      attr_accessor :person_token
      # The person's phone number.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone
      # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
      sig { returns(T.nilable(String)) }
      attr_accessor :political_exposure
      # The person's registered address.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::RegisteredAddress)) }
      attr_accessor :registered_address
      # The relationship that this person has with the account's legal entity.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Relationship)) }
      attr_accessor :relationship
      # The last four digits of the person's Social Security number (U.S. only).
      sig { returns(T.nilable(String)) }
      attr_accessor :ssn_last_4
      # Demographic data related to the person.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData)) }
      attr_accessor :us_cfpb_data
      # The person's verification status.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification)) }
      attr_accessor :verification
      sig {
        params(additional_tos_acceptances: T.nilable(::Stripe::AccountPersonService::UpdateParams::AdditionalTosAcceptances), address: T.nilable(::Stripe::AccountPersonService::UpdateParams::Address), address_kana: T.nilable(::Stripe::AccountPersonService::UpdateParams::AddressKana), address_kanji: T.nilable(::Stripe::AccountPersonService::UpdateParams::AddressKanji), dob: T.nilable(T.any(String, ::Stripe::AccountPersonService::UpdateParams::Dob)), documents: T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents), email: T.nilable(String), expand: T.nilable(T::Array[String]), first_name: T.nilable(String), first_name_kana: T.nilable(String), first_name_kanji: T.nilable(String), full_name_aliases: T.nilable(T.any(String, T::Array[String])), gender: T.nilable(String), id_number: T.nilable(String), id_number_secondary: T.nilable(String), last_name: T.nilable(String), last_name_kana: T.nilable(String), last_name_kanji: T.nilable(String), maiden_name: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), nationality: T.nilable(String), person_token: T.nilable(String), phone: T.nilable(String), political_exposure: T.nilable(String), registered_address: T.nilable(::Stripe::AccountPersonService::UpdateParams::RegisteredAddress), relationship: T.nilable(::Stripe::AccountPersonService::UpdateParams::Relationship), ssn_last_4: T.nilable(String), us_cfpb_data: T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData), verification: T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification)).void
       }
      def initialize(
        additional_tos_acceptances: nil,
        address: nil,
        address_kana: nil,
        address_kanji: nil,
        dob: nil,
        documents: nil,
        email: nil,
        expand: nil,
        first_name: nil,
        first_name_kana: nil,
        first_name_kanji: nil,
        full_name_aliases: nil,
        gender: nil,
        id_number: nil,
        id_number_secondary: nil,
        last_name: nil,
        last_name_kana: nil,
        last_name_kanji: nil,
        maiden_name: nil,
        metadata: nil,
        nationality: nil,
        person_token: nil,
        phone: nil,
        political_exposure: nil,
        registered_address: nil,
        relationship: nil,
        ssn_last_4: nil,
        us_cfpb_data: nil,
        verification: nil
      ); end
    end
    class ListParams < Stripe::RequestParams
      class Relationship < Stripe::RequestParams
        # A filter on the list of people returned based on whether these people are authorizers of the account's representative.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :authorizer
        # A filter on the list of people returned based on whether these people are directors of the account's company.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :director
        # A filter on the list of people returned based on whether these people are executives of the account's company.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :executive
        # A filter on the list of people returned based on whether these people are legal guardians of the account's representative.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :legal_guardian
        # A filter on the list of people returned based on whether these people are owners of the account's company.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :owner
        # A filter on the list of people returned based on whether these people are the representative of the account's company.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :representative
        sig {
          params(authorizer: T.nilable(T::Boolean), director: T.nilable(T::Boolean), executive: T.nilable(T::Boolean), legal_guardian: T.nilable(T::Boolean), owner: T.nilable(T::Boolean), representative: T.nilable(T::Boolean)).void
         }
        def initialize(
          authorizer: nil,
          director: nil,
          executive: nil,
          legal_guardian: nil,
          owner: nil,
          representative: nil
        ); end
      end
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # Filters on the list of people returned based on the person's relationship to the account's company.
      sig { returns(T.nilable(::Stripe::AccountPersonService::ListParams::Relationship)) }
      attr_accessor :relationship
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), relationship: T.nilable(::Stripe::AccountPersonService::ListParams::Relationship), starting_after: T.nilable(String)).void
       }
      def initialize(
        ending_before: nil,
        expand: nil,
        limit: nil,
        relationship: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AdditionalTosAcceptances < Stripe::RequestParams
        class Account < Stripe::RequestParams
          # The Unix timestamp marking when the account representative accepted the service agreement.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :date
          # The IP address from which the account representative accepted the service agreement.
          sig { returns(T.nilable(String)) }
          attr_accessor :ip
          # The user agent of the browser from which the account representative accepted the service agreement.
          sig { returns(T.nilable(String)) }
          attr_accessor :user_agent
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        # Details on the legal guardian's acceptance of the main Stripe service agreement.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AdditionalTosAcceptances::Account))
         }
        attr_accessor :account
        sig {
          params(account: T.nilable(::Stripe::AccountPersonService::CreateParams::AdditionalTosAcceptances::Account)).void
         }
        def initialize(account: nil); end
      end
      class Address < Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        attr_accessor :country
        # Address line 1 (e.g., street, PO Box, or company name).
        sig { returns(T.nilable(String)) }
        attr_accessor :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        attr_accessor :line2
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        attr_accessor :state
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
         }
        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil
        ); end
      end
      class AddressKana < Stripe::RequestParams
        # City or ward.
        sig { returns(T.nilable(String)) }
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        attr_accessor :country
        # Block or building number.
        sig { returns(T.nilable(String)) }
        attr_accessor :line1
        # Building details.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2
        # Postal code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code
        # Prefecture.
        sig { returns(T.nilable(String)) }
        attr_accessor :state
        # Town or cho-me.
        sig { returns(T.nilable(String)) }
        attr_accessor :town
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
         }
        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil,
          town: nil
        ); end
      end
      class AddressKanji < Stripe::RequestParams
        # City or ward.
        sig { returns(T.nilable(String)) }
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        attr_accessor :country
        # Block or building number.
        sig { returns(T.nilable(String)) }
        attr_accessor :line1
        # Building details.
        sig { returns(T.nilable(String)) }
        attr_accessor :line2
        # Postal code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code
        # Prefecture.
        sig { returns(T.nilable(String)) }
        attr_accessor :state
        # Town or cho-me.
        sig { returns(T.nilable(String)) }
        attr_accessor :town
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
         }
        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil,
          town: nil
        ); end
      end
      class Dob < Stripe::RequestParams
        # The day of birth, between 1 and 31.
        sig { returns(Integer) }
        attr_accessor :day
        # The month of birth, between 1 and 12.
        sig { returns(Integer) }
        attr_accessor :month
        # The four-digit year of birth.
        sig { returns(Integer) }
        attr_accessor :year
        sig { params(day: Integer, month: Integer, year: Integer).void }
        def initialize(day: nil, month: nil, year: nil); end
      end
      class Documents < Stripe::RequestParams
        class CompanyAuthorization < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :files
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class Passport < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :files
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class Visa < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :files
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        # One or more documents that demonstrate proof that this person is authorized to represent the company.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::CompanyAuthorization))
         }
        attr_accessor :company_authorization
        # One or more documents showing the person's passport page with photo and personal data.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Passport))
         }
        attr_accessor :passport
        # One or more documents showing the person's visa required for living in the country where they are residing.
        sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Visa)) }
        attr_accessor :visa
        sig {
          params(company_authorization: T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::CompanyAuthorization), passport: T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Passport), visa: T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Visa)).void
         }
        def initialize(company_authorization: nil, passport: nil, visa: nil); end
      end
      class RegisteredAddress < Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        attr_accessor :country
        # Address line 1 (e.g., street, PO Box, or company name).
        sig { returns(T.nilable(String)) }
        attr_accessor :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        sig { returns(T.nilable(String)) }
        attr_accessor :line2
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        attr_accessor :postal_code
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        attr_accessor :state
        sig {
          params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
         }
        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil
        ); end
      end
      class Relationship < Stripe::RequestParams
        # Whether the person is the authorizer of the account's representative.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :authorizer
        # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :director
        # Whether the person has significant responsibility to control, manage, or direct the organization.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :executive
        # Whether the person is the legal guardian of the account's representative.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :legal_guardian
        # Whether the person is an owner of the account’s legal entity.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :owner
        # The percent owned by the person of the account's legal entity.
        sig { returns(T.nilable(T.any(String, Float))) }
        attr_accessor :percent_ownership
        # Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :representative
        # The person's title (e.g., CEO, Support Engineer).
        sig { returns(T.nilable(String)) }
        attr_accessor :title
        sig {
          params(authorizer: T.nilable(T::Boolean), director: T.nilable(T::Boolean), executive: T.nilable(T::Boolean), legal_guardian: T.nilable(T::Boolean), owner: T.nilable(T::Boolean), percent_ownership: T.nilable(T.any(String, Float)), representative: T.nilable(T::Boolean), title: T.nilable(String)).void
         }
        def initialize(
          authorizer: nil,
          director: nil,
          executive: nil,
          legal_guardian: nil,
          owner: nil,
          percent_ownership: nil,
          representative: nil,
          title: nil
        ); end
      end
      class UsCfpbData < Stripe::RequestParams
        class EthnicityDetails < Stripe::RequestParams
          # The persons ethnicity
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :ethnicity
          # Please specify your origin, when other is selected.
          sig { returns(T.nilable(String)) }
          attr_accessor :ethnicity_other
          sig {
            params(ethnicity: T.nilable(T::Array[String]), ethnicity_other: T.nilable(String)).void
           }
          def initialize(ethnicity: nil, ethnicity_other: nil); end
        end
        class RaceDetails < Stripe::RequestParams
          # The persons race.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :race
          # Please specify your race, when other is selected.
          sig { returns(T.nilable(String)) }
          attr_accessor :race_other
          sig { params(race: T.nilable(T::Array[String]), race_other: T.nilable(String)).void }
          def initialize(race: nil, race_other: nil); end
        end
        # The persons ethnicity details
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::EthnicityDetails))
         }
        attr_accessor :ethnicity_details
        # The persons race details
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::RaceDetails))
         }
        attr_accessor :race_details
        # The persons self-identified gender
        sig { returns(T.nilable(String)) }
        attr_accessor :self_identified_gender
        sig {
          params(ethnicity_details: T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::EthnicityDetails), race_details: T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::RaceDetails), self_identified_gender: T.nilable(String)).void
         }
        def initialize(ethnicity_details: nil, race_details: nil, self_identified_gender: nil); end
      end
      class Verification < Stripe::RequestParams
        class AdditionalDocument < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          attr_accessor :back
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          attr_accessor :front
          sig { params(back: T.nilable(String), front: T.nilable(String)).void }
          def initialize(back: nil, front: nil); end
        end
        class Document < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          attr_accessor :back
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          attr_accessor :front
          sig { params(back: T.nilable(String), front: T.nilable(String)).void }
          def initialize(back: nil, front: nil); end
        end
        # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::AdditionalDocument))
         }
        attr_accessor :additional_document
        # An identifying document, either a passport or local ID card.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::Document))
         }
        attr_accessor :document
        sig {
          params(additional_document: T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::AdditionalDocument), document: T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::Document)).void
         }
        def initialize(additional_document: nil, document: nil); end
      end
      # Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
      sig {
        returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AdditionalTosAcceptances))
       }
      attr_accessor :additional_tos_acceptances
      # The person's address.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Address)) }
      attr_accessor :address
      # The Kana variation of the person's address (Japan only).
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AddressKana)) }
      attr_accessor :address_kana
      # The Kanji variation of the person's address (Japan only).
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AddressKanji)) }
      attr_accessor :address_kanji
      # The person's date of birth.
      sig { returns(T.nilable(T.any(String, ::Stripe::AccountPersonService::CreateParams::Dob))) }
      attr_accessor :dob
      # Documents that may be submitted to satisfy various informational requests.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents)) }
      attr_accessor :documents
      # The person's email address.
      sig { returns(T.nilable(String)) }
      attr_accessor :email
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The person's first name.
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name
      # The Kana variation of the person's first name (Japan only).
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name_kana
      # The Kanji variation of the person's first name (Japan only).
      sig { returns(T.nilable(String)) }
      attr_accessor :first_name_kanji
      # A list of alternate names or aliases that the person is known by.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      attr_accessor :full_name_aliases
      # The person's gender (International regulations require either "male" or "female").
      sig { returns(T.nilable(String)) }
      attr_accessor :gender
      # The person's ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      sig { returns(T.nilable(String)) }
      attr_accessor :id_number
      # The person's secondary ID number, as appropriate for their country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      sig { returns(T.nilable(String)) }
      attr_accessor :id_number_secondary
      # The person's last name.
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name
      # The Kana variation of the person's last name (Japan only).
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name_kana
      # The Kanji variation of the person's last name (Japan only).
      sig { returns(T.nilable(String)) }
      attr_accessor :last_name_kanji
      # The person's maiden name.
      sig { returns(T.nilable(String)) }
      attr_accessor :maiden_name
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # The country where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), or "XX" if unavailable.
      sig { returns(T.nilable(String)) }
      attr_accessor :nationality
      # A [person token](https://docs.stripe.com/connect/account-tokens), used to securely provide details to the person.
      sig { returns(T.nilable(String)) }
      attr_accessor :person_token
      # The person's phone number.
      sig { returns(T.nilable(String)) }
      attr_accessor :phone
      # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
      sig { returns(T.nilable(String)) }
      attr_accessor :political_exposure
      # The person's registered address.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::RegisteredAddress)) }
      attr_accessor :registered_address
      # The relationship that this person has with the account's legal entity.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Relationship)) }
      attr_accessor :relationship
      # The last four digits of the person's Social Security number (U.S. only).
      sig { returns(T.nilable(String)) }
      attr_accessor :ssn_last_4
      # Demographic data related to the person.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData)) }
      attr_accessor :us_cfpb_data
      # The person's verification status.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Verification)) }
      attr_accessor :verification
      sig {
        params(additional_tos_acceptances: T.nilable(::Stripe::AccountPersonService::CreateParams::AdditionalTosAcceptances), address: T.nilable(::Stripe::AccountPersonService::CreateParams::Address), address_kana: T.nilable(::Stripe::AccountPersonService::CreateParams::AddressKana), address_kanji: T.nilable(::Stripe::AccountPersonService::CreateParams::AddressKanji), dob: T.nilable(T.any(String, ::Stripe::AccountPersonService::CreateParams::Dob)), documents: T.nilable(::Stripe::AccountPersonService::CreateParams::Documents), email: T.nilable(String), expand: T.nilable(T::Array[String]), first_name: T.nilable(String), first_name_kana: T.nilable(String), first_name_kanji: T.nilable(String), full_name_aliases: T.nilable(T.any(String, T::Array[String])), gender: T.nilable(String), id_number: T.nilable(String), id_number_secondary: T.nilable(String), last_name: T.nilable(String), last_name_kana: T.nilable(String), last_name_kanji: T.nilable(String), maiden_name: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), nationality: T.nilable(String), person_token: T.nilable(String), phone: T.nilable(String), political_exposure: T.nilable(String), registered_address: T.nilable(::Stripe::AccountPersonService::CreateParams::RegisteredAddress), relationship: T.nilable(::Stripe::AccountPersonService::CreateParams::Relationship), ssn_last_4: T.nilable(String), us_cfpb_data: T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData), verification: T.nilable(::Stripe::AccountPersonService::CreateParams::Verification)).void
       }
      def initialize(
        additional_tos_acceptances: nil,
        address: nil,
        address_kana: nil,
        address_kanji: nil,
        dob: nil,
        documents: nil,
        email: nil,
        expand: nil,
        first_name: nil,
        first_name_kana: nil,
        first_name_kanji: nil,
        full_name_aliases: nil,
        gender: nil,
        id_number: nil,
        id_number_secondary: nil,
        last_name: nil,
        last_name_kana: nil,
        last_name_kanji: nil,
        maiden_name: nil,
        metadata: nil,
        nationality: nil,
        person_token: nil,
        phone: nil,
        political_exposure: nil,
        registered_address: nil,
        relationship: nil,
        ssn_last_4: nil,
        us_cfpb_data: nil,
        verification: nil
      ); end
    end
    # Creates a new person.
    sig {
      params(account: String, params: T.any(::Stripe::AccountPersonService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Person)
     }
    def create(account, params = {}, opts = {}); end

    # Deletes an existing person's relationship to the account's legal entity. Any person with a relationship for an account can be deleted through the API, except if the person is the account_opener. If your integration is using the executive parameter, you cannot delete the only verified executive on file.
    sig {
      params(account: String, person: String, params: T.any(::Stripe::AccountPersonService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Person)
     }
    def delete(account, person, params = {}, opts = {}); end

    # Returns a list of people associated with the account's legal entity. The people are returned sorted by creation date, with the most recent people appearing first.
    sig {
      params(account: String, params: T.any(::Stripe::AccountPersonService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(account, params = {}, opts = {}); end

    # Retrieves an existing person.
    sig {
      params(account: String, person: String, params: T.any(::Stripe::AccountPersonService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Person)
     }
    def retrieve(account, person, params = {}, opts = {}); end

    # Updates an existing person.
    sig {
      params(account: String, person: String, params: T.any(::Stripe::AccountPersonService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Person)
     }
    def update(account, person, params = {}, opts = {}); end
  end
end