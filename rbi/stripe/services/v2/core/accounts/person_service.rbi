# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Accounts
        class PersonService < StripeService
          class CreateParams < Stripe::RequestParams
            class AdditionalAddress < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              attr_accessor :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(String) }
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
              # Purpose of additional address.
              sig { returns(String) }
              attr_accessor :purpose
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              attr_accessor :state
              # Town or cho-me.
              sig { returns(T.nilable(String)) }
              attr_accessor :town
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
              attr_accessor :full_name
              # The person's first or given name.
              sig { returns(T.nilable(String)) }
              attr_accessor :given_name
              # The purpose or type of the additional name.
              sig { returns(String) }
              attr_accessor :purpose
              # The person's last or family name.
              sig { returns(T.nilable(String)) }
              attr_accessor :surname
              sig {
                params(full_name: T.nilable(String), given_name: T.nilable(String), purpose: String, surname: T.nilable(String)).void
               }
              def initialize(full_name: nil, given_name: nil, purpose: nil, surname: nil); end
            end
            class AdditionalTermsOfService < Stripe::RequestParams
              class Account < Stripe::RequestParams
                # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                sig { returns(String) }
                attr_accessor :date
                # The IP address from which the Account's representative accepted the terms of service.
                sig { returns(String) }
                attr_accessor :ip
                # The user agent of the browser from which the Account's representative accepted the terms of service.
                sig { returns(T.nilable(String)) }
                attr_accessor :user_agent
                sig { params(date: String, ip: String, user_agent: T.nilable(String)).void }
                def initialize(date: nil, ip: nil, user_agent: nil); end
              end
              # Stripe terms of service agreement.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalTermsOfService::Account))
               }
              attr_accessor :account
              sig {
                params(account: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalTermsOfService::Account)).void
               }
              def initialize(account: nil); end
            end
            class Address < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              attr_accessor :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(String) }
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
              # Town or cho-me.
              sig { returns(T.nilable(String)) }
              attr_accessor :town
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
              attr_accessor :day
              # The month of birth.
              sig { returns(Integer) }
              attr_accessor :month
              # The year of birth.
              sig { returns(Integer) }
              attr_accessor :year
              sig { params(day: Integer, month: Integer, year: Integer).void }
              def initialize(day: nil, month: nil, year: nil); end
            end
            class Documents < Stripe::RequestParams
              class CompanyAuthorization < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_accessor :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_accessor :type
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              class Passport < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_accessor :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_accessor :type
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              class PrimaryVerification < Stripe::RequestParams
                class FrontBack < Stripe::RequestParams
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :back
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(String) }
                  attr_accessor :front
                  sig { params(back: T.nilable(String), front: String).void }
                  def initialize(back: nil, front: nil); end
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                sig {
                  returns(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::PrimaryVerification::FrontBack)
                 }
                attr_accessor :front_back
                # The format of the verification document. Currently supports `front_back` only.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(front_back: ::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::PrimaryVerification::FrontBack, type: String).void
                 }
                def initialize(front_back: nil, type: nil); end
              end
              class SecondaryVerification < Stripe::RequestParams
                class FrontBack < Stripe::RequestParams
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :back
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(String) }
                  attr_accessor :front
                  sig { params(back: T.nilable(String), front: String).void }
                  def initialize(back: nil, front: nil); end
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                sig {
                  returns(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::SecondaryVerification::FrontBack)
                 }
                attr_accessor :front_back
                # The format of the verification document. Currently supports `front_back` only.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(front_back: ::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::SecondaryVerification::FrontBack, type: String).void
                 }
                def initialize(front_back: nil, type: nil); end
              end
              class Visa < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_accessor :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_accessor :type
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              # One or more documents that demonstrate proof that this person is authorized to represent the company.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::CompanyAuthorization))
               }
              attr_accessor :company_authorization
              # One or more documents showing the person’s passport page with photo and personal data.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::Passport))
               }
              attr_accessor :passport
              # An identifying document showing the person's name, either a passport or local ID card.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::PrimaryVerification))
               }
              attr_accessor :primary_verification
              # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::SecondaryVerification))
               }
              attr_accessor :secondary_verification
              # One or more documents showing the person’s visa required for living in the country where they are residing.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents::Visa))
               }
              attr_accessor :visa
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
              attr_accessor :type
              # The value of the ID number.
              sig { returns(String) }
              attr_accessor :value
              sig { params(type: String, value: String).void }
              def initialize(type: nil, value: nil); end
            end
            class Relationship < Stripe::RequestParams
              # Indicates whether the person is a director of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :director
              # Indicates whether the person is an executive of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :executive
              # Indicates whether the person is a legal guardian of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :legal_guardian
              # Indicates whether the person is an owner of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :owner
              # The percentage of ownership the person has in the associated legal entity.
              sig { returns(T.nilable(String)) }
              attr_accessor :percent_ownership
              # Indicates whether the person is a representative of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :representative
              # The title or position the person holds in the associated legal entity.
              sig { returns(T.nilable(String)) }
              attr_accessor :title
              sig {
                params(director: T.nilable(T::Boolean), executive: T.nilable(T::Boolean), legal_guardian: T.nilable(T::Boolean), owner: T.nilable(T::Boolean), percent_ownership: T.nilable(String), representative: T.nilable(T::Boolean), title: T.nilable(String)).void
               }
              def initialize(
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
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(String) }
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
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                attr_accessor :town
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
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(String) }
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
                # Town or cho-me.
                sig { returns(T.nilable(String)) }
                attr_accessor :town
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
              attr_accessor :kana
              # Kanji Address.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses::Kanji))
               }
              attr_accessor :kanji
              sig {
                params(kana: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses::Kana), kanji: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses::Kanji)).void
               }
              def initialize(kana: nil, kanji: nil); end
            end
            class ScriptNames < Stripe::RequestParams
              class Kana < Stripe::RequestParams
                # The person's first or given name.
                sig { returns(T.nilable(String)) }
                attr_accessor :given_name
                # The person's last or family name.
                sig { returns(T.nilable(String)) }
                attr_accessor :surname
                sig { params(given_name: T.nilable(String), surname: T.nilable(String)).void }
                def initialize(given_name: nil, surname: nil); end
              end
              class Kanji < Stripe::RequestParams
                # The person's first or given name.
                sig { returns(T.nilable(String)) }
                attr_accessor :given_name
                # The person's last or family name.
                sig { returns(T.nilable(String)) }
                attr_accessor :surname
                sig { params(given_name: T.nilable(String), surname: T.nilable(String)).void }
                def initialize(given_name: nil, surname: nil); end
              end
              # Persons name in kana script.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kana))
               }
              attr_accessor :kana
              # Persons name in kanji script.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kanji))
               }
              attr_accessor :kanji
              sig {
                params(kana: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kana), kanji: T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames::Kanji)).void
               }
              def initialize(kana: nil, kanji: nil); end
            end
            # Additional addresses associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalAddress]))
             }
            attr_accessor :additional_addresses
            # Additional names (e.g. aliases) associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalName]))
             }
            attr_accessor :additional_names
            # Attestations of accepted terms of service agreements.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::AdditionalTermsOfService))
             }
            attr_accessor :additional_terms_of_service
            # The person's residential address.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Address))
             }
            attr_accessor :address
            # The person's date of birth.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::DateOfBirth))
             }
            attr_accessor :date_of_birth
            # Documents that may be submitted to satisfy various informational requests.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Documents))
             }
            attr_accessor :documents
            # Email.
            sig { returns(T.nilable(String)) }
            attr_accessor :email
            # The person's first name.
            sig { returns(T.nilable(String)) }
            attr_accessor :given_name
            # The identification numbers (e.g., SSN) associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::CreateParams::IdNumber]))
             }
            attr_accessor :id_numbers
            # The person's gender (International regulations require either "male" or "female").
            sig { returns(T.nilable(String)) }
            attr_accessor :legal_gender
            # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # The nationalities (countries) this person is associated with.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :nationalities
            # The phone number for this person.
            sig { returns(T.nilable(String)) }
            attr_accessor :phone
            # The person's political exposure.
            sig { returns(T.nilable(String)) }
            attr_accessor :political_exposure
            # The relationship that this person has with the Account's business or legal entity.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::Relationship))
             }
            attr_accessor :relationship
            # The script addresses (e.g., non-Latin characters) associated with the person.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptAddresses))
             }
            attr_accessor :script_addresses
            # The script names (e.g. non-Latin characters) associated with the person.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::CreateParams::ScriptNames))
             }
            attr_accessor :script_names
            # The person's last name.
            sig { returns(T.nilable(String)) }
            attr_accessor :surname
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
          class DeleteParams < Stripe::RequestParams

          end
          class ListParams < Stripe::RequestParams
            # The upper limit on the number of accounts returned by the List Account request.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :limit
            sig { params(limit: T.nilable(Integer)).void }
            def initialize(limit: nil); end
          end
          class RetrieveParams < Stripe::RequestParams

          end
          class UpdateParams < Stripe::RequestParams
            class AdditionalAddress < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :line2
              # ZIP or postal code.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :postal_code
              # Purpose of additional address.
              sig { returns(String) }
              attr_accessor :purpose
              # State, county, province, or region.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :state
              # Town or cho-me.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :town
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
              attr_accessor :full_name
              # The person's first or given name.
              sig { returns(T.nilable(String)) }
              attr_accessor :given_name
              # The purpose or type of the additional name.
              sig { returns(String) }
              attr_accessor :purpose
              # The person's last or family name.
              sig { returns(T.nilable(String)) }
              attr_accessor :surname
              sig {
                params(full_name: T.nilable(String), given_name: T.nilable(String), purpose: String, surname: T.nilable(String)).void
               }
              def initialize(full_name: nil, given_name: nil, purpose: nil, surname: nil); end
            end
            class AdditionalTermsOfService < Stripe::RequestParams
              class Account < Stripe::RequestParams
                # The time when the Account's representative accepted the terms of service. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
                sig { returns(T.nilable(String)) }
                attr_accessor :date
                # The IP address from which the Account's representative accepted the terms of service.
                sig { returns(T.nilable(String)) }
                attr_accessor :ip
                # The user agent of the browser from which the Account's representative accepted the terms of service.
                sig { returns(T.nilable(String)) }
                attr_accessor :user_agent
                sig {
                  params(date: T.nilable(String), ip: T.nilable(String), user_agent: T.nilable(String)).void
                 }
                def initialize(date: nil, ip: nil, user_agent: nil); end
              end
              # Stripe terms of service agreement.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalTermsOfService::Account))
               }
              attr_accessor :account
              sig {
                params(account: T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalTermsOfService::Account)).void
               }
              def initialize(account: nil); end
            end
            class Address < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :line2
              # ZIP or postal code.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :postal_code
              # State, county, province, or region.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :state
              # Town or cho-me.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :town
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
              attr_accessor :day
              # The month of birth.
              sig { returns(Integer) }
              attr_accessor :month
              # The year of birth.
              sig { returns(Integer) }
              attr_accessor :year
              sig { params(day: Integer, month: Integer, year: Integer).void }
              def initialize(day: nil, month: nil, year: nil); end
            end
            class Documents < Stripe::RequestParams
              class CompanyAuthorization < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_accessor :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_accessor :type
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              class Passport < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_accessor :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_accessor :type
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              class PrimaryVerification < Stripe::RequestParams
                class FrontBack < Stripe::RequestParams
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :back
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :front
                  sig { params(back: T.nilable(T.nilable(String)), front: T.nilable(String)).void }
                  def initialize(back: nil, front: nil); end
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                sig {
                  returns(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::PrimaryVerification::FrontBack)
                 }
                attr_accessor :front_back
                # The format of the verification document. Currently supports `front_back` only.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(front_back: ::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::PrimaryVerification::FrontBack, type: String).void
                 }
                def initialize(front_back: nil, type: nil); end
              end
              class SecondaryVerification < Stripe::RequestParams
                class FrontBack < Stripe::RequestParams
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the back of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(T.nilable(String))) }
                  attr_accessor :back
                  # A [file upload](https://docs.stripe.com/api/persons/update#create_file) token representing the front of the verification document. The purpose of the uploaded file should be 'identity_document'. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
                  sig { returns(T.nilable(String)) }
                  attr_accessor :front
                  sig { params(back: T.nilable(T.nilable(String)), front: T.nilable(String)).void }
                  def initialize(back: nil, front: nil); end
                end
                # The [file upload](https://docs.stripe.com/api/persons/update#create_file) tokens referring to each side of the document.
                sig {
                  returns(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::SecondaryVerification::FrontBack)
                 }
                attr_accessor :front_back
                # The format of the verification document. Currently supports `front_back` only.
                sig { returns(String) }
                attr_accessor :type
                sig {
                  params(front_back: ::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::SecondaryVerification::FrontBack, type: String).void
                 }
                def initialize(front_back: nil, type: nil); end
              end
              class Visa < Stripe::RequestParams
                # One or more document IDs returned by a [file upload](https://docs.stripe.com/api/persons/update#create_file) with a purpose value of `account_requirement`.
                sig { returns(T::Array[String]) }
                attr_accessor :files
                # The format of the document. Currently supports `files` only.
                sig { returns(String) }
                attr_accessor :type
                sig { params(files: T::Array[String], type: String).void }
                def initialize(files: nil, type: nil); end
              end
              # One or more documents that demonstrate proof that this person is authorized to represent the company.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::CompanyAuthorization))
               }
              attr_accessor :company_authorization
              # One or more documents showing the person’s passport page with photo and personal data.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::Passport))
               }
              attr_accessor :passport
              # An identifying document showing the person's name, either a passport or local ID card.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::PrimaryVerification)))
               }
              attr_accessor :primary_verification
              # A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::SecondaryVerification)))
               }
              attr_accessor :secondary_verification
              # One or more documents showing the person’s visa required for living in the country where they are residing.
              sig {
                returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents::Visa))
               }
              attr_accessor :visa
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
              attr_accessor :type
              # The value of the ID number.
              sig { returns(String) }
              attr_accessor :value
              sig { params(type: String, value: String).void }
              def initialize(type: nil, value: nil); end
            end
            class Relationship < Stripe::RequestParams
              # Indicates whether the person is a director of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :director
              # Indicates whether the person is an executive of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :executive
              # Indicates whether the person is a legal guardian of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :legal_guardian
              # Indicates whether the person is an owner of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :owner
              # The percentage of ownership the person has in the associated legal entity.
              sig { returns(T.nilable(String)) }
              attr_accessor :percent_ownership
              # Indicates whether the person is a representative of the associated legal entity.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :representative
              # The title or position the person holds in the associated legal entity.
              sig { returns(T.nilable(String)) }
              attr_accessor :title
              sig {
                params(director: T.nilable(T::Boolean), executive: T.nilable(T::Boolean), legal_guardian: T.nilable(T::Boolean), owner: T.nilable(T::Boolean), percent_ownership: T.nilable(String), representative: T.nilable(T::Boolean), title: T.nilable(String)).void
               }
              def initialize(
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
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :line2
                # ZIP or postal code.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :state
                # Town or cho-me.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :town
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
                attr_accessor :city
                # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :country
                # Address line 1 (e.g., street, PO Box, or company name).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :line1
                # Address line 2 (e.g., apartment, suite, unit, or building).
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :line2
                # ZIP or postal code.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :postal_code
                # State, county, province, or region.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :state
                # Town or cho-me.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :town
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
              attr_accessor :kana
              # Kanji Address.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses::Kanji)))
               }
              attr_accessor :kanji
              sig {
                params(kana: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses::Kana)), kanji: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses::Kanji))).void
               }
              def initialize(kana: nil, kanji: nil); end
            end
            class ScriptNames < Stripe::RequestParams
              class Kana < Stripe::RequestParams
                # The person's first or given name.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :given_name
                # The person's last or family name.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :surname
                sig {
                  params(given_name: T.nilable(T.nilable(String)), surname: T.nilable(T.nilable(String))).void
                 }
                def initialize(given_name: nil, surname: nil); end
              end
              class Kanji < Stripe::RequestParams
                # The person's first or given name.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :given_name
                # The person's last or family name.
                sig { returns(T.nilable(T.nilable(String))) }
                attr_accessor :surname
                sig {
                  params(given_name: T.nilable(T.nilable(String)), surname: T.nilable(T.nilable(String))).void
                 }
                def initialize(given_name: nil, surname: nil); end
              end
              # Persons name in kana script.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kana)))
               }
              attr_accessor :kana
              # Persons name in kanji script.
              sig {
                returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kanji)))
               }
              attr_accessor :kanji
              sig {
                params(kana: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kana)), kanji: T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames::Kanji))).void
               }
              def initialize(kana: nil, kanji: nil); end
            end
            # Additional addresses associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalAddress]))
             }
            attr_accessor :additional_addresses
            # Additional names (e.g. aliases) associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalName]))
             }
            attr_accessor :additional_names
            # Attestations of accepted terms of service agreements.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::AdditionalTermsOfService))
             }
            attr_accessor :additional_terms_of_service
            # The primary address associated with the person.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Address))
             }
            attr_accessor :address
            # The person's date of birth.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::DateOfBirth))
             }
            attr_accessor :date_of_birth
            # Documents that may be submitted to satisfy various informational requests.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Documents))
             }
            attr_accessor :documents
            # Email.
            sig { returns(T.nilable(String)) }
            attr_accessor :email
            # The person's first name.
            sig { returns(T.nilable(String)) }
            attr_accessor :given_name
            # The identification numbers (e.g., SSN) associated with the person.
            sig {
              returns(T.nilable(T::Array[::Stripe::V2::Core::Accounts::PersonService::UpdateParams::IdNumber]))
             }
            attr_accessor :id_numbers
            # The person's gender (International regulations require either "male" or "female").
            sig { returns(T.nilable(String)) }
            attr_accessor :legal_gender
            # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
            sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
            attr_accessor :metadata
            # The nationalities (countries) this person is associated with.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :nationalities
            # The phone number for this person.
            sig { returns(T.nilable(String)) }
            attr_accessor :phone
            # The person's political exposure.
            sig { returns(T.nilable(String)) }
            attr_accessor :political_exposure
            # The relationship that this person has with the Account's business or legal entity.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::Relationship))
             }
            attr_accessor :relationship
            # The script addresses (e.g., non-Latin characters) associated with the person.
            sig {
              returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptAddresses)))
             }
            attr_accessor :script_addresses
            # The script names (e.g. non-Latin characters) associated with the person.
            sig {
              returns(T.nilable(T.nilable(::Stripe::V2::Core::Accounts::PersonService::UpdateParams::ScriptNames)))
             }
            attr_accessor :script_names
            # The person's last name.
            sig { returns(T.nilable(String)) }
            attr_accessor :surname
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