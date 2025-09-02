# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Accounts
        class PersonService < StripeService
          class ListParams < Stripe::RequestParams
            # The upper limit on the number of accounts returned by the List Account request.
            sig { returns(T.nilable(Integer)) }
            def limit; end
            sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def limit=(_limit); end
            sig { params(limit: T.nilable(Integer)).void }
            def initialize(limit: nil); end
          end
          class CreateParams < Stripe::RequestParams
            class AdditionalAddress < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              def city; end
              sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
              def city=(_city); end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(String) }
              def country; end
              sig { params(_country: String).returns(String) }
              def country=(_country); end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
              def line1=(_line1); end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
              def line2=(_line2); end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
              def postal_code=(_postal_code); end
              # Purpose of additional address.
              sig { returns(String) }
              def purpose; end
              sig { params(_purpose: String).returns(String) }
              def purpose=(_purpose); end
              # State, county, province, or region.
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
                params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), purpose: String, state: T.nilable(String), town: T.nilable(String)).void
               }
              def initialize(
                city: nil,
                country: nil,
                line1: nil,
                line2: nil,
                postal_code: nil,
                purpose: nil,
                state: nil,
                town: nil
              ); end
            end
            class AdditionalName < Stripe::RequestParams
              # The person's full name.
              sig { returns(T.nilable(String)) }
              def full_name; end
              sig { params(_full_name: T.nilable(String)).returns(T.nilable(String)) }
              def full_name=(_full_name); end
              # The person's first or given name.
              sig { returns(T.nilable(String)) }
              def given_name; end
              sig { params(_given_name: T.nilable(String)).returns(T.nilable(String)) }
              def given_name=(_given_name); end
              # The purpose or type of the additional name.
              sig { returns(String) }
              def purpose; end
              sig { params(_purpose: String).returns(String) }
              def purpose=(_purpose); end
              # The person's last or family name.
              sig { returns(T.nilable(String)) }
              def surname; end
              sig { params(_surname: T.nilable(String)).returns(T.nilable(String)) }
              def surname=(_surname); end
              sig {
                params(full_name: T.nilable(String), given_name: T.nilable(String), purpose: String, surname: T.nilable(String)).void
               }
              def initialize(full_name: nil, given_name: nil, purpose: nil, surname: nil); end
            end
            class AdditionalTermsOfService < Stripe::RequestParams
              class Account < Stripe::RequestParams
                # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                sig { returns(String) }
                def date; end
                sig { params(_date: String).returns(String) }
                def date=(_date); end
                # The IP address from which the Account's representative accepted the terms of service.
                sig { returns(String) }
                def ip; end
                sig { params(_ip: String).returns(String) }
                def ip=(_ip); end
                # The user agent of the browser from which the Account's representative accepted the terms of service.
                sig { returns(T.nilable(String)) }
                def user_agent; end
                sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
                def user_agent=(_user_agent); end
                sig { params(date: String, ip: String, user_agent: T.nilable(String)).void }
                def initialize(date: nil, ip: nil, user_agent: nil); end
              end
              # Stripe terms of service agreement.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalTermsOfService::Account))
               }
              def account; end
              sig {
                params(_account: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalTermsOfService::Account)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalTermsOfService::Account))
               }
              def account=(_account); end
              sig {
                params(account: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalTermsOfService::Account)).void
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
              sig { returns(String) }
              def country; end
              sig { params(_country: String).returns(String) }
              def country=(_country); end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
              def line1=(_line1); end
              # Address line 2 (e.g., apartment, suite, unit, or building).
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
              # Town or cho-me.
              sig { returns(T.nilable(String)) }
              def town; end
              sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
              def town=(_town); end
              sig {
                params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
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
            class DateOfBirth < Stripe::RequestParams
              # The day of birth.
              sig { returns(Integer) }
              def day; end
              sig { params(_day: Integer).returns(Integer) }
              def day=(_day); end
              # The month of birth.
              sig { returns(Integer) }
              def month; end
              sig { params(_month: Integer).returns(Integer) }
              def month=(_month); end
              # The year of birth.
              sig { returns(Integer) }
              def year; end
              sig { params(_year: Integer).returns(Integer) }
              def year=(_year); end
              sig { params(day: Integer, month: Integer, year: Integer).void }
              def initialize(day: nil, month: nil, year: nil); end
            end
            class Documents < Stripe::RequestParams
              class CompanyAuthorization < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                def files; end
                sig { params(_files: T::Array[String]).returns(T::Array[String]) }
                def files=(_files); end
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              class Passport < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                def files; end
                sig { params(_files: T::Array[String]).returns(T::Array[String]) }
                def files=(_files); end
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              class PrimaryVerification < Stripe::RequestParams
                class FrontBack < Stripe::RequestParams
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(String)) }
                  def back; end
                  sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
                  def back=(_back); end
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(String) }
                  def front; end
                  sig { params(_front: String).returns(String) }
                  def front=(_front); end
                  sig { params(back: T.nilable(String), front: String).void }
                  def initialize(back: nil, front: nil); end
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                sig {
                  returns(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::PrimaryVerification::FrontBack)
                 }
                def front_back; end
                sig {
                  params(_front_back: ::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::PrimaryVerification::FrontBack).returns(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::PrimaryVerification::FrontBack)
                 }
                def front_back=(_front_back); end
                # The format of the verification document. Currently supports `front_back` only.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(front_back: ::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::PrimaryVerification::FrontBack, type: String).void
                 }
                def initialize(front_back: nil, type: nil); end
              end
              class SecondaryVerification < Stripe::RequestParams
                class FrontBack < Stripe::RequestParams
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(String)) }
                  def back; end
                  sig { params(_back: T.nilable(String)).returns(T.nilable(String)) }
                  def back=(_back); end
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(String) }
                  def front; end
                  sig { params(_front: String).returns(String) }
                  def front=(_front); end
                  sig { params(back: T.nilable(String), front: String).void }
                  def initialize(back: nil, front: nil); end
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                sig {
                  returns(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::SecondaryVerification::FrontBack)
                 }
                def front_back; end
                sig {
                  params(_front_back: ::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::SecondaryVerification::FrontBack).returns(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::SecondaryVerification::FrontBack)
                 }
                def front_back=(_front_back); end
                # The format of the verification document. Currently supports `front_back` only.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(front_back: ::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::SecondaryVerification::FrontBack, type: String).void
                 }
                def initialize(front_back: nil, type: nil); end
              end
              class Visa < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                def files; end
                sig { params(_files: T::Array[String]).returns(T::Array[String]) }
                def files=(_files); end
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              # One or more documents that demonstrate proof that this person is authorized to represent the company.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::CompanyAuthorization))
               }
              def company_authorization; end
              sig {
                params(_company_authorization: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::CompanyAuthorization)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::CompanyAuthorization))
               }
              def company_authorization=(_company_authorization); end
              # One or more documents showing the person’s passport page with photo and personal data.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::Passport))
               }
              def passport; end
              sig {
                params(_passport: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::Passport)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::Passport))
               }
              def passport=(_passport); end
              # An identifying document showing the person's name, either a passport or local ID card.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::PrimaryVerification))
               }
              def primary_verification; end
              sig {
                params(_primary_verification: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::PrimaryVerification)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::PrimaryVerification))
               }
              def primary_verification=(_primary_verification); end
              # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::SecondaryVerification))
               }
              def secondary_verification; end
              sig {
                params(_secondary_verification: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::SecondaryVerification)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::SecondaryVerification))
               }
              def secondary_verification=(_secondary_verification); end
              # One or more documents showing the person’s visa required for living in the country where they are residing.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::Visa))
               }
              def visa; end
              sig {
                params(_visa: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::Visa)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::Visa))
               }
              def visa=(_visa); end
              sig {
                params(company_authorization: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::CompanyAuthorization), passport: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::Passport), primary_verification: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::PrimaryVerification), secondary_verification: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::SecondaryVerification), visa: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::Visa)).void
               }
              def initialize(
                company_authorization: nil,
                passport: nil,
                primary_verification: nil,
                secondary_verification: nil,
                visa: nil
              ); end
            end
            class IdNumber < Stripe::RequestParams
              # The ID number type of an individual.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              # The value of the ID number.
              sig { returns(String) }
              def value; end
              sig { params(_value: String).returns(String) }
              def value=(_value); end
              sig { params(type: String, value: String).void }
              def initialize(type: nil, value: nil); end
            end
            class Relationship < Stripe::RequestParams
              # Whether the individual is an authorizer of the Account’s legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def authorizer; end
              sig { params(_authorizer: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def authorizer=(_authorizer); end
              # Indicates whether the person is a director of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def director; end
              sig { params(_director: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def director=(_director); end
              # Indicates whether the person is an executive of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def executive; end
              sig { params(_executive: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def executive=(_executive); end
              # Indicates whether the person is a legal guardian of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def legal_guardian; end
              sig { params(_legal_guardian: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def legal_guardian=(_legal_guardian); end
              # Indicates whether the person is an owner of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def owner; end
              sig { params(_owner: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def owner=(_owner); end
              # The percentage of ownership the person has in the associated legal entity.
              sig { returns(T.nilable(String)) }
              def percent_ownership; end
              sig { params(_percent_ownership: T.nilable(String)).returns(T.nilable(String)) }
              def percent_ownership=(_percent_ownership); end
              # Indicates whether the person is a representative of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def representative; end
              sig { params(_representative: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def representative=(_representative); end
              # The title or position the person holds in the associated legal entity.
              sig { returns(T.nilable(String)) }
              def title; end
              sig { params(_title: T.nilable(String)).returns(T.nilable(String)) }
              def title=(_title); end
              sig {
                params(authorizer: T.nilable(T::Boolean), director: T.nilable(T::Boolean), executive: T.nilable(T::Boolean), legal_guardian: T.nilable(T::Boolean), owner: T.nilable(T::Boolean), percent_ownership: T.nilable(String), representative: T.nilable(T::Boolean), title: T.nilable(String)).void
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
            class ScriptAddresses < Stripe::RequestParams
              class Kana < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                def city; end
                sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                def city=(_city); end
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(String) }
                def country; end
                sig { params(_country: String).returns(String) }
                def country=(_country); end
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(String)) }
                def line1; end
                sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
                def line1=(_line1); end
                # Address line 2 (e.g., apartment, suite, unit, or building).
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
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                def town; end
                sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
                def town=(_town); end
                sig {
                  params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
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
              class Kanji < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(String)) }
                def city; end
                sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
                def city=(_city); end
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(String) }
                def country; end
                sig { params(_country: String).returns(String) }
                def country=(_country); end
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(String)) }
                def line1; end
                sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
                def line1=(_line1); end
                # Address line 2 (e.g., apartment, suite, unit, or building).
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
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                def town; end
                sig { params(_town: T.nilable(String)).returns(T.nilable(String)) }
                def town=(_town); end
                sig {
                  params(city: T.nilable(String), country: String, line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String), town: T.nilable(String)).void
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
              # Kana Address.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses::Kana))
               }
              def kana; end
              sig {
                params(_kana: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses::Kana)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses::Kana))
               }
              def kana=(_kana); end
              # Kanji Address.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses::Kanji))
               }
              def kanji; end
              sig {
                params(_kanji: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses::Kanji)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses::Kanji))
               }
              def kanji=(_kanji); end
              sig {
                params(kana: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses::Kana), kanji: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses::Kanji)).void
               }
              def initialize(kana: nil, kanji: nil); end
            end
            class ScriptNames < Stripe::RequestParams
              class Kana < Stripe::RequestParams
                # The person's first or given name.
                sig { returns(T.nilable(String)) }
                def given_name; end
                sig { params(_given_name: T.nilable(String)).returns(T.nilable(String)) }
                def given_name=(_given_name); end
                # The person's last or family name.
                sig { returns(T.nilable(String)) }
                def surname; end
                sig { params(_surname: T.nilable(String)).returns(T.nilable(String)) }
                def surname=(_surname); end
                sig { params(given_name: T.nilable(String), surname: T.nilable(String)).void }
                def initialize(given_name: nil, surname: nil); end
              end
              class Kanji < Stripe::RequestParams
                # The person's first or given name.
                sig { returns(T.nilable(String)) }
                def given_name; end
                sig { params(_given_name: T.nilable(String)).returns(T.nilable(String)) }
                def given_name=(_given_name); end
                # The person's last or family name.
                sig { returns(T.nilable(String)) }
                def surname; end
                sig { params(_surname: T.nilable(String)).returns(T.nilable(String)) }
                def surname=(_surname); end
                sig { params(given_name: T.nilable(String), surname: T.nilable(String)).void }
                def initialize(given_name: nil, surname: nil); end
              end
              # Persons name in kana script.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kana))
               }
              def kana; end
              sig {
                params(_kana: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kana)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kana))
               }
              def kana=(_kana); end
              # Persons name in kanji script.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kanji))
               }
              def kanji; end
              sig {
                params(_kanji: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kanji)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kanji))
               }
              def kanji=(_kanji); end
              sig {
                params(kana: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kana), kanji: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kanji)).void
               }
              def initialize(kana: nil, kanji: nil); end
            end
            # Additional addresses associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalAddress]))
             }
            def additional_addresses; end
            sig {
              params(_additional_addresses: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalAddress])).returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalAddress]))
             }
            def additional_addresses=(_additional_addresses); end
            # Additional names (e.g. aliases) associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalName]))
             }
            def additional_names; end
            sig {
              params(_additional_names: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalName])).returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalName]))
             }
            def additional_names=(_additional_names); end
            # Attestations of accepted terms of service agreements.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalTermsOfService))
             }
            def additional_terms_of_service; end
            sig {
              params(_additional_terms_of_service: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalTermsOfService)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalTermsOfService))
             }
            def additional_terms_of_service=(_additional_terms_of_service); end
            # The person's residential address.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Address))
             }
            def address; end
            sig {
              params(_address: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Address)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Address))
             }
            def address=(_address); end
            # The person's date of birth.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::DateOfBirth))
             }
            def date_of_birth; end
            sig {
              params(_date_of_birth: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::DateOfBirth)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::DateOfBirth))
             }
            def date_of_birth=(_date_of_birth); end
            # Documents that may be submitted to satisfy various informational requests.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents))
             }
            def documents; end
            sig {
              params(_documents: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents))
             }
            def documents=(_documents); end
            # Email.
            sig { returns(T.nilable(String)) }
            def email; end
            sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_email); end
            # The person's first name.
            sig { returns(T.nilable(String)) }
            def given_name; end
            sig { params(_given_name: T.nilable(String)).returns(T.nilable(String)) }
            def given_name=(_given_name); end
            # The identification numbers (e.g., SSN) associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::IdNumber]))
             }
            def id_numbers; end
            sig {
              params(_id_numbers: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::IdNumber])).returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::IdNumber]))
             }
            def id_numbers=(_id_numbers); end
            # The person's gender (International regulations require either "male" or "female").
            sig { returns(T.nilable(String)) }
            def legal_gender; end
            sig { params(_legal_gender: T.nilable(String)).returns(T.nilable(String)) }
            def legal_gender=(_legal_gender); end
            # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            sig { returns(T.nilable(T::Hash[String, String])) }
            def metadata; end
            sig {
              params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
             }
            def metadata=(_metadata); end
            # The nationalities (countries) this person is associated with.
            sig { returns(T.nilable(T::Array[String])) }
            def nationalities; end
            sig {
              params(_nationalities: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def nationalities=(_nationalities); end
            # The phone number for this person.
            sig { returns(T.nilable(String)) }
            def phone; end
            sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
            def phone=(_phone); end
            # The person's political exposure.
            sig { returns(T.nilable(String)) }
            def political_exposure; end
            sig { params(_political_exposure: T.nilable(String)).returns(T.nilable(String)) }
            def political_exposure=(_political_exposure); end
            # The relationship that this person has with the Account's business or legal entity.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Relationship))
             }
            def relationship; end
            sig {
              params(_relationship: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Relationship)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Relationship))
             }
            def relationship=(_relationship); end
            # The script addresses (e.g., non-Latin characters) associated with the person.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses))
             }
            def script_addresses; end
            sig {
              params(_script_addresses: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses))
             }
            def script_addresses=(_script_addresses); end
            # The script names (e.g. non-Latin characters) associated with the person.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames))
             }
            def script_names; end
            sig {
              params(_script_names: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames))
             }
            def script_names=(_script_names); end
            # The person's last name.
            sig { returns(T.nilable(String)) }
            def surname; end
            sig { params(_surname: T.nilable(String)).returns(T.nilable(String)) }
            def surname=(_surname); end
            sig {
              params(additional_addresses: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalAddress]), additional_names: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalName]), additional_terms_of_service: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalTermsOfService), address: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Address), date_of_birth: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::DateOfBirth), documents: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents), email: T.nilable(String), given_name: T.nilable(String), id_numbers: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::IdNumber]), legal_gender: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), nationalities: T.nilable(T::Array[String]), phone: T.nilable(String), political_exposure: T.nilable(String), relationship: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Relationship), script_addresses: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses), script_names: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames), surname: T.nilable(String)).void
             }
            def initialize(
              additional_addresses: nil,
              additional_names: nil,
              additional_terms_of_service: nil,
              address: nil,
              date_of_birth: nil,
              documents: nil,
              email: nil,
              given_name: nil,
              id_numbers: nil,
              legal_gender: nil,
              metadata: nil,
              nationalities: nil,
              phone: nil,
              political_exposure: nil,
              relationship: nil,
              script_addresses: nil,
              script_names: nil,
              surname: nil
            ); end
          end
          class DeleteParams < Stripe::RequestParams; end
          class RetrieveParams < Stripe::RequestParams; end
          class UpdateParams < Stripe::RequestParams
            class AdditionalAddress < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(T.nilable(String))) }
              def city; end
              sig {
                params(_city: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def city=(_city); end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(T.nilable(String))) }
              def country; end
              sig {
                params(_country: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def country=(_country); end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(T.nilable(String))) }
              def line1; end
              sig {
                params(_line1: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def line1=(_line1); end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(T.nilable(String))) }
              def line2; end
              sig {
                params(_line2: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def line2=(_line2); end
              # ZIP or postal code.
              sig { returns(T.nilable(T.nilable(String))) }
              def postal_code; end
              sig {
                params(_postal_code: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def postal_code=(_postal_code); end
              # Purpose of additional address.
              sig { returns(String) }
              def purpose; end
              sig { params(_purpose: String).returns(String) }
              def purpose=(_purpose); end
              # State, county, province, or region.
              sig { returns(T.nilable(T.nilable(String))) }
              def state; end
              sig {
                params(_state: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def state=(_state); end
              # Town or cho-me.
              sig { returns(T.nilable(T.nilable(String))) }
              def town; end
              sig {
                params(_town: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def town=(_town); end
              sig {
                params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), purpose: String, state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
               }
              def initialize(
                city: nil,
                country: nil,
                line1: nil,
                line2: nil,
                postal_code: nil,
                purpose: nil,
                state: nil,
                town: nil
              ); end
            end
            class AdditionalName < Stripe::RequestParams
              # The person's full name.
              sig { returns(T.nilable(String)) }
              def full_name; end
              sig { params(_full_name: T.nilable(String)).returns(T.nilable(String)) }
              def full_name=(_full_name); end
              # The person's first or given name.
              sig { returns(T.nilable(String)) }
              def given_name; end
              sig { params(_given_name: T.nilable(String)).returns(T.nilable(String)) }
              def given_name=(_given_name); end
              # The purpose or type of the additional name.
              sig { returns(String) }
              def purpose; end
              sig { params(_purpose: String).returns(String) }
              def purpose=(_purpose); end
              # The person's last or family name.
              sig { returns(T.nilable(String)) }
              def surname; end
              sig { params(_surname: T.nilable(String)).returns(T.nilable(String)) }
              def surname=(_surname); end
              sig {
                params(full_name: T.nilable(String), given_name: T.nilable(String), purpose: String, surname: T.nilable(String)).void
               }
              def initialize(full_name: nil, given_name: nil, purpose: nil, surname: nil); end
            end
            class AdditionalTermsOfService < Stripe::RequestParams
              class Account < Stripe::RequestParams
                # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                sig { returns(T.nilable(String)) }
                def date; end
                sig { params(_date: T.nilable(String)).returns(T.nilable(String)) }
                def date=(_date); end
                # The IP address from which the Account's representative accepted the terms of service.
                sig { returns(T.nilable(String)) }
                def ip; end
                sig { params(_ip: T.nilable(String)).returns(T.nilable(String)) }
                def ip=(_ip); end
                # The user agent of the browser from which the Account's representative accepted the terms of service.
                sig { returns(T.nilable(String)) }
                def user_agent; end
                sig { params(_user_agent: T.nilable(String)).returns(T.nilable(String)) }
                def user_agent=(_user_agent); end
                sig {
                  params(date: T.nilable(String), ip: T.nilable(String), user_agent: T.nilable(String)).void
                 }
                def initialize(date: nil, ip: nil, user_agent: nil); end
              end
              # Stripe terms of service agreement.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalTermsOfService::Account))
               }
              def account; end
              sig {
                params(_account: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalTermsOfService::Account)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalTermsOfService::Account))
               }
              def account=(_account); end
              sig {
                params(account: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalTermsOfService::Account)).void
               }
              def initialize(account: nil); end
            end
            class Address < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(T.nilable(String))) }
              def city; end
              sig {
                params(_city: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def city=(_city); end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(T.nilable(String))) }
              def country; end
              sig {
                params(_country: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def country=(_country); end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(T.nilable(String))) }
              def line1; end
              sig {
                params(_line1: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def line1=(_line1); end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(T.nilable(String))) }
              def line2; end
              sig {
                params(_line2: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def line2=(_line2); end
              # ZIP or postal code.
              sig { returns(T.nilable(T.nilable(String))) }
              def postal_code; end
              sig {
                params(_postal_code: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def postal_code=(_postal_code); end
              # State, county, province, or region.
              sig { returns(T.nilable(T.nilable(String))) }
              def state; end
              sig {
                params(_state: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def state=(_state); end
              # Town or cho-me.
              sig { returns(T.nilable(T.nilable(String))) }
              def town; end
              sig {
                params(_town: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
               }
              def town=(_town); end
              sig {
                params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
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
            class DateOfBirth < Stripe::RequestParams
              # The day of the birth.
              sig { returns(Integer) }
              def day; end
              sig { params(_day: Integer).returns(Integer) }
              def day=(_day); end
              # The month of birth.
              sig { returns(Integer) }
              def month; end
              sig { params(_month: Integer).returns(Integer) }
              def month=(_month); end
              # The year of birth.
              sig { returns(Integer) }
              def year; end
              sig { params(_year: Integer).returns(Integer) }
              def year=(_year); end
              sig { params(day: Integer, month: Integer, year: Integer).void }
              def initialize(day: nil, month: nil, year: nil); end
            end
            class Documents < Stripe::RequestParams
              class CompanyAuthorization < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                def files; end
                sig { params(_files: T::Array[String]).returns(T::Array[String]) }
                def files=(_files); end
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              class Passport < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                def files; end
                sig { params(_files: T::Array[String]).returns(T::Array[String]) }
                def files=(_files); end
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              class PrimaryVerification < Stripe::RequestParams
                class FrontBack < Stripe::RequestParams
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(T.nilable(String))) }
                  def back; end
                  sig {
                    params(_back: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                   }
                  def back=(_back); end
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(String)) }
                  def front; end
                  sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
                  def front=(_front); end
                  sig { params(back: T.nilable(T.nilable(String)), front: T.nilable(String)).void }
                  def initialize(back: nil, front: nil); end
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                sig {
                  returns(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::PrimaryVerification::FrontBack)
                 }
                def front_back; end
                sig {
                  params(_front_back: ::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::PrimaryVerification::FrontBack).returns(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::PrimaryVerification::FrontBack)
                 }
                def front_back=(_front_back); end
                # The format of the verification document. Currently supports `front_back` only.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(front_back: ::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::PrimaryVerification::FrontBack, type: String).void
                 }
                def initialize(front_back: nil, type: nil); end
              end
              class SecondaryVerification < Stripe::RequestParams
                class FrontBack < Stripe::RequestParams
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(T.nilable(String))) }
                  def back; end
                  sig {
                    params(_back: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                   }
                  def back=(_back); end
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(String)) }
                  def front; end
                  sig { params(_front: T.nilable(String)).returns(T.nilable(String)) }
                  def front=(_front); end
                  sig { params(back: T.nilable(T.nilable(String)), front: T.nilable(String)).void }
                  def initialize(back: nil, front: nil); end
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                sig {
                  returns(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::SecondaryVerification::FrontBack)
                 }
                def front_back; end
                sig {
                  params(_front_back: ::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::SecondaryVerification::FrontBack).returns(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::SecondaryVerification::FrontBack)
                 }
                def front_back=(_front_back); end
                # The format of the verification document. Currently supports `front_back` only.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig {
                  params(front_back: ::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::SecondaryVerification::FrontBack, type: String).void
                 }
                def initialize(front_back: nil, type: nil); end
              end
              class Visa < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                def files; end
                sig { params(_files: T::Array[String]).returns(T::Array[String]) }
                def files=(_files); end
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                def type; end
                sig { params(_type: String).returns(String) }
                def type=(_type); end
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              # One or more documents that demonstrate proof that this person is authorized to represent the company.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::CompanyAuthorization))
               }
              def company_authorization; end
              sig {
                params(_company_authorization: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::CompanyAuthorization)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::CompanyAuthorization))
               }
              def company_authorization=(_company_authorization); end
              # One or more documents showing the person’s passport page with photo and personal data.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::Passport))
               }
              def passport; end
              sig {
                params(_passport: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::Passport)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::Passport))
               }
              def passport=(_passport); end
              # An identifying document showing the person's name, either a passport or local ID card.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::PrimaryVerification)))
               }
              def primary_verification; end
              sig {
                params(_primary_verification: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::PrimaryVerification))).returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::PrimaryVerification)))
               }
              def primary_verification=(_primary_verification); end
              # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::SecondaryVerification)))
               }
              def secondary_verification; end
              sig {
                params(_secondary_verification: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::SecondaryVerification))).returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::SecondaryVerification)))
               }
              def secondary_verification=(_secondary_verification); end
              # One or more documents showing the person’s visa required for living in the country where they are residing.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::Visa))
               }
              def visa; end
              sig {
                params(_visa: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::Visa)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::Visa))
               }
              def visa=(_visa); end
              sig {
                params(company_authorization: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::CompanyAuthorization), passport: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::Passport), primary_verification: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::PrimaryVerification)), secondary_verification: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::SecondaryVerification)), visa: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::Visa)).void
               }
              def initialize(
                company_authorization: nil,
                passport: nil,
                primary_verification: nil,
                secondary_verification: nil,
                visa: nil
              ); end
            end
            class IdNumber < Stripe::RequestParams
              # The ID number type of an individual.
              sig { returns(String) }
              def type; end
              sig { params(_type: String).returns(String) }
              def type=(_type); end
              # The value of the ID number.
              sig { returns(String) }
              def value; end
              sig { params(_value: String).returns(String) }
              def value=(_value); end
              sig { params(type: String, value: String).void }
              def initialize(type: nil, value: nil); end
            end
            class Relationship < Stripe::RequestParams
              # Whether the individual is an authorizer of the Account’s legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def authorizer; end
              sig { params(_authorizer: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def authorizer=(_authorizer); end
              # Indicates whether the person is a director of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def director; end
              sig { params(_director: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def director=(_director); end
              # Indicates whether the person is an executive of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def executive; end
              sig { params(_executive: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def executive=(_executive); end
              # Indicates whether the person is a legal guardian of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def legal_guardian; end
              sig { params(_legal_guardian: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def legal_guardian=(_legal_guardian); end
              # Indicates whether the person is an owner of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def owner; end
              sig { params(_owner: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def owner=(_owner); end
              # The percentage of ownership the person has in the associated legal entity.
              sig { returns(T.nilable(String)) }
              def percent_ownership; end
              sig { params(_percent_ownership: T.nilable(String)).returns(T.nilable(String)) }
              def percent_ownership=(_percent_ownership); end
              # Indicates whether the person is a representative of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              def representative; end
              sig { params(_representative: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
              def representative=(_representative); end
              # The title or position the person holds in the associated legal entity.
              sig { returns(T.nilable(String)) }
              def title; end
              sig { params(_title: T.nilable(String)).returns(T.nilable(String)) }
              def title=(_title); end
              sig {
                params(authorizer: T.nilable(T::Boolean), director: T.nilable(T::Boolean), executive: T.nilable(T::Boolean), legal_guardian: T.nilable(T::Boolean), owner: T.nilable(T::Boolean), percent_ownership: T.nilable(String), representative: T.nilable(T::Boolean), title: T.nilable(String)).void
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
            class ScriptAddresses < Stripe::RequestParams
              class Kana < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(T.nilable(String))) }
                def city; end
                sig {
                  params(_city: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def city=(_city); end
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(T.nilable(String))) }
                def country; end
                sig {
                  params(_country: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def country=(_country); end
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(T.nilable(String))) }
                def line1; end
                sig {
                  params(_line1: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def line1=(_line1); end
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(T.nilable(String))) }
                def line2; end
                sig {
                  params(_line2: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def line2=(_line2); end
                # ZIP or postal code.
                sig { returns(T.nilable(T.nilable(String))) }
                def postal_code; end
                sig {
                  params(_postal_code: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def postal_code=(_postal_code); end
                # State, county, province, or region.
                sig { returns(T.nilable(T.nilable(String))) }
                def state; end
                sig {
                  params(_state: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def state=(_state); end
                # Town or cho-me.
                sig { returns(T.nilable(T.nilable(String))) }
                def town; end
                sig {
                  params(_town: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def town=(_town); end
                sig {
                  params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
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
              class Kanji < Stripe::RequestParams
                # City, district, suburb, town, or village.
                sig { returns(T.nilable(T.nilable(String))) }
                def city; end
                sig {
                  params(_city: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def city=(_city); end
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(T.nilable(String))) }
                def country; end
                sig {
                  params(_country: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def country=(_country); end
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(T.nilable(String))) }
                def line1; end
                sig {
                  params(_line1: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def line1=(_line1); end
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(T.nilable(String))) }
                def line2; end
                sig {
                  params(_line2: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def line2=(_line2); end
                # ZIP or postal code.
                sig { returns(T.nilable(T.nilable(String))) }
                def postal_code; end
                sig {
                  params(_postal_code: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def postal_code=(_postal_code); end
                # State, county, province, or region.
                sig { returns(T.nilable(T.nilable(String))) }
                def state; end
                sig {
                  params(_state: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def state=(_state); end
                # Town or cho-me.
                sig { returns(T.nilable(T.nilable(String))) }
                def town; end
                sig {
                  params(_town: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def town=(_town); end
                sig {
                  params(city: T.nilable(T.nilable(String)), country: T.nilable(T.nilable(String)), line1: T.nilable(T.nilable(String)), line2: T.nilable(T.nilable(String)), postal_code: T.nilable(T.nilable(String)), state: T.nilable(T.nilable(String)), town: T.nilable(T.nilable(String))).void
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
              # Kana Address.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses::Kana)))
               }
              def kana; end
              sig {
                params(_kana: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses::Kana))).returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses::Kana)))
               }
              def kana=(_kana); end
              # Kanji Address.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses::Kanji)))
               }
              def kanji; end
              sig {
                params(_kanji: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses::Kanji))).returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses::Kanji)))
               }
              def kanji=(_kanji); end
              sig {
                params(kana: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses::Kana)), kanji: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses::Kanji))).void
               }
              def initialize(kana: nil, kanji: nil); end
            end
            class ScriptNames < Stripe::RequestParams
              class Kana < Stripe::RequestParams
                # The person's first or given name.
                sig { returns(T.nilable(T.nilable(String))) }
                def given_name; end
                sig {
                  params(_given_name: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def given_name=(_given_name); end
                # The person's last or family name.
                sig { returns(T.nilable(T.nilable(String))) }
                def surname; end
                sig {
                  params(_surname: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def surname=(_surname); end
                sig {
                  params(given_name: T.nilable(T.nilable(String)), surname: T.nilable(T.nilable(String))).void
                 }
                def initialize(given_name: nil, surname: nil); end
              end
              class Kanji < Stripe::RequestParams
                # The person's first or given name.
                sig { returns(T.nilable(T.nilable(String))) }
                def given_name; end
                sig {
                  params(_given_name: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def given_name=(_given_name); end
                # The person's last or family name.
                sig { returns(T.nilable(T.nilable(String))) }
                def surname; end
                sig {
                  params(_surname: T.nilable(T.nilable(String))).returns(T.nilable(T.nilable(String)))
                 }
                def surname=(_surname); end
                sig {
                  params(given_name: T.nilable(T.nilable(String)), surname: T.nilable(T.nilable(String))).void
                 }
                def initialize(given_name: nil, surname: nil); end
              end
              # Persons name in kana script.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kana)))
               }
              def kana; end
              sig {
                params(_kana: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kana))).returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kana)))
               }
              def kana=(_kana); end
              # Persons name in kanji script.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kanji)))
               }
              def kanji; end
              sig {
                params(_kanji: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kanji))).returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kanji)))
               }
              def kanji=(_kanji); end
              sig {
                params(kana: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kana)), kanji: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kanji))).void
               }
              def initialize(kana: nil, kanji: nil); end
            end
            # Additional addresses associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalAddress]))
             }
            def additional_addresses; end
            sig {
              params(_additional_addresses: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalAddress])).returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalAddress]))
             }
            def additional_addresses=(_additional_addresses); end
            # Additional names (e.g. aliases) associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalName]))
             }
            def additional_names; end
            sig {
              params(_additional_names: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalName])).returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalName]))
             }
            def additional_names=(_additional_names); end
            # Attestations of accepted terms of service agreements.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalTermsOfService))
             }
            def additional_terms_of_service; end
            sig {
              params(_additional_terms_of_service: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalTermsOfService)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalTermsOfService))
             }
            def additional_terms_of_service=(_additional_terms_of_service); end
            # The primary address associated with the person.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Address))
             }
            def address; end
            sig {
              params(_address: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Address)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Address))
             }
            def address=(_address); end
            # The person's date of birth.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::DateOfBirth))
             }
            def date_of_birth; end
            sig {
              params(_date_of_birth: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::DateOfBirth)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::DateOfBirth))
             }
            def date_of_birth=(_date_of_birth); end
            # Documents that may be submitted to satisfy various informational requests.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents))
             }
            def documents; end
            sig {
              params(_documents: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents))
             }
            def documents=(_documents); end
            # Email.
            sig { returns(T.nilable(String)) }
            def email; end
            sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_email); end
            # The person's first name.
            sig { returns(T.nilable(String)) }
            def given_name; end
            sig { params(_given_name: T.nilable(String)).returns(T.nilable(String)) }
            def given_name=(_given_name); end
            # The identification numbers (e.g., SSN) associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::IdNumber]))
             }
            def id_numbers; end
            sig {
              params(_id_numbers: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::IdNumber])).returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::IdNumber]))
             }
            def id_numbers=(_id_numbers); end
            # The person's gender (International regulations require either "male" or "female").
            sig { returns(T.nilable(String)) }
            def legal_gender; end
            sig { params(_legal_gender: T.nilable(String)).returns(T.nilable(String)) }
            def legal_gender=(_legal_gender); end
            # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
            def metadata; end
            sig {
              params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
             }
            def metadata=(_metadata); end
            # The nationalities (countries) this person is associated with.
            sig { returns(T.nilable(T::Array[String])) }
            def nationalities; end
            sig {
              params(_nationalities: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def nationalities=(_nationalities); end
            # The phone number for this person.
            sig { returns(T.nilable(String)) }
            def phone; end
            sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
            def phone=(_phone); end
            # The person's political exposure.
            sig { returns(T.nilable(String)) }
            def political_exposure; end
            sig { params(_political_exposure: T.nilable(String)).returns(T.nilable(String)) }
            def political_exposure=(_political_exposure); end
            # The relationship that this person has with the Account's business or legal entity.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Relationship))
             }
            def relationship; end
            sig {
              params(_relationship: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Relationship)).returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Relationship))
             }
            def relationship=(_relationship); end
            # The script addresses (e.g., non-Latin characters) associated with the person.
            sig {
              returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses)))
             }
            def script_addresses; end
            sig {
              params(_script_addresses: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses))).returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses)))
             }
            def script_addresses=(_script_addresses); end
            # The script names (e.g. non-Latin characters) associated with the person.
            sig {
              returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames)))
             }
            def script_names; end
            sig {
              params(_script_names: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames))).returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames)))
             }
            def script_names=(_script_names); end
            # The person's last name.
            sig { returns(T.nilable(String)) }
            def surname; end
            sig { params(_surname: T.nilable(String)).returns(T.nilable(String)) }
            def surname=(_surname); end
            sig {
              params(additional_addresses: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalAddress]), additional_names: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalName]), additional_terms_of_service: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalTermsOfService), address: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Address), date_of_birth: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::DateOfBirth), documents: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents), email: T.nilable(String), given_name: T.nilable(String), id_numbers: T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::IdNumber]), legal_gender: T.nilable(String), metadata: T.nilable(T::Hash[String, T.nilable(String)]), nationalities: T.nilable(T::Array[String]), phone: T.nilable(String), political_exposure: T.nilable(String), relationship: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Relationship), script_addresses: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses)), script_names: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames)), surname: T.nilable(String)).void
             }
            def initialize(
              additional_addresses: nil,
              additional_names: nil,
              additional_terms_of_service: nil,
              address: nil,
              date_of_birth: nil,
              documents: nil,
              email: nil,
              given_name: nil,
              id_numbers: nil,
              legal_gender: nil,
              metadata: nil,
              nationalities: nil,
              phone: nil,
              political_exposure: nil,
              relationship: nil,
              script_addresses: nil,
              script_names: nil,
              surname: nil
            ); end
          end
          # Create a Person associated with an Account.
          sig {
            params(account_id: String, params: T.any(::Stripe::V2::Core::Accounts::PersonService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Person)
           }
          def create(account_id, params = {}, opts = {}); end

          # Delete a Person associated with an Account.
          sig {
            params(account_id: String, id: String, params: T.any(::Stripe::V2::Core::Accounts::PersonService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Person)
           }
          def delete(account_id, id, params = {}, opts = {}); end

          # Returns a list of Persons associated with an Account.
          sig {
            params(account_id: String, params: T.any(::Stripe::V2::Core::Accounts::PersonService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
           }
          def list(account_id, params = {}, opts = {}); end

          # Retrieves a Person associated with an Account.
          sig {
            params(account_id: String, id: String, params: T.any(::Stripe::V2::Core::Accounts::PersonService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Person)
           }
          def retrieve(account_id, id, params = {}, opts = {}); end

          # Updates a Person associated with an Account.
          sig {
            params(account_id: String, id: String, params: T.any(::Stripe::V2::Core::Accounts::PersonService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Person)
           }
          def update(account_id, id, params = {}, opts = {}); end
        end
      end
    end
  end
end