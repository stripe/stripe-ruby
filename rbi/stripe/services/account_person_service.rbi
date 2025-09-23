# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountPersonService < StripeService
    class DeleteParams < Stripe::RequestParams; end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class AdditionalTosAcceptances < Stripe::RequestParams
        class Account < Stripe::RequestParams
          # The Unix timestamp marking when the account representative accepted the service agreement.
          sig { returns(T.nilable(Integer)) }
          def date; end
          sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def date=(_date); end
          # The IP address from which the account representative accepted the service agreement.
          sig { returns(T.nilable(String)) }
          def ip; end
          sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
          def ip=(_ip); end
          # The user agent of the browser from which the account representative accepted the service agreement.
          sig { returns(T.nilable(String)) }
          def user_agent; end
          sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
          def user_agent=(_user_agent); end
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        # Details on the legal guardian's acceptance of the main Stripe service agreement.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AdditionalTosAcceptances::Account))
         }
        def account; end
        sig {
          params(_account: T.nilable(::Stripe::AccountPersonService::UpdateParams::AdditionalTosAcceptances::Account)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AdditionalTosAcceptances::Account))
         }
        def account=(_account); end
        sig {
          params(account: T.nilable(::Stripe::AccountPersonService::UpdateParams::AdditionalTosAcceptances::Account)).void
         }
        def initialize(account: nil); end
      end
      class Address < Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_city); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_country); end
        # Address line 1, such as the street, PO Box, or company name.
        sig { returns(T.nilable(String)) }
        def line1; end
        sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_line1); end
        # Address line 2, such as the apartment, suite, unit, or building.
        sig { returns(T.nilable(String)) }
        def line2; end
        sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_line2); end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_postal_code); end
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        def state; end
        sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_state); end
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
        def city; end
        sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_city); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_country); end
        # Block or building number.
        sig { returns(T.nilable(String)) }
        def line1; end
        sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_line1); end
        # Building details.
        sig { returns(T.nilable(String)) }
        def line2; end
        sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_line2); end
        # Postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_postal_code); end
        # Prefecture.
        sig { returns(T.nilable(String)) }
        def state; end
        sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_state); end
        # Town or cho-me.
        sig { returns(T.nilable(String)) }
        def town; end
        sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
        def town=(_town); end
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
        def city; end
        sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_city); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_country); end
        # Block or building number.
        sig { returns(T.nilable(String)) }
        def line1; end
        sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_line1); end
        # Building details.
        sig { returns(T.nilable(String)) }
        def line2; end
        sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_line2); end
        # Postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_postal_code); end
        # Prefecture.
        sig { returns(T.nilable(String)) }
        def state; end
        sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_state); end
        # Town or cho-me.
        sig { returns(T.nilable(String)) }
        def town; end
        sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
        def town=(_town); end
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
        def day; end
        sig { params(_day: Integer).returns(Integer) }
        def day=(_day); end
        # The month of birth, between 1 and 12.
        sig { returns(Integer) }
        def month; end
        sig { params(_month: Integer).returns(Integer) }
        def month=(_month); end
        # The four-digit year of birth.
        sig { returns(Integer) }
        def year; end
        sig { params(_year: Integer).returns(Integer) }
        def year=(_year); end
        sig { params(day: Integer, month: Integer, year: Integer).void }
        def initialize(day: nil, month: nil, year: nil); end
      end
      class Documents < Stripe::RequestParams
        class CompanyAuthorization < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class Passport < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class Visa < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        # One or more documents that demonstrate proof that this person is authorized to represent the company.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::CompanyAuthorization))
         }
        def company_authorization; end
        sig {
          params(_company_authorization: T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::CompanyAuthorization)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::CompanyAuthorization))
         }
        def company_authorization=(_company_authorization); end
        # One or more documents showing the person's passport page with photo and personal data.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Passport))
         }
        def passport; end
        sig {
          params(_passport: T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Passport)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Passport))
         }
        def passport=(_passport); end
        # One or more documents showing the person's visa required for living in the country where they are residing.
        sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Visa)) }
        def visa; end
        sig {
          params(_visa: T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Visa)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Visa))
         }
        def visa=(_visa); end
        sig {
          params(company_authorization: T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::CompanyAuthorization), passport: T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Passport), visa: T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents::Visa)).void
         }
        def initialize(company_authorization: nil, passport: nil, visa: nil); end
      end
      class RegisteredAddress < Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_city); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_country); end
        # Address line 1, such as the street, PO Box, or company name.
        sig { returns(T.nilable(String)) }
        def line1; end
        sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_line1); end
        # Address line 2, such as the apartment, suite, unit, or building.
        sig { returns(T.nilable(String)) }
        def line2; end
        sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_line2); end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_postal_code); end
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        def state; end
        sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_state); end
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
        def authorizer; end
        sig { params(_authorizer: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def authorizer=(_authorizer); end
        # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
        sig { returns(T.nilable(T::Boolean)) }
        def director; end
        sig { params(_director: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def director=(_director); end
        # Whether the person has significant responsibility to control, manage, or direct the organization.
        sig { returns(T.nilable(T::Boolean)) }
        def executive; end
        sig { params(_executive: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def executive=(_executive); end
        # Whether the person is the legal guardian of the account's representative.
        sig { returns(T.nilable(T::Boolean)) }
        def legal_guardian; end
        sig { params(_legal_guardian: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def legal_guardian=(_legal_guardian); end
        # Whether the person is an owner of the account’s legal entity.
        sig { returns(T.nilable(T::Boolean)) }
        def owner; end
        sig { params(_owner: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def owner=(_owner); end
        # The percent owned by the person of the account's legal entity.
        sig { returns(T.nilable(T.any(String, Float))) }
        def percent_ownership; end
        sig {
          params(_percent_ownership: T.nilable(T.any(String, Float))).returns(T.nilable(T.any(String, Float)))
         }
        def percent_ownership=(_percent_ownership); end
        # Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
        sig { returns(T.nilable(T::Boolean)) }
        def representative; end
        sig { params(_representative: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def representative=(_representative); end
        # The person's title (e.g., CEO, Support Engineer).
        sig { returns(T.nilable(String)) }
        def title; end
        sig { params(_title: T.nilable(String)).returns(T.nilable(String)) }
        def title=(_title); end
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
          def ethnicity; end
          sig {
            params(_ethnicity: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def ethnicity=(_ethnicity); end
          # Please specify your origin, when other is selected.
          sig { returns(T.nilable(String)) }
          def ethnicity_other; end
          sig { params(_ethnicity_other: T.nilable(String)).returns(T.nilable(String)) }
          def ethnicity_other=(_ethnicity_other); end
          sig {
            params(ethnicity: T.nilable(T::Array[String]), ethnicity_other: T.nilable(String)).void
           }
          def initialize(ethnicity: nil, ethnicity_other: nil); end
        end
        class RaceDetails < Stripe::RequestParams
          # The persons race.
          sig { returns(T.nilable(T::Array[String])) }
          def race; end
          sig { params(_race: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def race=(_race); end
          # Please specify your race, when other is selected.
          sig { returns(T.nilable(String)) }
          def race_other; end
          sig { params(_race_other: T.nilable(String)).returns(T.nilable(String)) }
          def race_other=(_race_other); end
          sig { params(race: T.nilable(T::Array[String]), race_other: T.nilable(String)).void }
          def initialize(race: nil, race_other: nil); end
        end
        # The persons ethnicity details
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::EthnicityDetails))
         }
        def ethnicity_details; end
        sig {
          params(_ethnicity_details: T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::EthnicityDetails)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::EthnicityDetails))
         }
        def ethnicity_details=(_ethnicity_details); end
        # The persons race details
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::RaceDetails))
         }
        def race_details; end
        sig {
          params(_race_details: T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::RaceDetails)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::RaceDetails))
         }
        def race_details=(_race_details); end
        # The persons self-identified gender
        sig { returns(T.nilable(String)) }
        def self_identified_gender; end
        sig { params(_self_identified_gender: T.nilable(String)).returns(T.nilable(String)) }
        def self_identified_gender=(_self_identified_gender); end
        sig {
          params(ethnicity_details: T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::EthnicityDetails), race_details: T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData::RaceDetails), self_identified_gender: T.nilable(String)).void
         }
        def initialize(ethnicity_details: nil, race_details: nil, self_identified_gender: nil); end
      end
      class Verification < Stripe::RequestParams
        class AdditionalDocument < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          def back; end
          sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
          def back=(_back); end
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          def front; end
          sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
          def front=(_front); end
          sig { params(back: T.nilable(String), front: T.nilable(String)).void }
          def initialize(back: nil, front: nil); end
        end
        class Document < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          def back; end
          sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
          def back=(_back); end
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          def front; end
          sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
          def front=(_front); end
          sig { params(back: T.nilable(String), front: T.nilable(String)).void }
          def initialize(back: nil, front: nil); end
        end
        # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::AdditionalDocument))
         }
        def additional_document; end
        sig {
          params(_additional_document: T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::AdditionalDocument)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::AdditionalDocument))
         }
        def additional_document=(_additional_document); end
        # An identifying document, either a passport or local ID card.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::Document))
         }
        def document; end
        sig {
          params(_document: T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::Document)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::Document))
         }
        def document=(_document); end
        sig {
          params(additional_document: T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::AdditionalDocument), document: T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification::Document)).void
         }
        def initialize(additional_document: nil, document: nil); end
      end
      # Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
      sig {
        returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AdditionalTosAcceptances))
       }
      def additional_tos_acceptances; end
      sig {
        params(_additional_tos_acceptances: T.nilable(::Stripe::AccountPersonService::UpdateParams::AdditionalTosAcceptances)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AdditionalTosAcceptances))
       }
      def additional_tos_acceptances=(_additional_tos_acceptances); end
      # The person's address.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Address)) }
      def address; end
      sig {
        params(_address: T.nilable(::Stripe::AccountPersonService::UpdateParams::Address)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Address))
       }
      def address=(_address); end
      # The Kana variation of the person's address (Japan only).
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AddressKana)) }
      def address_kana; end
      sig {
        params(_address_kana: T.nilable(::Stripe::AccountPersonService::UpdateParams::AddressKana)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AddressKana))
       }
      def address_kana=(_address_kana); end
      # The Kanji variation of the person's address (Japan only).
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AddressKanji)) }
      def address_kanji; end
      sig {
        params(_address_kanji: T.nilable(::Stripe::AccountPersonService::UpdateParams::AddressKanji)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::AddressKanji))
       }
      def address_kanji=(_address_kanji); end
      # The person's date of birth.
      sig { returns(T.nilable(T.any(String, ::Stripe::AccountPersonService::UpdateParams::Dob))) }
      def dob; end
      sig {
        params(_dob: T.nilable(T.any(String, ::Stripe::AccountPersonService::UpdateParams::Dob))).returns(T.nilable(T.any(String, ::Stripe::AccountPersonService::UpdateParams::Dob)))
       }
      def dob=(_dob); end
      # Documents that may be submitted to satisfy various informational requests.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents)) }
      def documents; end
      sig {
        params(_documents: T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Documents))
       }
      def documents=(_documents); end
      # The person's email address.
      sig { returns(T.nilable(String)) }
      def email; end
      sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
      def email=(_email); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The person's first name.
      sig { returns(T.nilable(String)) }
      def first_name; end
      sig { params(_first_name: T.nilable(String)).returns(T.nilable(String)) }
      def first_name=(_first_name); end
      # The Kana variation of the person's first name (Japan only).
      sig { returns(T.nilable(String)) }
      def first_name_kana; end
      sig { params(_first_name_kana: T.nilable(String)).returns(T.nilable(String)) }
      def first_name_kana=(_first_name_kana); end
      # The Kanji variation of the person's first name (Japan only).
      sig { returns(T.nilable(String)) }
      def first_name_kanji; end
      sig { params(_first_name_kanji: T.nilable(String)).returns(T.nilable(String)) }
      def first_name_kanji=(_first_name_kanji); end
      # A list of alternate names or aliases that the person is known by.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      def full_name_aliases; end
      sig {
        params(_full_name_aliases: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
       }
      def full_name_aliases=(_full_name_aliases); end
      # The person's gender (International regulations require either "male" or "female").
      sig { returns(T.nilable(String)) }
      def gender; end
      sig { params(_gender: T.nilable(String)).returns(T.nilable(String)) }
      def gender=(_gender); end
      # The person's ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      sig { returns(T.nilable(String)) }
      def id_number; end
      sig { params(_id_number: T.nilable(String)).returns(T.nilable(String)) }
      def id_number=(_id_number); end
      # The person's secondary ID number, as appropriate for their country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      sig { returns(T.nilable(String)) }
      def id_number_secondary; end
      sig { params(_id_number_secondary: T.nilable(String)).returns(T.nilable(String)) }
      def id_number_secondary=(_id_number_secondary); end
      # The person's last name.
      sig { returns(T.nilable(String)) }
      def last_name; end
      sig { params(_last_name: T.nilable(String)).returns(T.nilable(String)) }
      def last_name=(_last_name); end
      # The Kana variation of the person's last name (Japan only).
      sig { returns(T.nilable(String)) }
      def last_name_kana; end
      sig { params(_last_name_kana: T.nilable(String)).returns(T.nilable(String)) }
      def last_name_kana=(_last_name_kana); end
      # The Kanji variation of the person's last name (Japan only).
      sig { returns(T.nilable(String)) }
      def last_name_kanji; end
      sig { params(_last_name_kanji: T.nilable(String)).returns(T.nilable(String)) }
      def last_name_kanji=(_last_name_kanji); end
      # The person's maiden name.
      sig { returns(T.nilable(String)) }
      def maiden_name; end
      sig { params(_maiden_name: T.nilable(String)).returns(T.nilable(String)) }
      def maiden_name=(_maiden_name); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # The country where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), or "XX" if unavailable.
      sig { returns(T.nilable(String)) }
      def nationality; end
      sig { params(_nationality: T.nilable(String)).returns(T.nilable(String)) }
      def nationality=(_nationality); end
      # A [person token](https://docs.stripe.com/connect/account-tokens), used to securely provide details to the person.
      sig { returns(T.nilable(String)) }
      def person_token; end
      sig { params(_person_token: T.nilable(String)).returns(T.nilable(String)) }
      def person_token=(_person_token); end
      # The person's phone number.
      sig { returns(T.nilable(String)) }
      def phone; end
      sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
      def phone=(_phone); end
      # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
      sig { returns(T.nilable(String)) }
      def political_exposure; end
      sig { params(_political_exposure: T.nilable(String)).returns(T.nilable(String)) }
      def political_exposure=(_political_exposure); end
      # The person's registered address.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::RegisteredAddress)) }
      def registered_address; end
      sig {
        params(_registered_address: T.nilable(::Stripe::AccountPersonService::UpdateParams::RegisteredAddress)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::RegisteredAddress))
       }
      def registered_address=(_registered_address); end
      # The relationship that this person has with the account's legal entity.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Relationship)) }
      def relationship; end
      sig {
        params(_relationship: T.nilable(::Stripe::AccountPersonService::UpdateParams::Relationship)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Relationship))
       }
      def relationship=(_relationship); end
      # The last four digits of the person's Social Security number (U.S. only).
      sig { returns(T.nilable(String)) }
      def ssn_last_4; end
      sig { params(_ssn_last_4: T.nilable(String)).returns(T.nilable(String)) }
      def ssn_last_4=(_ssn_last_4); end
      # Demographic data related to the person.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData)) }
      def us_cfpb_data; end
      sig {
        params(_us_cfpb_data: T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::UsCfpbData))
       }
      def us_cfpb_data=(_us_cfpb_data); end
      # The person's verification status.
      sig { returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification)) }
      def verification; end
      sig {
        params(_verification: T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification)).returns(T.nilable(::Stripe::AccountPersonService::UpdateParams::Verification))
       }
      def verification=(_verification); end
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
        def authorizer; end
        sig { params(_authorizer: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def authorizer=(_authorizer); end
        # A filter on the list of people returned based on whether these people are directors of the account's company.
        sig { returns(T.nilable(T::Boolean)) }
        def director; end
        sig { params(_director: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def director=(_director); end
        # A filter on the list of people returned based on whether these people are executives of the account's company.
        sig { returns(T.nilable(T::Boolean)) }
        def executive; end
        sig { params(_executive: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def executive=(_executive); end
        # A filter on the list of people returned based on whether these people are legal guardians of the account's representative.
        sig { returns(T.nilable(T::Boolean)) }
        def legal_guardian; end
        sig { params(_legal_guardian: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def legal_guardian=(_legal_guardian); end
        # A filter on the list of people returned based on whether these people are owners of the account's company.
        sig { returns(T.nilable(T::Boolean)) }
        def owner; end
        sig { params(_owner: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def owner=(_owner); end
        # A filter on the list of people returned based on whether these people are the representative of the account's company.
        sig { returns(T.nilable(T::Boolean)) }
        def representative; end
        sig { params(_representative: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def representative=(_representative); end
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
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # Filters on the list of people returned based on the person's relationship to the account's company.
      sig { returns(T.nilable(::Stripe::AccountPersonService::ListParams::Relationship)) }
      def relationship; end
      sig {
        params(_relationship: T.nilable(::Stripe::AccountPersonService::ListParams::Relationship)).returns(T.nilable(::Stripe::AccountPersonService::ListParams::Relationship))
       }
      def relationship=(_relationship); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
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
          def date; end
          sig { params(_date: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def date=(_date); end
          # The IP address from which the account representative accepted the service agreement.
          sig { returns(T.nilable(String)) }
          def ip; end
          sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
          def ip=(_ip); end
          # The user agent of the browser from which the account representative accepted the service agreement.
          sig { returns(T.nilable(String)) }
          def user_agent; end
          sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
          def user_agent=(_user_agent); end
          sig {
            params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
           }
          def initialize(date: nil, ip: nil, user_agent: nil); end
        end
        # Details on the legal guardian's acceptance of the main Stripe service agreement.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AdditionalTosAcceptances::Account))
         }
        def account; end
        sig {
          params(_account: T.nilable(::Stripe::AccountPersonService::CreateParams::AdditionalTosAcceptances::Account)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AdditionalTosAcceptances::Account))
         }
        def account=(_account); end
        sig {
          params(account: T.nilable(::Stripe::AccountPersonService::CreateParams::AdditionalTosAcceptances::Account)).void
         }
        def initialize(account: nil); end
      end
      class Address < Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_city); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_country); end
        # Address line 1, such as the street, PO Box, or company name.
        sig { returns(T.nilable(String)) }
        def line1; end
        sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_line1); end
        # Address line 2, such as the apartment, suite, unit, or building.
        sig { returns(T.nilable(String)) }
        def line2; end
        sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_line2); end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_postal_code); end
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        def state; end
        sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_state); end
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
        def city; end
        sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_city); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_country); end
        # Block or building number.
        sig { returns(T.nilable(String)) }
        def line1; end
        sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_line1); end
        # Building details.
        sig { returns(T.nilable(String)) }
        def line2; end
        sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_line2); end
        # Postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_postal_code); end
        # Prefecture.
        sig { returns(T.nilable(String)) }
        def state; end
        sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_state); end
        # Town or cho-me.
        sig { returns(T.nilable(String)) }
        def town; end
        sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
        def town=(_town); end
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
        def city; end
        sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_city); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_country); end
        # Block or building number.
        sig { returns(T.nilable(String)) }
        def line1; end
        sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_line1); end
        # Building details.
        sig { returns(T.nilable(String)) }
        def line2; end
        sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_line2); end
        # Postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_postal_code); end
        # Prefecture.
        sig { returns(T.nilable(String)) }
        def state; end
        sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_state); end
        # Town or cho-me.
        sig { returns(T.nilable(String)) }
        def town; end
        sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
        def town=(_town); end
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
        def day; end
        sig { params(_day: Integer).returns(Integer) }
        def day=(_day); end
        # The month of birth, between 1 and 12.
        sig { returns(Integer) }
        def month; end
        sig { params(_month: Integer).returns(Integer) }
        def month=(_month); end
        # The four-digit year of birth.
        sig { returns(Integer) }
        def year; end
        sig { params(_year: Integer).returns(Integer) }
        def year=(_year); end
        sig { params(day: Integer, month: Integer, year: Integer).void }
        def initialize(day: nil, month: nil, year: nil); end
      end
      class Documents < Stripe::RequestParams
        class CompanyAuthorization < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class Passport < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        class Visa < Stripe::RequestParams
          # One or more document ids returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `account_requirement`.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          sig { params(_files: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def files=(_files); end
          sig { params(files: T.nilable(T::Array[String])).void }
          def initialize(files: nil); end
        end
        # One or more documents that demonstrate proof that this person is authorized to represent the company.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::CompanyAuthorization))
         }
        def company_authorization; end
        sig {
          params(_company_authorization: T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::CompanyAuthorization)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::CompanyAuthorization))
         }
        def company_authorization=(_company_authorization); end
        # One or more documents showing the person's passport page with photo and personal data.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Passport))
         }
        def passport; end
        sig {
          params(_passport: T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Passport)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Passport))
         }
        def passport=(_passport); end
        # One or more documents showing the person's visa required for living in the country where they are residing.
        sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Visa)) }
        def visa; end
        sig {
          params(_visa: T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Visa)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Visa))
         }
        def visa=(_visa); end
        sig {
          params(company_authorization: T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::CompanyAuthorization), passport: T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Passport), visa: T.nilable(::Stripe::AccountPersonService::CreateParams::Documents::Visa)).void
         }
        def initialize(company_authorization: nil, passport: nil, visa: nil); end
      end
      class RegisteredAddress < Stripe::RequestParams
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
        def city=(_city); end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
        def country=(_country); end
        # Address line 1, such as the street, PO Box, or company name.
        sig { returns(T.nilable(String)) }
        def line1; end
        sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
        def line1=(_line1); end
        # Address line 2, such as the apartment, suite, unit, or building.
        sig { returns(T.nilable(String)) }
        def line2; end
        sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
        def line2=(_line2); end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
        def postal_code=(_postal_code); end
        # State, county, province, or region.
        sig { returns(T.nilable(String)) }
        def state; end
        sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
        def state=(_state); end
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
        def authorizer; end
        sig { params(_authorizer: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def authorizer=(_authorizer); end
        # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
        sig { returns(T.nilable(T::Boolean)) }
        def director; end
        sig { params(_director: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def director=(_director); end
        # Whether the person has significant responsibility to control, manage, or direct the organization.
        sig { returns(T.nilable(T::Boolean)) }
        def executive; end
        sig { params(_executive: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def executive=(_executive); end
        # Whether the person is the legal guardian of the account's representative.
        sig { returns(T.nilable(T::Boolean)) }
        def legal_guardian; end
        sig { params(_legal_guardian: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def legal_guardian=(_legal_guardian); end
        # Whether the person is an owner of the account’s legal entity.
        sig { returns(T.nilable(T::Boolean)) }
        def owner; end
        sig { params(_owner: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def owner=(_owner); end
        # The percent owned by the person of the account's legal entity.
        sig { returns(T.nilable(T.any(String, Float))) }
        def percent_ownership; end
        sig {
          params(_percent_ownership: T.nilable(T.any(String, Float))).returns(T.nilable(T.any(String, Float)))
         }
        def percent_ownership=(_percent_ownership); end
        # Whether the person is authorized as the primary representative of the account. This is the person nominated by the business to provide information about themselves, and general information about the account. There can only be one representative at any given time. At the time the account is created, this person should be set to the person responsible for opening the account.
        sig { returns(T.nilable(T::Boolean)) }
        def representative; end
        sig { params(_representative: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def representative=(_representative); end
        # The person's title (e.g., CEO, Support Engineer).
        sig { returns(T.nilable(String)) }
        def title; end
        sig { params(_title: T.nilable(String)).returns(T.nilable(String)) }
        def title=(_title); end
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
          def ethnicity; end
          sig {
            params(_ethnicity: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def ethnicity=(_ethnicity); end
          # Please specify your origin, when other is selected.
          sig { returns(T.nilable(String)) }
          def ethnicity_other; end
          sig { params(_ethnicity_other: T.nilable(String)).returns(T.nilable(String)) }
          def ethnicity_other=(_ethnicity_other); end
          sig {
            params(ethnicity: T.nilable(T::Array[String]), ethnicity_other: T.nilable(String)).void
           }
          def initialize(ethnicity: nil, ethnicity_other: nil); end
        end
        class RaceDetails < Stripe::RequestParams
          # The persons race.
          sig { returns(T.nilable(T::Array[String])) }
          def race; end
          sig { params(_race: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def race=(_race); end
          # Please specify your race, when other is selected.
          sig { returns(T.nilable(String)) }
          def race_other; end
          sig { params(_race_other: T.nilable(String)).returns(T.nilable(String)) }
          def race_other=(_race_other); end
          sig { params(race: T.nilable(T::Array[String]), race_other: T.nilable(String)).void }
          def initialize(race: nil, race_other: nil); end
        end
        # The persons ethnicity details
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::EthnicityDetails))
         }
        def ethnicity_details; end
        sig {
          params(_ethnicity_details: T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::EthnicityDetails)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::EthnicityDetails))
         }
        def ethnicity_details=(_ethnicity_details); end
        # The persons race details
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::RaceDetails))
         }
        def race_details; end
        sig {
          params(_race_details: T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::RaceDetails)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::RaceDetails))
         }
        def race_details=(_race_details); end
        # The persons self-identified gender
        sig { returns(T.nilable(String)) }
        def self_identified_gender; end
        sig { params(_self_identified_gender: T.nilable(String)).returns(T.nilable(String)) }
        def self_identified_gender=(_self_identified_gender); end
        sig {
          params(ethnicity_details: T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::EthnicityDetails), race_details: T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData::RaceDetails), self_identified_gender: T.nilable(String)).void
         }
        def initialize(ethnicity_details: nil, race_details: nil, self_identified_gender: nil); end
      end
      class Verification < Stripe::RequestParams
        class AdditionalDocument < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          def back; end
          sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
          def back=(_back); end
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          def front; end
          sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
          def front=(_front); end
          sig { params(back: T.nilable(String), front: T.nilable(String)).void }
          def initialize(back: nil, front: nil); end
        end
        class Document < Stripe::RequestParams
          # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          def back; end
          sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
          def back=(_back); end
          # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
          sig { returns(T.nilable(String)) }
          def front; end
          sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
          def front=(_front); end
          sig { params(back: T.nilable(String), front: T.nilable(String)).void }
          def initialize(back: nil, front: nil); end
        end
        # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::AdditionalDocument))
         }
        def additional_document; end
        sig {
          params(_additional_document: T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::AdditionalDocument)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::AdditionalDocument))
         }
        def additional_document=(_additional_document); end
        # An identifying document, either a passport or local ID card.
        sig {
          returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::Document))
         }
        def document; end
        sig {
          params(_document: T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::Document)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::Document))
         }
        def document=(_document); end
        sig {
          params(additional_document: T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::AdditionalDocument), document: T.nilable(::Stripe::AccountPersonService::CreateParams::Verification::Document)).void
         }
        def initialize(additional_document: nil, document: nil); end
      end
      # Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
      sig {
        returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AdditionalTosAcceptances))
       }
      def additional_tos_acceptances; end
      sig {
        params(_additional_tos_acceptances: T.nilable(::Stripe::AccountPersonService::CreateParams::AdditionalTosAcceptances)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AdditionalTosAcceptances))
       }
      def additional_tos_acceptances=(_additional_tos_acceptances); end
      # The person's address.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Address)) }
      def address; end
      sig {
        params(_address: T.nilable(::Stripe::AccountPersonService::CreateParams::Address)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Address))
       }
      def address=(_address); end
      # The Kana variation of the person's address (Japan only).
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AddressKana)) }
      def address_kana; end
      sig {
        params(_address_kana: T.nilable(::Stripe::AccountPersonService::CreateParams::AddressKana)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AddressKana))
       }
      def address_kana=(_address_kana); end
      # The Kanji variation of the person's address (Japan only).
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AddressKanji)) }
      def address_kanji; end
      sig {
        params(_address_kanji: T.nilable(::Stripe::AccountPersonService::CreateParams::AddressKanji)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::AddressKanji))
       }
      def address_kanji=(_address_kanji); end
      # The person's date of birth.
      sig { returns(T.nilable(T.any(String, ::Stripe::AccountPersonService::CreateParams::Dob))) }
      def dob; end
      sig {
        params(_dob: T.nilable(T.any(String, ::Stripe::AccountPersonService::CreateParams::Dob))).returns(T.nilable(T.any(String, ::Stripe::AccountPersonService::CreateParams::Dob)))
       }
      def dob=(_dob); end
      # Documents that may be submitted to satisfy various informational requests.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents)) }
      def documents; end
      sig {
        params(_documents: T.nilable(::Stripe::AccountPersonService::CreateParams::Documents)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Documents))
       }
      def documents=(_documents); end
      # The person's email address.
      sig { returns(T.nilable(String)) }
      def email; end
      sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
      def email=(_email); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The person's first name.
      sig { returns(T.nilable(String)) }
      def first_name; end
      sig { params(_first_name: T.nilable(String)).returns(T.nilable(String)) }
      def first_name=(_first_name); end
      # The Kana variation of the person's first name (Japan only).
      sig { returns(T.nilable(String)) }
      def first_name_kana; end
      sig { params(_first_name_kana: T.nilable(String)).returns(T.nilable(String)) }
      def first_name_kana=(_first_name_kana); end
      # The Kanji variation of the person's first name (Japan only).
      sig { returns(T.nilable(String)) }
      def first_name_kanji; end
      sig { params(_first_name_kanji: T.nilable(String)).returns(T.nilable(String)) }
      def first_name_kanji=(_first_name_kanji); end
      # A list of alternate names or aliases that the person is known by.
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      def full_name_aliases; end
      sig {
        params(_full_name_aliases: T.nilable(T.any(String, T::Array[String]))).returns(T.nilable(T.any(String, T::Array[String])))
       }
      def full_name_aliases=(_full_name_aliases); end
      # The person's gender (International regulations require either "male" or "female").
      sig { returns(T.nilable(String)) }
      def gender; end
      sig { params(_gender: T.nilable(String)).returns(T.nilable(String)) }
      def gender=(_gender); end
      # The person's ID number, as appropriate for their country. For example, a social security number in the U.S., social insurance number in Canada, etc. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      sig { returns(T.nilable(String)) }
      def id_number; end
      sig { params(_id_number: T.nilable(String)).returns(T.nilable(String)) }
      def id_number=(_id_number); end
      # The person's secondary ID number, as appropriate for their country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token provided by Stripe.js](https://docs.stripe.com/js/tokens/create_token?type=pii).
      sig { returns(T.nilable(String)) }
      def id_number_secondary; end
      sig { params(_id_number_secondary: T.nilable(String)).returns(T.nilable(String)) }
      def id_number_secondary=(_id_number_secondary); end
      # The person's last name.
      sig { returns(T.nilable(String)) }
      def last_name; end
      sig { params(_last_name: T.nilable(String)).returns(T.nilable(String)) }
      def last_name=(_last_name); end
      # The Kana variation of the person's last name (Japan only).
      sig { returns(T.nilable(String)) }
      def last_name_kana; end
      sig { params(_last_name_kana: T.nilable(String)).returns(T.nilable(String)) }
      def last_name_kana=(_last_name_kana); end
      # The Kanji variation of the person's last name (Japan only).
      sig { returns(T.nilable(String)) }
      def last_name_kanji; end
      sig { params(_last_name_kanji: T.nilable(String)).returns(T.nilable(String)) }
      def last_name_kanji=(_last_name_kanji); end
      # The person's maiden name.
      sig { returns(T.nilable(String)) }
      def maiden_name; end
      sig { params(_maiden_name: T.nilable(String)).returns(T.nilable(String)) }
      def maiden_name=(_maiden_name); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # The country where the person is a national. Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)), or "XX" if unavailable.
      sig { returns(T.nilable(String)) }
      def nationality; end
      sig { params(_nationality: T.nilable(String)).returns(T.nilable(String)) }
      def nationality=(_nationality); end
      # A [person token](https://docs.stripe.com/connect/account-tokens), used to securely provide details to the person.
      sig { returns(T.nilable(String)) }
      def person_token; end
      sig { params(_person_token: T.nilable(String)).returns(T.nilable(String)) }
      def person_token=(_person_token); end
      # The person's phone number.
      sig { returns(T.nilable(String)) }
      def phone; end
      sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
      def phone=(_phone); end
      # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
      sig { returns(T.nilable(String)) }
      def political_exposure; end
      sig { params(_political_exposure: T.nilable(String)).returns(T.nilable(String)) }
      def political_exposure=(_political_exposure); end
      # The person's registered address.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::RegisteredAddress)) }
      def registered_address; end
      sig {
        params(_registered_address: T.nilable(::Stripe::AccountPersonService::CreateParams::RegisteredAddress)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::RegisteredAddress))
       }
      def registered_address=(_registered_address); end
      # The relationship that this person has with the account's legal entity.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Relationship)) }
      def relationship; end
      sig {
        params(_relationship: T.nilable(::Stripe::AccountPersonService::CreateParams::Relationship)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Relationship))
       }
      def relationship=(_relationship); end
      # The last four digits of the person's Social Security number (U.S. only).
      sig { returns(T.nilable(String)) }
      def ssn_last_4; end
      sig { params(_ssn_last_4: T.nilable(String)).returns(T.nilable(String)) }
      def ssn_last_4=(_ssn_last_4); end
      # Demographic data related to the person.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData)) }
      def us_cfpb_data; end
      sig {
        params(_us_cfpb_data: T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::UsCfpbData))
       }
      def us_cfpb_data=(_us_cfpb_data); end
      # The person's verification status.
      sig { returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Verification)) }
      def verification; end
      sig {
        params(_verification: T.nilable(::Stripe::AccountPersonService::CreateParams::Verification)).returns(T.nilable(::Stripe::AccountPersonService::CreateParams::Verification))
       }
      def verification=(_verification); end
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