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
    end
  end
end