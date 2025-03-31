# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://stripe.com/docs/issuing) cards.
    #
    # Related guide: [How to create a cardholder](https://stripe.com/docs/issuing/cards/virtual/issue-cards#create-cardholder)
    class Cardholder < APIResource
      class Billing < Stripe::StripeObject
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
        # Attribute for field address
        sig { returns(Address) }
        attr_reader :address
      end
      class Company < Stripe::StripeObject
        # Whether the company's business ID number was provided.
        sig { returns(T::Boolean) }
        attr_reader :tax_id_provided
      end
      class Individual < Stripe::StripeObject
        class CardIssuing < Stripe::StripeObject
          class UserTermsAcceptance < Stripe::StripeObject
            # The Unix timestamp marking when the cardholder accepted the Authorized User Terms.
            sig { returns(T.nilable(Integer)) }
            attr_reader :date
            # The IP address from which the cardholder accepted the Authorized User Terms.
            sig { returns(T.nilable(String)) }
            attr_reader :ip
            # The user agent of the browser from which the cardholder accepted the Authorized User Terms.
            sig { returns(T.nilable(String)) }
            attr_reader :user_agent
          end
          # Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
          sig { returns(T.nilable(UserTermsAcceptance)) }
          attr_reader :user_terms_acceptance
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
        class Verification < Stripe::StripeObject
          class Document < Stripe::StripeObject
            # The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
            sig { returns(T.nilable(T.any(String, Stripe::File))) }
            attr_reader :back
            # The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
            sig { returns(T.nilable(T.any(String, Stripe::File))) }
            attr_reader :front
          end
          # An identifying document, either a passport or local ID card.
          sig { returns(T.nilable(Document)) }
          attr_reader :document
        end
        # Information related to the card_issuing program for this cardholder.
        sig { returns(T.nilable(CardIssuing)) }
        attr_reader :card_issuing
        # The date of birth of this cardholder.
        sig { returns(T.nilable(Dob)) }
        attr_reader :dob
        # The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name
        # The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name
        # Government-issued ID document for this cardholder.
        sig { returns(T.nilable(Verification)) }
        attr_reader :verification
      end
      class Requirements < Stripe::StripeObject
        # If `disabled_reason` is present, all cards will decline authorizations with `cardholder_verification_required` reason.
        sig { returns(T.nilable(String)) }
        attr_reader :disabled_reason
        # Array of fields that need to be collected in order to verify and re-enable the cardholder.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :past_due
      end
      class SpendingControls < Stripe::StripeObject
        class SpendingLimit < Stripe::StripeObject
          # Maximum amount allowed to spend per interval. This amount is in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(Integer) }
          attr_reader :amount
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :categories
          # Interval (or event) to which the amount applies.
          sig { returns(String) }
          attr_reader :interval
        end
        # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_categories
        # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_merchant_countries
        # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocked_categories
        # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocked_merchant_countries
        # Limit spending with amount-based rules that apply across this cardholder's cards.
        sig { returns(T.nilable(T::Array[SpendingLimit])) }
        attr_reader :spending_limits
        # Currency of the amounts within `spending_limits`.
        sig { returns(T.nilable(String)) }
        attr_reader :spending_limits_currency
      end
      # Attribute for field billing
      sig { returns(Billing) }
      attr_reader :billing
      # Additional information about a `company` cardholder.
      sig { returns(T.nilable(Company)) }
      attr_reader :company
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # The cardholder's email address.
      sig { returns(T.nilable(String)) }
      attr_reader :email
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Additional information about an `individual` cardholder.
      sig { returns(T.nilable(Individual)) }
      attr_reader :individual
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # The cardholder's name. This will be printed on cards issued to them.
      sig { returns(String) }
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure#when-is-3d-secure-applied) for more details.
      sig { returns(T.nilable(String)) }
      attr_reader :phone_number
      # The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
      #  This changes the language of the [3D Secure flow](https://stripe.com/docs/issuing/3d-secure) and one-time password messages sent to the cardholder.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :preferred_locales
      # Attribute for field requirements
      sig { returns(Requirements) }
      attr_reader :requirements
      # Rules that control spending across this cardholder's cards. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
      sig { returns(T.nilable(SpendingControls)) }
      attr_reader :spending_controls
      # Specifies whether to permit authorizations on this cardholder's cards.
      sig { returns(String) }
      attr_reader :status
      # One of `individual` or `company`. See [Choose a cardholder type](https://stripe.com/docs/issuing/other/choose-cardholder) for more details.
      sig { returns(String) }
      attr_reader :type
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return cardholders that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Issuing::Cardholder::ListParams::Created, Integer)))
         }
        attr_accessor :created
        # Only return cardholders that have the given email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # Only return cardholders that have the given phone number.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone_number
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return cardholders that have the given status. One of `active`, `inactive`, or `blocked`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        # Only return cardholders that have the given type. One of `individual` or `company`.
        sig { returns(T.nilable(String)) }
        attr_accessor :type
        sig {
          params(created: T.nilable(T.any(::Stripe::Issuing::Cardholder::ListParams::Created, Integer)), email: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), phone_number: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(
          created: nil,
          email: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          phone_number: nil,
          starting_after: nil,
          status: nil,
          type: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Billing < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: T.nilable(String), postal_code: String, state: T.nilable(String)).void
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
          # The cardholder’s billing address.
          sig { returns(::Stripe::Issuing::Cardholder::CreateParams::Billing::Address) }
          attr_accessor :address
          sig {
            params(address: ::Stripe::Issuing::Cardholder::CreateParams::Billing::Address).void
           }
          def initialize(address: nil); end
        end
        class Company < Stripe::RequestParams
          # The entity's business ID number.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id
          sig { params(tax_id: T.nilable(String)).void }
          def initialize(tax_id: nil); end
        end
        class Individual < Stripe::RequestParams
          class CardIssuing < Stripe::RequestParams
            class UserTermsAcceptance < Stripe::RequestParams
              # The Unix timestamp marking when the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :date
              # The IP address from which the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              sig { returns(T.nilable(String)) }
              attr_accessor :ip
              # The user agent of the browser from which the cardholder accepted the Authorized User Terms.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :user_agent
              sig {
                params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(T.nilable(String))).void
               }
              def initialize(date: nil, ip: nil, user_agent: nil); end
            end
            # Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
            sig {
              returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing::UserTermsAcceptance))
             }
            attr_accessor :user_terms_acceptance
            sig {
              params(user_terms_acceptance: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing::UserTermsAcceptance)).void
             }
            def initialize(user_terms_acceptance: nil); end
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
          class Verification < Stripe::RequestParams
            class Document < Stripe::RequestParams
              # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              sig { returns(T.nilable(String)) }
              attr_accessor :back
              # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              sig { returns(T.nilable(String)) }
              attr_accessor :front
              sig { params(back: T.nilable(String), front: T.nilable(String)).void }
              def initialize(back: nil, front: nil); end
            end
            # An identifying document, either a passport or local ID card.
            sig {
              returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification::Document))
             }
            attr_accessor :document
            sig {
              params(document: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification::Document)).void
             }
            def initialize(document: nil); end
          end
          # Information related to the card_issuing program for this cardholder.
          sig {
            returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing))
           }
          attr_accessor :card_issuing
          # The date of birth of this cardholder. Cardholders must be older than 13 years old.
          sig { returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Dob)) }
          attr_accessor :dob
          # The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          sig { returns(T.nilable(String)) }
          attr_accessor :first_name
          # The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          sig { returns(T.nilable(String)) }
          attr_accessor :last_name
          # Government-issued ID document for this cardholder.
          sig {
            returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification))
           }
          attr_accessor :verification
          sig {
            params(card_issuing: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::CardIssuing), dob: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Dob), first_name: T.nilable(String), last_name: T.nilable(String), verification: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual::Verification)).void
           }
          def initialize(
            card_issuing: nil,
            dob: nil,
            first_name: nil,
            last_name: nil,
            verification: nil
          ); end
        end
        class SpendingControls < Stripe::RequestParams
          class SpendingLimit < Stripe::RequestParams
            # Maximum amount allowed to spend per interval.
            sig { returns(Integer) }
            attr_accessor :amount
            # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :categories
            # Interval (or event) to which the amount applies.
            sig { returns(String) }
            attr_accessor :interval
            sig {
              params(amount: Integer, categories: T.nilable(T::Array[String]), interval: String).void
             }
            def initialize(amount: nil, categories: nil, interval: nil); end
          end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :allowed_categories
          # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :allowed_merchant_countries
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :blocked_categories
          # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :blocked_merchant_countries
          # Limit spending with amount-based rules that apply across this cardholder's cards.
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Cardholder::CreateParams::SpendingControls::SpendingLimit]))
           }
          attr_accessor :spending_limits
          # Currency of amounts within `spending_limits`. Defaults to your merchant country's currency.
          sig { returns(T.nilable(String)) }
          attr_accessor :spending_limits_currency
          sig {
            params(allowed_categories: T.nilable(T::Array[String]), allowed_merchant_countries: T.nilable(T::Array[String]), blocked_categories: T.nilable(T::Array[String]), blocked_merchant_countries: T.nilable(T::Array[String]), spending_limits: T.nilable(T::Array[::Stripe::Issuing::Cardholder::CreateParams::SpendingControls::SpendingLimit]), spending_limits_currency: T.nilable(String)).void
           }
          def initialize(
            allowed_categories: nil,
            allowed_merchant_countries: nil,
            blocked_categories: nil,
            blocked_merchant_countries: nil,
            spending_limits: nil,
            spending_limits_currency: nil
          ); end
        end
        # The cardholder's billing address.
        sig { returns(::Stripe::Issuing::Cardholder::CreateParams::Billing) }
        attr_accessor :billing
        # Additional information about a `company` cardholder.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Company)) }
        attr_accessor :company
        # The cardholder's email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Additional information about an `individual` cardholder.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual)) }
        attr_accessor :individual
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The cardholder's name. This will be printed on cards issued to them. The maximum length of this field is 24 characters. This field cannot contain any special characters or numbers.
        sig { returns(String) }
        attr_accessor :name
        # The cardholder's phone number. This will be transformed to [E.164](https://en.wikipedia.org/wiki/E.164) if it is not provided in that format already. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure#when-is-3d-secure-applied) for more details.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone_number
        # The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
        #  This changes the language of the [3D Secure flow](https://stripe.com/docs/issuing/3d-secure) and one-time password messages sent to the cardholder.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :preferred_locales
        # Rules that control spending across this cardholder's cards. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::CreateParams::SpendingControls)) }
        attr_accessor :spending_controls
        # Specifies whether to permit authorizations on this cardholder's cards. Defaults to `active`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        # One of `individual` or `company`. See [Choose a cardholder type](https://stripe.com/docs/issuing/other/choose-cardholder) for more details.
        sig { returns(T.nilable(String)) }
        attr_accessor :type
        sig {
          params(billing: ::Stripe::Issuing::Cardholder::CreateParams::Billing, company: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Company), email: T.nilable(String), expand: T.nilable(T::Array[String]), individual: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::Individual), metadata: T.nilable(T::Hash[String, String]), name: String, phone_number: T.nilable(String), preferred_locales: T.nilable(T::Array[String]), spending_controls: T.nilable(::Stripe::Issuing::Cardholder::CreateParams::SpendingControls), status: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(
          billing: nil,
          company: nil,
          email: nil,
          expand: nil,
          individual: nil,
          metadata: nil,
          name: nil,
          phone_number: nil,
          preferred_locales: nil,
          spending_controls: nil,
          status: nil,
          type: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        class Billing < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_accessor :line2
            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_accessor :state
            sig {
              params(city: String, country: String, line1: String, line2: T.nilable(String), postal_code: String, state: T.nilable(String)).void
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
          # The cardholder’s billing address.
          sig { returns(::Stripe::Issuing::Cardholder::UpdateParams::Billing::Address) }
          attr_accessor :address
          sig {
            params(address: ::Stripe::Issuing::Cardholder::UpdateParams::Billing::Address).void
           }
          def initialize(address: nil); end
        end
        class Company < Stripe::RequestParams
          # The entity's business ID number.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_id
          sig { params(tax_id: T.nilable(String)).void }
          def initialize(tax_id: nil); end
        end
        class Individual < Stripe::RequestParams
          class CardIssuing < Stripe::RequestParams
            class UserTermsAcceptance < Stripe::RequestParams
              # The Unix timestamp marking when the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :date
              # The IP address from which the cardholder accepted the Authorized User Terms. Required for Celtic Spend Card users.
              sig { returns(T.nilable(String)) }
              attr_accessor :ip
              # The user agent of the browser from which the cardholder accepted the Authorized User Terms.
              sig { returns(T.nilable(T.nilable(String))) }
              attr_accessor :user_agent
              sig {
                params(date: T.nilable(Integer), ip: T.nilable(String), user_agent: T.nilable(T.nilable(String))).void
               }
              def initialize(date: nil, ip: nil, user_agent: nil); end
            end
            # Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
            sig {
              returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing::UserTermsAcceptance))
             }
            attr_accessor :user_terms_acceptance
            sig {
              params(user_terms_acceptance: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing::UserTermsAcceptance)).void
             }
            def initialize(user_terms_acceptance: nil); end
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
          class Verification < Stripe::RequestParams
            class Document < Stripe::RequestParams
              # The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              sig { returns(T.nilable(String)) }
              attr_accessor :back
              # The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
              sig { returns(T.nilable(String)) }
              attr_accessor :front
              sig { params(back: T.nilable(String), front: T.nilable(String)).void }
              def initialize(back: nil, front: nil); end
            end
            # An identifying document, either a passport or local ID card.
            sig {
              returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification::Document))
             }
            attr_accessor :document
            sig {
              params(document: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification::Document)).void
             }
            def initialize(document: nil); end
          end
          # Information related to the card_issuing program for this cardholder.
          sig {
            returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing))
           }
          attr_accessor :card_issuing
          # The date of birth of this cardholder. Cardholders must be older than 13 years old.
          sig { returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Dob)) }
          attr_accessor :dob
          # The first name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          sig { returns(T.nilable(String)) }
          attr_accessor :first_name
          # The last name of this cardholder. Required before activating Cards. This field cannot contain any numbers, special characters (except periods, commas, hyphens, spaces and apostrophes) or non-latin letters.
          sig { returns(T.nilable(String)) }
          attr_accessor :last_name
          # Government-issued ID document for this cardholder.
          sig {
            returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification))
           }
          attr_accessor :verification
          sig {
            params(card_issuing: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::CardIssuing), dob: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Dob), first_name: T.nilable(String), last_name: T.nilable(String), verification: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual::Verification)).void
           }
          def initialize(
            card_issuing: nil,
            dob: nil,
            first_name: nil,
            last_name: nil,
            verification: nil
          ); end
        end
        class SpendingControls < Stripe::RequestParams
          class SpendingLimit < Stripe::RequestParams
            # Maximum amount allowed to spend per interval.
            sig { returns(Integer) }
            attr_accessor :amount
            # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :categories
            # Interval (or event) to which the amount applies.
            sig { returns(String) }
            attr_accessor :interval
            sig {
              params(amount: Integer, categories: T.nilable(T::Array[String]), interval: String).void
             }
            def initialize(amount: nil, categories: nil, interval: nil); end
          end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :allowed_categories
          # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :allowed_merchant_countries
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :blocked_categories
          # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :blocked_merchant_countries
          # Limit spending with amount-based rules that apply across this cardholder's cards.
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls::SpendingLimit]))
           }
          attr_accessor :spending_limits
          # Currency of amounts within `spending_limits`. Defaults to your merchant country's currency.
          sig { returns(T.nilable(String)) }
          attr_accessor :spending_limits_currency
          sig {
            params(allowed_categories: T.nilable(T::Array[String]), allowed_merchant_countries: T.nilable(T::Array[String]), blocked_categories: T.nilable(T::Array[String]), blocked_merchant_countries: T.nilable(T::Array[String]), spending_limits: T.nilable(T::Array[::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls::SpendingLimit]), spending_limits_currency: T.nilable(String)).void
           }
          def initialize(
            allowed_categories: nil,
            allowed_merchant_countries: nil,
            blocked_categories: nil,
            blocked_merchant_countries: nil,
            spending_limits: nil,
            spending_limits_currency: nil
          ); end
        end
        # The cardholder's billing address.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Billing)) }
        attr_accessor :billing
        # Additional information about a `company` cardholder.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Company)) }
        attr_accessor :company
        # The cardholder's email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Additional information about an `individual` cardholder.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual)) }
        attr_accessor :individual
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure) for more details.
        sig { returns(T.nilable(String)) }
        attr_accessor :phone_number
        # The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
        #  This changes the language of the [3D Secure flow](https://stripe.com/docs/issuing/3d-secure) and one-time password messages sent to the cardholder.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :preferred_locales
        # Rules that control spending across this cardholder's cards. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        sig { returns(T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls)) }
        attr_accessor :spending_controls
        # Specifies whether to permit authorizations on this cardholder's cards.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        sig {
          params(billing: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Billing), company: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Company), email: T.nilable(String), expand: T.nilable(T::Array[String]), individual: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::Individual), metadata: T.nilable(T::Hash[String, String]), phone_number: T.nilable(String), preferred_locales: T.nilable(T::Array[String]), spending_controls: T.nilable(::Stripe::Issuing::Cardholder::UpdateParams::SpendingControls), status: T.nilable(String)).void
         }
        def initialize(
          billing: nil,
          company: nil,
          email: nil,
          expand: nil,
          individual: nil,
          metadata: nil,
          phone_number: nil,
          preferred_locales: nil,
          spending_controls: nil,
          status: nil
        ); end
      end
      # Creates a new Issuing Cardholder object that can be issued cards.
      sig {
        params(params: T.any(::Stripe::Issuing::Cardholder::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Cardholder)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of Issuing Cardholder objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::Cardholder::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates the specified Issuing Cardholder object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(cardholder: String, params: T.any(::Stripe::Issuing::Cardholder::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Cardholder)
       }
      def self.update(cardholder, params = {}, opts = {}); end
    end
  end
end