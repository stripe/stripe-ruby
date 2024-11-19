# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # You can [create physical or virtual cards](https://stripe.com/docs/issuing) that are issued to cardholders.
    class Card < APIResource
      class Shipping < Stripe::StripeObject
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
        class AddressValidation < Stripe::StripeObject
          class NormalizedAddress < Stripe::StripeObject
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
          sig { returns(String) }
          attr_reader :mode
          sig { returns(T.nilable(NormalizedAddress)) }
          attr_reader :normalized_address
          sig { returns(T.nilable(String)) }
          attr_reader :result
        end
        class Customs < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :eori_number
        end
        sig { returns(Address) }
        attr_reader :address
        sig { returns(T.nilable(AddressValidation)) }
        attr_reader :address_validation
        sig { returns(T.nilable(String)) }
        attr_reader :carrier
        sig { returns(T.nilable(Customs)) }
        attr_reader :customs
        sig { returns(T.nilable(Integer)) }
        attr_reader :eta
        sig { returns(String) }
        attr_reader :name
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :require_signature
        sig { returns(String) }
        attr_reader :service
        sig { returns(T.nilable(String)) }
        attr_reader :status
        sig { returns(T.nilable(String)) }
        attr_reader :tracking_number
        sig { returns(T.nilable(String)) }
        attr_reader :tracking_url
        sig { returns(String) }
        attr_reader :type
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
      class Wallets < Stripe::StripeObject
        class ApplePay < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :eligible
          sig { returns(T.nilable(String)) }
          attr_reader :ineligible_reason
        end
        class GooglePay < Stripe::StripeObject
          sig { returns(T::Boolean) }
          attr_reader :eligible
          sig { returns(T.nilable(String)) }
          attr_reader :ineligible_reason
        end
        sig { returns(ApplePay) }
        attr_reader :apple_pay
        sig { returns(GooglePay) }
        attr_reader :google_pay
        sig { returns(T.nilable(String)) }
        attr_reader :primary_account_identifier
      end
      sig { returns(String) }
      # The brand of the card.
      attr_reader :brand
      sig { returns(T.nilable(String)) }
      # The reason why the card was canceled.
      attr_reader :cancellation_reason
      sig { returns(Stripe::Issuing::Cardholder) }
      # An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://stripe.com/docs/issuing) cards.
      #
      # Related guide: [How to create a cardholder](https://stripe.com/docs/issuing/cards/virtual/issue-cards#create-cardholder)
      attr_reader :cardholder
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Supported currencies are `usd` in the US, `eur` in the EU, and `gbp` in the UK.
      attr_reader :currency
      sig { returns(String) }
      # The card's CVC. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint.
      attr_reader :cvc
      sig { returns(Integer) }
      # The expiration month of the card.
      attr_reader :exp_month
      sig { returns(Integer) }
      # The expiration year of the card.
      attr_reader :exp_year
      sig { returns(T.nilable(String)) }
      # The financial account this card is attached to.
      attr_reader :financial_account
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(String) }
      # The last 4 digits of the card number.
      attr_reader :last4
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # The full unredacted card number. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint.
      attr_reader :number
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::PersonalizationDesign))) }
      # The personalization design object belonging to this card.
      attr_reader :personalization_design
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Card))) }
      # The latest card that replaces this card, if any.
      attr_reader :replaced_by
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Card))) }
      # The card this card replaces, if any.
      attr_reader :replacement_for
      sig { returns(T.nilable(String)) }
      # The reason why the previous card needed to be replaced.
      attr_reader :replacement_reason
      sig { returns(T.nilable(Shipping)) }
      # Where and how the card will be shipped.
      attr_reader :shipping
      sig { returns(SpendingControls) }
      # Attribute for field spending_controls
      attr_reader :spending_controls
      sig { returns(String) }
      # Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
      attr_reader :status
      sig { returns(String) }
      # The type of the card.
      attr_reader :type
      sig { returns(T.nilable(Wallets)) }
      # Information relating to digital wallets (like Apple Pay and Google Pay).
      attr_reader :wallets
    end
  end
end