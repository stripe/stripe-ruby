# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Tokenization is the process Stripe uses to collect sensitive card or bank
  # account details, or personally identifiable information (PII), directly from
  # your customers in a secure manner. A token representing this information is
  # returned to your server to use. Use our
  # [recommended payments integrations](https://stripe.com/docs/payments) to perform this process
  # on the client-side. This guarantees that no sensitive card data touches your server,
  # and allows your integration to operate in a PCI-compliant way.
  #
  # If you can't use client-side tokenization, you can also create tokens using
  # the API with either your publishable or secret API key. If
  # your integration uses this method, you're responsible for any PCI compliance
  # that it might require, and you must keep your secret API key safe. Unlike with
  # client-side tokenization, your customer's information isn't sent directly to
  # Stripe, so we can't determine how it's handled or stored.
  #
  # You can't store or use tokens more than once. To store card or bank account
  # information for later use, create [Customer](https://stripe.com/docs/api#customers)
  # objects or [External accounts](https://docs.stripe.com/api#external_accounts).
  # [Radar](https://stripe.com/docs/radar), our integrated solution for automatic fraud protection,
  # performs best with integrations that use client-side tokenization.
  class Token < APIResource
    # These bank accounts are payment methods on `Customer` objects.
    #
    # On the other hand [External Accounts](/api#external_accounts) are transfer
    # destinations on `Account` objects for connected accounts.
    # They can be bank accounts or debit cards as well, and are documented in the links above.
    #
    # Related guide: [Bank debits and transfers](/payments/bank-debits-transfers)
    sig { returns(Stripe::BankAccount) }
    attr_reader :bank_account
    # You can store multiple cards on a customer in order to charge the customer
    # later. You can also store multiple debit cards on a recipient in order to
    # transfer to those cards later.
    #
    # Related guide: [Card payments with Sources](https://stripe.com/docs/sources/cards)
    sig { returns(Stripe::Card) }
    attr_reader :card
    # IP address of the client that generates the token.
    sig { returns(T.nilable(String)) }
    attr_reader :client_ip
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Type of the token: `account`, `bank_account`, `card`, or `pii`.
    sig { returns(String) }
    attr_reader :type
    # Determines if you have already used this token (you can only use tokens once).
    sig { returns(T::Boolean) }
    attr_reader :used
    class CreateParams < Stripe::RequestParams
      class Account < Stripe::RequestParams
        class Company < Stripe::RequestParams
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
          class DirectorshipDeclaration < Stripe::RequestParams
            # The Unix timestamp marking when the directorship declaration attestation was made.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :date
            # The IP address from which the directorship declaration attestation was made.
            sig { returns(T.nilable(String)) }
            attr_accessor :ip
            # The user agent of the browser from which the directorship declaration attestation was made.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_agent
            sig {
              params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
             }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          class OwnershipDeclaration < Stripe::RequestParams
            # The Unix timestamp marking when the beneficial owner attestation was made.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :date
            # The IP address from which the beneficial owner attestation was made.
            sig { returns(T.nilable(String)) }
            attr_accessor :ip
            # The user agent of the browser from which the beneficial owner attestation was made.
            sig { returns(T.nilable(String)) }
            attr_accessor :user_agent
            sig {
              params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(String)).void
             }
            def initialize(date: nil, ip: nil, user_agent: nil); end
          end
          class RegistrationDate < Stripe::RequestParams
            # The day of registration, between 1 and 31.
            sig { returns(Integer) }
            attr_accessor :day
            # The month of registration, between 1 and 12.
            sig { returns(Integer) }
            attr_accessor :month
            # The four-digit year of registration.
            sig { returns(Integer) }
            attr_accessor :year
            sig { params(day: Integer, month: Integer, year: Integer).void }
            def initialize(day: nil, month: nil, year: nil); end
          end
          class Verification < Stripe::RequestParams
            class Document < Stripe::RequestParams
              # The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
              sig { returns(T.nilable(String)) }
              attr_accessor :back
              # The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `additional_verification`. The uploaded file needs to be a color image (smaller than 8,000px by 8,000px), in JPG, PNG, or PDF format, and less than 10 MB in size.
              sig { returns(T.nilable(String)) }
              attr_accessor :front
              sig { params(back: T.nilable(String), front: T.nilable(String)).void }
              def initialize(back: nil, front: nil); end
            end
            # A document verifying the business.
            sig {
              returns(T.nilable(::Stripe::Token::CreateParams::Account::Company::Verification::Document))
             }
            attr_accessor :document
            sig {
              params(document: T.nilable(::Stripe::Token::CreateParams::Account::Company::Verification::Document)).void
             }
            def initialize(document: nil); end
          end
          # The company's primary address.
          sig { returns(T.nilable(::Stripe::Token::CreateParams::Account::Company::Address)) }
          attr_accessor :address
          # The Kana variation of the company's primary address (Japan only).
          sig { returns(T.nilable(::Stripe::Token::CreateParams::Account::Company::AddressKana)) }
          attr_accessor :address_kana
          # The Kanji variation of the company's primary address (Japan only).
          sig { returns(T.nilable(::Stripe::Token::CreateParams::Account::Company::AddressKanji)) }
          attr_accessor :address_kanji
          # Whether the company's directors have been provided. Set this Boolean to `true` after creating all the company's directors with [the Persons API](/api/persons) for accounts with a `relationship.director` requirement. This value is not automatically set to `true` after creating directors, so it needs to be updated to indicate all directors have been provided.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :directors_provided
          # This hash is used to attest that the directors information provided to Stripe is both current and correct.
          sig {
            returns(T.nilable(::Stripe::Token::CreateParams::Account::Company::DirectorshipDeclaration))
           }
          attr_accessor :directorship_declaration
          # Whether the company's executives have been provided. Set this Boolean to `true` after creating all the company's executives with [the Persons API](/api/persons) for accounts with a `relationship.executive` requirement.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :executives_provided
          # The export license ID number of the company, also referred as Import Export Code (India only).
          sig { returns(T.nilable(String)) }
          attr_accessor :export_license_id
          # The purpose code to use for export transactions (India only).
          sig { returns(T.nilable(String)) }
          attr_accessor :export_purpose_code
          # The company's legal name.
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # The Kana variation of the company's legal name (Japan only).
          sig { returns(T.nilable(String)) }
          attr_accessor :name_kana
          # The Kanji variation of the company's legal name (Japan only).
          sig { returns(T.nilable(String)) }
          attr_accessor :name_kanji
          # Whether the company's owners have been provided. Set this Boolean to `true` after creating all the company's owners with [the Persons API](/api/persons) for accounts with a `relationship.owner` requirement.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :owners_provided
          # This hash is used to attest that the beneficial owner information provided to Stripe is both current and correct.
          sig {
            returns(T.nilable(::Stripe::Token::CreateParams::Account::Company::OwnershipDeclaration))
           }
          attr_accessor :ownership_declaration
          # Whether the user described by the data in the token has been shown the Ownership Declaration and indicated that it is correct.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :ownership_declaration_shown_and_signed
          # This value is used to determine if a business is exempt from providing ultimate beneficial owners. See [this support article](https://support.stripe.com/questions/exemption-from-providing-ownership-details) and [changelog](https://docs.stripe.com/changelog/acacia/2025-01-27/ownership-exemption-reason-accounts-api) for more details.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :ownership_exemption_reason
          # The company's phone number (used for verification).
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          # When the business was incorporated or registered.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Token::CreateParams::Account::Company::RegistrationDate)))
           }
          attr_accessor :registration_date
          # The identification number given to a company when it is registered or incorporated, if distinct from the identification number used for filing taxes. (Examples are the CIN for companies and LLP IN for partnerships in India, and the Company Registration Number in Hong Kong).
          sig { returns(T.nilable(String)) }
          attr_accessor :registration_number
          # The category identifying the legal structure of the company or legal entity. See [Business structure](/connect/identity-verification#business-structure) for more details. Pass an empty string to unset this value.
          sig { returns(T.nilable(T.any(String, String))) }
          attr_accessor :structure
          # The business ID number of the company, as appropriate for the company’s country. (Examples are an Employer ID Number in the U.S., a Business Number in Canada, or a Company Number in the UK.)
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id
          # The jurisdiction in which the `tax_id` is registered (Germany-based companies only).
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id_registrar
          # The VAT number of the company.
          sig { returns(T.nilable(String)) }
          attr_accessor :vat_id
          # Information on the verification state of the company.
          sig { returns(T.nilable(::Stripe::Token::CreateParams::Account::Company::Verification)) }
          attr_accessor :verification
          sig {
            params(address: T.nilable(::Stripe::Token::CreateParams::Account::Company::Address), address_kana: T.nilable(::Stripe::Token::CreateParams::Account::Company::AddressKana), address_kanji: T.nilable(::Stripe::Token::CreateParams::Account::Company::AddressKanji), directors_provided: T.nilable(T::Boolean), directorship_declaration: T.nilable(::Stripe::Token::CreateParams::Account::Company::DirectorshipDeclaration), executives_provided: T.nilable(T::Boolean), export_license_id: T.nilable(String), export_purpose_code: T.nilable(String), name: T.nilable(String), name_kana: T.nilable(String), name_kanji: T.nilable(String), owners_provided: T.nilable(T::Boolean), ownership_declaration: T.nilable(::Stripe::Token::CreateParams::Account::Company::OwnershipDeclaration), ownership_declaration_shown_and_signed: T.nilable(T::Boolean), ownership_exemption_reason: T.nilable(T.any(String, String)), phone: T.nilable(String), registration_date: T.nilable(T.any(String, ::Stripe::Token::CreateParams::Account::Company::RegistrationDate)), registration_number: T.nilable(String), structure: T.nilable(T.any(String, String)), tax_id: T.nilable(String), tax_id_registrar: T.nilable(String), vat_id: T.nilable(String), verification: T.nilable(::Stripe::Token::CreateParams::Account::Company::Verification)).void
           }
          def initialize(
            address: nil,
            address_kana: nil,
            address_kanji: nil,
            directors_provided: nil,
            directorship_declaration: nil,
            executives_provided: nil,
            export_license_id: nil,
            export_purpose_code: nil,
            name: nil,
            name_kana: nil,
            name_kanji: nil,
            owners_provided: nil,
            ownership_declaration: nil,
            ownership_declaration_shown_and_signed: nil,
            ownership_exemption_reason: nil,
            phone: nil,
            registration_date: nil,
            registration_number: nil,
            structure: nil,
            tax_id: nil,
            tax_id_registrar: nil,
            vat_id: nil,
            verification: nil
          ); end
        end
        class Individual < Stripe::RequestParams
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
            # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :director
            # Whether the person has significant responsibility to control, manage, or direct the organization.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :executive
            # Whether the person is an owner of the account’s legal entity.
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :owner
            # The percent owned by the person of the account's legal entity.
            sig { returns(T.nilable(T.any(String, Float))) }
            attr_accessor :percent_ownership
            # The person's title (e.g., CEO, Support Engineer).
            sig { returns(T.nilable(String)) }
            attr_accessor :title
            sig {
              params(director: T.nilable(T::Boolean), executive: T.nilable(T::Boolean), owner: T.nilable(T::Boolean), percent_ownership: T.nilable(T.any(String, Float)), title: T.nilable(String)).void
             }
            def initialize(
              director: nil,
              executive: nil,
              owner: nil,
              percent_ownership: nil,
              title: nil
            ); end
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
              returns(T.nilable(::Stripe::Token::CreateParams::Account::Individual::Verification::AdditionalDocument))
             }
            attr_accessor :additional_document
            # An identifying document, either a passport or local ID card.
            sig {
              returns(T.nilable(::Stripe::Token::CreateParams::Account::Individual::Verification::Document))
             }
            attr_accessor :document
            sig {
              params(additional_document: T.nilable(::Stripe::Token::CreateParams::Account::Individual::Verification::AdditionalDocument), document: T.nilable(::Stripe::Token::CreateParams::Account::Individual::Verification::Document)).void
             }
            def initialize(additional_document: nil, document: nil); end
          end
          # The individual's primary address.
          sig { returns(T.nilable(::Stripe::Token::CreateParams::Account::Individual::Address)) }
          attr_accessor :address
          # The Kana variation of the individual's primary address (Japan only).
          sig {
            returns(T.nilable(::Stripe::Token::CreateParams::Account::Individual::AddressKana))
           }
          attr_accessor :address_kana
          # The Kanji variation of the individual's primary address (Japan only).
          sig {
            returns(T.nilable(::Stripe::Token::CreateParams::Account::Individual::AddressKanji))
           }
          attr_accessor :address_kanji
          # The individual's date of birth.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Token::CreateParams::Account::Individual::Dob)))
           }
          attr_accessor :dob
          # The individual's email address.
          sig { returns(T.nilable(String)) }
          attr_accessor :email
          # The individual's first name.
          sig { returns(T.nilable(String)) }
          attr_accessor :first_name
          # The Kana variation of the individual's first name (Japan only).
          sig { returns(T.nilable(String)) }
          attr_accessor :first_name_kana
          # The Kanji variation of the individual's first name (Japan only).
          sig { returns(T.nilable(String)) }
          attr_accessor :first_name_kanji
          # A list of alternate names or aliases that the individual is known by.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :full_name_aliases
          # The individual's gender
          sig { returns(T.nilable(String)) }
          attr_accessor :gender
          # The government-issued ID number of the individual, as appropriate for the representative's country. (Examples are a Social Security Number in the U.S., or a Social Insurance Number in Canada). Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
          sig { returns(T.nilable(String)) }
          attr_accessor :id_number
          # The government-issued secondary ID number of the individual, as appropriate for the representative's country, will be used for enhanced verification checks. In Thailand, this would be the laser code found on the back of an ID card. Instead of the number itself, you can also provide a [PII token created with Stripe.js](/js/tokens/create_token?type=pii).
          sig { returns(T.nilable(String)) }
          attr_accessor :id_number_secondary
          # The individual's last name.
          sig { returns(T.nilable(String)) }
          attr_accessor :last_name
          # The Kana variation of the individual's last name (Japan only).
          sig { returns(T.nilable(String)) }
          attr_accessor :last_name_kana
          # The Kanji variation of the individual's last name (Japan only).
          sig { returns(T.nilable(String)) }
          attr_accessor :last_name_kanji
          # The individual's maiden name.
          sig { returns(T.nilable(String)) }
          attr_accessor :maiden_name
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
          attr_accessor :metadata
          # The individual's phone number.
          sig { returns(T.nilable(String)) }
          attr_accessor :phone
          # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
          sig { returns(T.nilable(String)) }
          attr_accessor :political_exposure
          # The individual's registered address.
          sig {
            returns(T.nilable(::Stripe::Token::CreateParams::Account::Individual::RegisteredAddress))
           }
          attr_accessor :registered_address
          # Describes the person’s relationship to the account.
          sig {
            returns(T.nilable(::Stripe::Token::CreateParams::Account::Individual::Relationship))
           }
          attr_accessor :relationship
          # The last four digits of the individual's Social Security Number (U.S. only).
          sig { returns(T.nilable(String)) }
          attr_accessor :ssn_last_4
          # The individual's verification document information.
          sig {
            returns(T.nilable(::Stripe::Token::CreateParams::Account::Individual::Verification))
           }
          attr_accessor :verification
          sig {
            params(address: T.nilable(::Stripe::Token::CreateParams::Account::Individual::Address), address_kana: T.nilable(::Stripe::Token::CreateParams::Account::Individual::AddressKana), address_kanji: T.nilable(::Stripe::Token::CreateParams::Account::Individual::AddressKanji), dob: T.nilable(T.any(String, ::Stripe::Token::CreateParams::Account::Individual::Dob)), email: T.nilable(String), first_name: T.nilable(String), first_name_kana: T.nilable(String), first_name_kanji: T.nilable(String), full_name_aliases: T.nilable(T.any(String, T::Array[String])), gender: T.nilable(String), id_number: T.nilable(String), id_number_secondary: T.nilable(String), last_name: T.nilable(String), last_name_kana: T.nilable(String), last_name_kanji: T.nilable(String), maiden_name: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), phone: T.nilable(String), political_exposure: T.nilable(String), registered_address: T.nilable(::Stripe::Token::CreateParams::Account::Individual::RegisteredAddress), relationship: T.nilable(::Stripe::Token::CreateParams::Account::Individual::Relationship), ssn_last_4: T.nilable(String), verification: T.nilable(::Stripe::Token::CreateParams::Account::Individual::Verification)).void
           }
          def initialize(
            address: nil,
            address_kana: nil,
            address_kanji: nil,
            dob: nil,
            email: nil,
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
            phone: nil,
            political_exposure: nil,
            registered_address: nil,
            relationship: nil,
            ssn_last_4: nil,
            verification: nil
          ); end
        end
        # The business type.
        sig { returns(T.nilable(String)) }
        attr_accessor :business_type
        # Information about the company or business.
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Account::Company)) }
        attr_accessor :company
        # Information about the person represented by the account.
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Account::Individual)) }
        attr_accessor :individual
        # Whether the user described by the data in the token has been shown [the Stripe Connected Account Agreement](/connect/account-tokens#stripe-connected-account-agreement). When creating an account token to create a new Connect account, this value must be `true`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :tos_shown_and_accepted
        sig {
          params(business_type: T.nilable(String), company: T.nilable(::Stripe::Token::CreateParams::Account::Company), individual: T.nilable(::Stripe::Token::CreateParams::Account::Individual), tos_shown_and_accepted: T.nilable(T::Boolean)).void
         }
        def initialize(
          business_type: nil,
          company: nil,
          individual: nil,
          tos_shown_and_accepted: nil
        ); end
      end
      class BankAccount < Stripe::RequestParams
        # The name of the person or business that owns the bank account. This field is required when attaching the bank account to a `Customer` object.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_holder_name
        # The type of entity that holds the account. It can be `company` or `individual`. This field is required when attaching the bank account to a `Customer` object.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_holder_type
        # The account number for the bank account, in string form. Must be a checking account.
        sig { returns(String) }
        attr_accessor :account_number
        # The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
        sig { returns(T.nilable(String)) }
        attr_accessor :account_type
        # The country in which the bank account is located.
        sig { returns(String) }
        attr_accessor :country
        # The currency the bank account is in. This must be a country/currency pairing that [Stripe supports.](https://stripe.com/docs/payouts)
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # The ID of a Payment Method with a `type` of `us_bank_account`. The Payment Method's bank account information will be copied and returned as a Bank Account Token. This parameter is exclusive with respect to all other parameters in the `bank_account` hash. You must include the top-level `customer` parameter if the Payment Method is attached to a `Customer` object. If the Payment Method is not attached to a `Customer` object, it will be consumed and cannot be used again. You may not use Payment Methods which were created by a Setup Intent with `attach_to_self=true`.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_method
        # The routing number, sort code, or other country-appropriate institution number for the bank account. For US bank accounts, this is required and should be the ACH routing number, not the wire routing number. If you are providing an IBAN for `account_number`, this field is not required.
        sig { returns(T.nilable(String)) }
        attr_accessor :routing_number
        sig {
          params(account_holder_name: T.nilable(String), account_holder_type: T.nilable(String), account_number: String, account_type: T.nilable(String), country: String, currency: T.nilable(String), payment_method: T.nilable(String), routing_number: T.nilable(String)).void
         }
        def initialize(
          account_holder_name: nil,
          account_holder_type: nil,
          account_number: nil,
          account_type: nil,
          country: nil,
          currency: nil,
          payment_method: nil,
          routing_number: nil
        ); end
      end
      class Card < Stripe::RequestParams
        class Networks < Stripe::RequestParams
          # The customer's preferred card network for co-branded cards. Supports `cartes_bancaires`, `mastercard`, or `visa`. Selection of a network that does not apply to the card will be stored as `invalid_preference` on the card.
          sig { returns(T.nilable(String)) }
          attr_accessor :preferred
          sig { params(preferred: T.nilable(String)).void }
          def initialize(preferred: nil); end
        end
        # City / District / Suburb / Town / Village.
        sig { returns(T.nilable(String)) }
        attr_accessor :address_city
        # Billing address country, if provided.
        sig { returns(T.nilable(String)) }
        attr_accessor :address_country
        # Address line 1 (Street address / PO Box / Company name).
        sig { returns(T.nilable(String)) }
        attr_accessor :address_line1
        # Address line 2 (Apartment / Suite / Unit / Building).
        sig { returns(T.nilable(String)) }
        attr_accessor :address_line2
        # State / County / Province / Region.
        sig { returns(T.nilable(String)) }
        attr_accessor :address_state
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        attr_accessor :address_zip
        # Required in order to add the card to an account; in all other cases, this parameter is not used. When added to an account, the card (which must be a debit card) can be used as a transfer destination for funds in this currency.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency
        # Card security code. Highly recommended to always include this value.
        sig { returns(T.nilable(String)) }
        attr_accessor :cvc
        # Two-digit number representing the card's expiration month.
        sig { returns(String) }
        attr_accessor :exp_month
        # Two- or four-digit number representing the card's expiration year.
        sig { returns(String) }
        attr_accessor :exp_year
        # Cardholder's full name.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        # Contains information about card networks used to process the payment.
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Card::Networks)) }
        attr_accessor :networks
        # The card number, as a string without any separators.
        sig { returns(String) }
        attr_accessor :number
        sig {
          params(address_city: T.nilable(String), address_country: T.nilable(String), address_line1: T.nilable(String), address_line2: T.nilable(String), address_state: T.nilable(String), address_zip: T.nilable(String), currency: T.nilable(String), cvc: T.nilable(String), exp_month: String, exp_year: String, name: T.nilable(String), networks: T.nilable(::Stripe::Token::CreateParams::Card::Networks), number: String).void
         }
        def initialize(
          address_city: nil,
          address_country: nil,
          address_line1: nil,
          address_line2: nil,
          address_state: nil,
          address_zip: nil,
          currency: nil,
          cvc: nil,
          exp_month: nil,
          exp_year: nil,
          name: nil,
          networks: nil,
          number: nil
        ); end
      end
      class CvcUpdate < Stripe::RequestParams
        # The CVC value, in string form.
        sig { returns(String) }
        attr_accessor :cvc
        sig { params(cvc: String).void }
        def initialize(cvc: nil); end
      end
      class Person < Stripe::RequestParams
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
            returns(T.nilable(::Stripe::Token::CreateParams::Person::AdditionalTosAcceptances::Account))
           }
          attr_accessor :account
          sig {
            params(account: T.nilable(::Stripe::Token::CreateParams::Person::AdditionalTosAcceptances::Account)).void
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
            returns(T.nilable(::Stripe::Token::CreateParams::Person::Documents::CompanyAuthorization))
           }
          attr_accessor :company_authorization
          # One or more documents showing the person's passport page with photo and personal data.
          sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::Documents::Passport)) }
          attr_accessor :passport
          # One or more documents showing the person's visa required for living in the country where they are residing.
          sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::Documents::Visa)) }
          attr_accessor :visa
          sig {
            params(company_authorization: T.nilable(::Stripe::Token::CreateParams::Person::Documents::CompanyAuthorization), passport: T.nilable(::Stripe::Token::CreateParams::Person::Documents::Passport), visa: T.nilable(::Stripe::Token::CreateParams::Person::Documents::Visa)).void
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
            returns(T.nilable(::Stripe::Token::CreateParams::Person::UsCfpbData::EthnicityDetails))
           }
          attr_accessor :ethnicity_details
          # The persons race details
          sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::UsCfpbData::RaceDetails)) }
          attr_accessor :race_details
          # The persons self-identified gender
          sig { returns(T.nilable(String)) }
          attr_accessor :self_identified_gender
          sig {
            params(ethnicity_details: T.nilable(::Stripe::Token::CreateParams::Person::UsCfpbData::EthnicityDetails), race_details: T.nilable(::Stripe::Token::CreateParams::Person::UsCfpbData::RaceDetails), self_identified_gender: T.nilable(String)).void
           }
          def initialize(
            ethnicity_details: nil,
            race_details: nil,
            self_identified_gender: nil
          ); end
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
            returns(T.nilable(::Stripe::Token::CreateParams::Person::Verification::AdditionalDocument))
           }
          attr_accessor :additional_document
          # An identifying document, either a passport or local ID card.
          sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::Verification::Document)) }
          attr_accessor :document
          sig {
            params(additional_document: T.nilable(::Stripe::Token::CreateParams::Person::Verification::AdditionalDocument), document: T.nilable(::Stripe::Token::CreateParams::Person::Verification::Document)).void
           }
          def initialize(additional_document: nil, document: nil); end
        end
        # Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::AdditionalTosAcceptances)) }
        attr_accessor :additional_tos_acceptances
        # The person's address.
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::Address)) }
        attr_accessor :address
        # The Kana variation of the person's address (Japan only).
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::AddressKana)) }
        attr_accessor :address_kana
        # The Kanji variation of the person's address (Japan only).
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::AddressKanji)) }
        attr_accessor :address_kanji
        # The person's date of birth.
        sig { returns(T.nilable(T.any(String, ::Stripe::Token::CreateParams::Person::Dob))) }
        attr_accessor :dob
        # Documents that may be submitted to satisfy various informational requests.
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::Documents)) }
        attr_accessor :documents
        # The person's email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
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
        # The person's phone number.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        # Indicates if the person or any of their representatives, family members, or other closely related persons, declares that they hold or have held an important public job or function, in any jurisdiction.
        sig { returns(T.nilable(String)) }
        attr_accessor :political_exposure
        # The person's registered address.
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::RegisteredAddress)) }
        attr_accessor :registered_address
        # The relationship that this person has with the account's legal entity.
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::Relationship)) }
        attr_accessor :relationship
        # The last four digits of the person's Social Security number (U.S. only).
        sig { returns(T.nilable(String)) }
        attr_accessor :ssn_last_4
        # Demographic data related to the person.
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::UsCfpbData)) }
        attr_accessor :us_cfpb_data
        # The person's verification status.
        sig { returns(T.nilable(::Stripe::Token::CreateParams::Person::Verification)) }
        attr_accessor :verification
        sig {
          params(additional_tos_acceptances: T.nilable(::Stripe::Token::CreateParams::Person::AdditionalTosAcceptances), address: T.nilable(::Stripe::Token::CreateParams::Person::Address), address_kana: T.nilable(::Stripe::Token::CreateParams::Person::AddressKana), address_kanji: T.nilable(::Stripe::Token::CreateParams::Person::AddressKanji), dob: T.nilable(T.any(String, ::Stripe::Token::CreateParams::Person::Dob)), documents: T.nilable(::Stripe::Token::CreateParams::Person::Documents), email: T.nilable(String), first_name: T.nilable(String), first_name_kana: T.nilable(String), first_name_kanji: T.nilable(String), full_name_aliases: T.nilable(T.any(String, T::Array[String])), gender: T.nilable(String), id_number: T.nilable(String), id_number_secondary: T.nilable(String), last_name: T.nilable(String), last_name_kana: T.nilable(String), last_name_kanji: T.nilable(String), maiden_name: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), nationality: T.nilable(String), phone: T.nilable(String), political_exposure: T.nilable(String), registered_address: T.nilable(::Stripe::Token::CreateParams::Person::RegisteredAddress), relationship: T.nilable(::Stripe::Token::CreateParams::Person::Relationship), ssn_last_4: T.nilable(String), us_cfpb_data: T.nilable(::Stripe::Token::CreateParams::Person::UsCfpbData), verification: T.nilable(::Stripe::Token::CreateParams::Person::Verification)).void
         }
        def initialize(
          additional_tos_acceptances: nil,
          address: nil,
          address_kana: nil,
          address_kanji: nil,
          dob: nil,
          documents: nil,
          email: nil,
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
          phone: nil,
          political_exposure: nil,
          registered_address: nil,
          relationship: nil,
          ssn_last_4: nil,
          us_cfpb_data: nil,
          verification: nil
        ); end
      end
      class Pii < Stripe::RequestParams
        # The `id_number` for the PII, in string form.
        sig { returns(T.nilable(String)) }
        attr_accessor :id_number
        sig { params(id_number: T.nilable(String)).void }
        def initialize(id_number: nil); end
      end
      # Information for the account this token represents.
      sig { returns(T.nilable(::Stripe::Token::CreateParams::Account)) }
      attr_accessor :account
      # The bank account this token will represent.
      sig { returns(T.nilable(::Stripe::Token::CreateParams::BankAccount)) }
      attr_accessor :bank_account
      # The card this token will represent. If you also pass in a customer, the card must be the ID of a card belonging to the customer. Otherwise, if you do not pass in a customer, this is a dictionary containing a user's credit card details, with the options described below.
      sig { returns(T.nilable(T.any(::Stripe::Token::CreateParams::Card, String))) }
      attr_accessor :card
      # Create a token for the customer, which is owned by the application's account. You can only use this with an [OAuth access token](https://stripe.com/docs/connect/standard-accounts) or [Stripe-Account header](https://stripe.com/docs/connect/authentication). Learn more about [cloning saved payment methods](https://stripe.com/docs/connect/cloning-saved-payment-methods).
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # The updated CVC value this token represents.
      sig { returns(T.nilable(::Stripe::Token::CreateParams::CvcUpdate)) }
      attr_accessor :cvc_update
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Information for the person this token represents.
      sig { returns(T.nilable(::Stripe::Token::CreateParams::Person)) }
      attr_accessor :person
      # The PII this token represents.
      sig { returns(T.nilable(::Stripe::Token::CreateParams::Pii)) }
      attr_accessor :pii
      sig {
        params(account: T.nilable(::Stripe::Token::CreateParams::Account), bank_account: T.nilable(::Stripe::Token::CreateParams::BankAccount), card: T.nilable(T.any(::Stripe::Token::CreateParams::Card, String)), customer: T.nilable(String), cvc_update: T.nilable(::Stripe::Token::CreateParams::CvcUpdate), expand: T.nilable(T::Array[String]), person: T.nilable(::Stripe::Token::CreateParams::Person), pii: T.nilable(::Stripe::Token::CreateParams::Pii)).void
       }
      def initialize(
        account: nil,
        bank_account: nil,
        card: nil,
        customer: nil,
        cvc_update: nil,
        expand: nil,
        person: nil,
        pii: nil
      ); end
    end
    # Creates a single-use token that represents a bank account's details.
    # You can use this token with any v1 API method in place of a bank account dictionary. You can only use this token once. To do so, attach it to a [connected account](https://docs.stripe.com/api#accounts) where [controller.requirement_collection](https://docs.stripe.com/api/accounts/object#account_object-controller-requirement_collection) is application, which includes Custom accounts.
    sig {
      params(params: T.any(::Stripe::Token::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Token)
     }
    def self.create(params = {}, opts = {}); end
  end
end