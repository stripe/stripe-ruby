# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # You can [create physical or virtual cards](https://stripe.com/docs/issuing) that are issued to cardholders.
    class Card < APIResource
      class Shipping < Stripe::StripeObject
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
        class AddressValidation < Stripe::StripeObject
          class NormalizedAddress < Stripe::StripeObject
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
          # The address validation capabilities to use.
          sig { returns(String) }
          attr_reader :mode
          # The normalized shipping address.
          sig { returns(T.nilable(NormalizedAddress)) }
          attr_reader :normalized_address
          # The validation result for the shipping address.
          sig { returns(T.nilable(String)) }
          attr_reader :result
        end
        class Customs < Stripe::StripeObject
          # A registration number used for customs in Europe. See [https://www.gov.uk/eori](https://www.gov.uk/eori) for the UK and [https://ec.europa.eu/taxation_customs/business/customs-procedures-import-and-export/customs-procedures/economic-operators-registration-and-identification-number-eori_en](https://ec.europa.eu/taxation_customs/business/customs-procedures-import-and-export/customs-procedures/economic-operators-registration-and-identification-number-eori_en) for the EU.
          sig { returns(T.nilable(String)) }
          attr_reader :eori_number
        end
        # Attribute for field address
        sig { returns(Address) }
        attr_reader :address
        # Address validation details for the shipment.
        sig { returns(T.nilable(AddressValidation)) }
        attr_reader :address_validation
        # The delivery company that shipped a card.
        sig { returns(T.nilable(String)) }
        attr_reader :carrier
        # Additional information that may be required for clearing customs.
        sig { returns(T.nilable(Customs)) }
        attr_reader :customs
        # A unix timestamp representing a best estimate of when the card will be delivered.
        sig { returns(T.nilable(Integer)) }
        attr_reader :eta
        # Recipient name.
        sig { returns(String) }
        attr_reader :name
        # The phone number of the receiver of the shipment. Our courier partners will use this number to contact you in the event of card delivery issues. For individual shipments to the EU/UK, if this field is empty, we will provide them with the phone number provided when the cardholder was initially created.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number
        # Whether a signature is required for card delivery. This feature is only supported for US users. Standard shipping service does not support signature on delivery. The default value for standard shipping service is false and for express and priority services is true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :require_signature
        # Shipment service, such as `standard` or `express`.
        sig { returns(String) }
        attr_reader :service
        # The delivery status of the card.
        sig { returns(T.nilable(String)) }
        attr_reader :status
        # A tracking number for a card shipment.
        sig { returns(T.nilable(String)) }
        attr_reader :tracking_number
        # A link to the shipping carrier's site where you can view detailed information about a card shipment.
        sig { returns(T.nilable(String)) }
        attr_reader :tracking_url
        # Packaging options.
        sig { returns(String) }
        attr_reader :type
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
        # Limit spending with amount-based rules that apply across any cards this card replaced (i.e., its `replacement_for` card and _that_ card's `replacement_for` card, up the chain).
        sig { returns(T.nilable(T::Array[SpendingLimit])) }
        attr_reader :spending_limits
        # Currency of the amounts within `spending_limits`. Always the same as the currency of the card.
        sig { returns(T.nilable(String)) }
        attr_reader :spending_limits_currency
      end
      class Wallets < Stripe::StripeObject
        class ApplePay < Stripe::StripeObject
          # Apple Pay Eligibility
          sig { returns(T::Boolean) }
          attr_reader :eligible
          # Reason the card is ineligible for Apple Pay
          sig { returns(T.nilable(String)) }
          attr_reader :ineligible_reason
        end
        class GooglePay < Stripe::StripeObject
          # Google Pay Eligibility
          sig { returns(T::Boolean) }
          attr_reader :eligible
          # Reason the card is ineligible for Google Pay
          sig { returns(T.nilable(String)) }
          attr_reader :ineligible_reason
        end
        # Attribute for field apple_pay
        sig { returns(ApplePay) }
        attr_reader :apple_pay
        # Attribute for field google_pay
        sig { returns(GooglePay) }
        attr_reader :google_pay
        # Unique identifier for a card used with digital wallets
        sig { returns(T.nilable(String)) }
        attr_reader :primary_account_identifier
      end
      # The brand of the card.
      sig { returns(String) }
      attr_reader :brand

      # The reason why the card was canceled.
      sig { returns(T.nilable(String)) }
      attr_reader :cancellation_reason

      # An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://stripe.com/docs/issuing) cards.
      #
      # Related guide: [How to create a cardholder](https://stripe.com/docs/issuing/cards/virtual/issue-cards#create-cardholder)
      sig { returns(Stripe::Issuing::Cardholder) }
      attr_reader :cardholder

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Supported currencies are `usd` in the US, `eur` in the EU, and `gbp` in the UK.
      sig { returns(String) }
      attr_reader :currency

      # The card's CVC. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint.
      sig { returns(String) }
      attr_reader :cvc

      # The expiration month of the card.
      sig { returns(Integer) }
      attr_reader :exp_month

      # The expiration year of the card.
      sig { returns(Integer) }
      attr_reader :exp_year

      # The financial account this card is attached to.
      sig { returns(T.nilable(String)) }
      attr_reader :financial_account

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # The last 4 digits of the card number.
      sig { returns(String) }
      attr_reader :last4

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      # The full unredacted card number. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint.
      sig { returns(String) }
      attr_reader :number

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The personalization design object belonging to this card.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::PersonalizationDesign))) }
      attr_reader :personalization_design

      # The latest card that replaces this card, if any.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Card))) }
      attr_reader :replaced_by

      # The card this card replaces, if any.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Card))) }
      attr_reader :replacement_for

      # The reason why the previous card needed to be replaced.
      sig { returns(T.nilable(String)) }
      attr_reader :replacement_reason

      # Where and how the card will be shipped.
      sig { returns(T.nilable(Shipping)) }
      attr_reader :shipping

      # Attribute for field spending_controls
      sig { returns(SpendingControls) }
      attr_reader :spending_controls

      # Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
      sig { returns(String) }
      attr_reader :status

      # The type of the card.
      sig { returns(String) }
      attr_reader :type

      # Information relating to digital wallets (like Apple Pay and Google Pay).
      sig { returns(T.nilable(Wallets)) }
      attr_reader :wallets
    end
  end
end