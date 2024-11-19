# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://stripe.com/docs/issuing) cards.
    #
    # Related guide: [How to create a cardholder](https://stripe.com/docs/issuing/cards/virtual/issue-cards#create-cardholder)
    class Cardholder < APIResource
      class Billing < Stripe::StripeObject
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
        sig { returns(Address) }
        attr_reader :address
      end
      class Company < Stripe::StripeObject
        sig { returns(T::Boolean) }
        attr_reader :tax_id_provided
      end
      class Individual < Stripe::StripeObject
        class CardIssuing < Stripe::StripeObject
          class UserTermsAcceptance < Stripe::StripeObject
            sig { returns(T.nilable(Integer)) }
            attr_reader :date
            sig { returns(T.nilable(String)) }
            attr_reader :ip
            sig { returns(T.nilable(String)) }
            attr_reader :user_agent
          end
          sig { returns(T.nilable(UserTermsAcceptance)) }
          attr_reader :user_terms_acceptance
        end
        class Dob < Stripe::StripeObject
          sig { returns(T.nilable(Integer)) }
          attr_reader :day
          sig { returns(T.nilable(Integer)) }
          attr_reader :month
          sig { returns(T.nilable(Integer)) }
          attr_reader :year
        end
        class Verification < Stripe::StripeObject
          class Document < Stripe::StripeObject
            sig { returns(T.nilable(T.any(String, Stripe::File))) }
            attr_reader :back
            sig { returns(T.nilable(T.any(String, Stripe::File))) }
            attr_reader :front
          end
          sig { returns(T.nilable(Document)) }
          attr_reader :document
        end
        sig { returns(T.nilable(CardIssuing)) }
        attr_reader :card_issuing
        sig { returns(T.nilable(Dob)) }
        attr_reader :dob
        sig { returns(T.nilable(String)) }
        attr_reader :first_name
        sig { returns(T.nilable(String)) }
        attr_reader :last_name
        sig { returns(T.nilable(Verification)) }
        attr_reader :verification
      end
      class Requirements < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :disabled_reason
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :past_due
      end
      class SpendingControls < Stripe::StripeObject
        class SpendingLimit < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :categories
          sig { returns(String) }
          attr_reader :interval
        end
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_categories
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :allowed_merchant_countries
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocked_categories
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :blocked_merchant_countries
        sig { returns(T.nilable(T::Array[SpendingLimit])) }
        attr_reader :spending_limits
        sig { returns(T.nilable(String)) }
        attr_reader :spending_limits_currency
      end
      sig { returns(Billing) }
      # Attribute for field billing
      attr_reader :billing
      sig { returns(T.nilable(Company)) }
      # Additional information about a `company` cardholder.
      attr_reader :company
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(T.nilable(String)) }
      # The cardholder's email address.
      attr_reader :email
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T.nilable(Individual)) }
      # Additional information about an `individual` cardholder.
      attr_reader :individual
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # The cardholder's name. This will be printed on cards issued to them.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure#when-is-3d-secure-applied) for more details.
      attr_reader :phone_number
      sig { returns(T.nilable(T::Array[String])) }
      # The cardholder’s preferred locales (languages), ordered by preference. Locales can be `de`, `en`, `es`, `fr`, or `it`.
      #  This changes the language of the [3D Secure flow](https://stripe.com/docs/issuing/3d-secure) and one-time password messages sent to the cardholder.
      attr_reader :preferred_locales
      sig { returns(Requirements) }
      # Attribute for field requirements
      attr_reader :requirements
      sig { returns(T.nilable(SpendingControls)) }
      # Rules that control spending across this cardholder's cards. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
      attr_reader :spending_controls
      sig { returns(String) }
      # Specifies whether to permit authorizations on this cardholder's cards.
      attr_reader :status
      sig { returns(String) }
      # One of `individual` or `company`. See [Choose a cardholder type](https://stripe.com/docs/issuing/other/choose-cardholder) for more details.
      attr_reader :type
    end
  end
end