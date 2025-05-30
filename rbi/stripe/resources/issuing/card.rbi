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
        # Only return cards belonging to the Cardholder with the provided ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :cardholder
        # Only return cards that were issued during the given date interval.
        sig { returns(T.nilable(T.any(::Stripe::Issuing::Card::ListParams::Created, Integer))) }
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Only return cards that have the given expiration month.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :exp_month
        # Only return cards that have the given expiration year.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :exp_year
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Only return cards that have the given last four digits.
        sig { returns(T.nilable(String)) }
        attr_accessor :last4
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # Attribute for param field personalization_design
        sig { returns(T.nilable(String)) }
        attr_accessor :personalization_design
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return cards that have the given status. One of `active`, `inactive`, or `canceled`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        # Only return cards that have the given type. One of `virtual` or `physical`.
        sig { returns(T.nilable(String)) }
        attr_accessor :type
        sig {
          params(cardholder: T.nilable(String), created: T.nilable(T.any(::Stripe::Issuing::Card::ListParams::Created, Integer)), ending_before: T.nilable(String), exp_month: T.nilable(Integer), exp_year: T.nilable(Integer), expand: T.nilable(T::Array[String]), last4: T.nilable(String), limit: T.nilable(Integer), personalization_design: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(
          cardholder: nil,
          created: nil,
          ending_before: nil,
          exp_month: nil,
          exp_year: nil,
          expand: nil,
          last4: nil,
          limit: nil,
          personalization_design: nil,
          starting_after: nil,
          status: nil,
          type: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class Pin < Stripe::RequestParams
          # The card's desired new PIN, encrypted under Stripe's public key.
          sig { returns(T.nilable(String)) }
          attr_accessor :encrypted_number
          sig { params(encrypted_number: T.nilable(String)).void }
          def initialize(encrypted_number: nil); end
        end
        class Shipping < Stripe::RequestParams
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
          class AddressValidation < Stripe::RequestParams
            # The address validation capabilities to use.
            sig { returns(String) }
            attr_accessor :mode
            sig { params(mode: String).void }
            def initialize(mode: nil); end
          end
          class Customs < Stripe::RequestParams
            # The Economic Operators Registration and Identification (EORI) number to use for Customs. Required for bulk shipments to Europe.
            sig { returns(T.nilable(String)) }
            attr_accessor :eori_number
            sig { params(eori_number: T.nilable(String)).void }
            def initialize(eori_number: nil); end
          end
          # The address that the card is shipped to.
          sig { returns(::Stripe::Issuing::Card::CreateParams::Shipping::Address) }
          attr_accessor :address
          # Address validation settings.
          sig {
            returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping::AddressValidation))
           }
          attr_accessor :address_validation
          # Customs information for the shipment.
          sig { returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping::Customs)) }
          attr_accessor :customs
          # The name printed on the shipping label when shipping the card.
          sig { returns(String) }
          attr_accessor :name
          # Phone number of the recipient of the shipment.
          sig { returns(T.nilable(String)) }
          attr_accessor :phone_number
          # Whether a signature is required for card delivery.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :require_signature
          # Shipment service.
          sig { returns(T.nilable(String)) }
          attr_accessor :service
          # Packaging options.
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          sig {
            params(address: ::Stripe::Issuing::Card::CreateParams::Shipping::Address, address_validation: T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping::AddressValidation), customs: T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping::Customs), name: String, phone_number: T.nilable(String), require_signature: T.nilable(T::Boolean), service: T.nilable(String), type: T.nilable(String)).void
           }
          def initialize(
            address: nil,
            address_validation: nil,
            customs: nil,
            name: nil,
            phone_number: nil,
            require_signature: nil,
            service: nil,
            type: nil
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
          # Limit spending with amount-based rules that apply across any cards this card replaced (i.e., its `replacement_for` card and _that_ card's `replacement_for` card, up the chain).
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Card::CreateParams::SpendingControls::SpendingLimit]))
           }
          attr_accessor :spending_limits
          sig {
            params(allowed_categories: T.nilable(T::Array[String]), allowed_merchant_countries: T.nilable(T::Array[String]), blocked_categories: T.nilable(T::Array[String]), blocked_merchant_countries: T.nilable(T::Array[String]), spending_limits: T.nilable(T::Array[::Stripe::Issuing::Card::CreateParams::SpendingControls::SpendingLimit])).void
           }
          def initialize(
            allowed_categories: nil,
            allowed_merchant_countries: nil,
            blocked_categories: nil,
            blocked_merchant_countries: nil,
            spending_limits: nil
          ); end
        end
        # The [Cardholder](https://stripe.com/docs/api#issuing_cardholder_object) object with which the card will be associated.
        sig { returns(T.nilable(String)) }
        attr_accessor :cardholder
        # The currency for the card.
        sig { returns(String) }
        attr_accessor :currency
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The new financial account ID the card will be associated with. This field allows a card to be reassigned to a different financial account.
        sig { returns(T.nilable(String)) }
        attr_accessor :financial_account
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The personalization design object belonging to this card.
        sig { returns(T.nilable(String)) }
        attr_accessor :personalization_design
        # The desired PIN for this card.
        sig { returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Pin)) }
        attr_accessor :pin
        # The card this is meant to be a replacement for (if any).
        sig { returns(T.nilable(String)) }
        attr_accessor :replacement_for
        # If `replacement_for` is specified, this should indicate why that card is being replaced.
        sig { returns(T.nilable(String)) }
        attr_accessor :replacement_reason
        # The second line to print on the card. Max length: 24 characters.
        sig { returns(T.nilable(T.nilable(String))) }
        attr_accessor :second_line
        # The address where the card will be shipped.
        sig { returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping)) }
        attr_accessor :shipping
        # Rules that control spending for this card. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        sig { returns(T.nilable(::Stripe::Issuing::Card::CreateParams::SpendingControls)) }
        attr_accessor :spending_controls
        # Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        # The type of card to issue. Possible values are `physical` or `virtual`.
        sig { returns(String) }
        attr_accessor :type
        sig {
          params(cardholder: T.nilable(String), currency: String, expand: T.nilable(T::Array[String]), financial_account: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), personalization_design: T.nilable(String), pin: T.nilable(::Stripe::Issuing::Card::CreateParams::Pin), replacement_for: T.nilable(String), replacement_reason: T.nilable(String), second_line: T.nilable(T.nilable(String)), shipping: T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping), spending_controls: T.nilable(::Stripe::Issuing::Card::CreateParams::SpendingControls), status: T.nilable(String), type: String).void
         }
        def initialize(
          cardholder: nil,
          currency: nil,
          expand: nil,
          financial_account: nil,
          metadata: nil,
          personalization_design: nil,
          pin: nil,
          replacement_for: nil,
          replacement_reason: nil,
          second_line: nil,
          shipping: nil,
          spending_controls: nil,
          status: nil,
          type: nil
        ); end
      end
      class UpdateParams < Stripe::RequestParams
        class Pin < Stripe::RequestParams
          # The card's desired new PIN, encrypted under Stripe's public key.
          sig { returns(T.nilable(String)) }
          attr_accessor :encrypted_number
          sig { params(encrypted_number: T.nilable(String)).void }
          def initialize(encrypted_number: nil); end
        end
        class Shipping < Stripe::RequestParams
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
          class AddressValidation < Stripe::RequestParams
            # The address validation capabilities to use.
            sig { returns(String) }
            attr_accessor :mode
            sig { params(mode: String).void }
            def initialize(mode: nil); end
          end
          class Customs < Stripe::RequestParams
            # The Economic Operators Registration and Identification (EORI) number to use for Customs. Required for bulk shipments to Europe.
            sig { returns(T.nilable(String)) }
            attr_accessor :eori_number
            sig { params(eori_number: T.nilable(String)).void }
            def initialize(eori_number: nil); end
          end
          # The address that the card is shipped to.
          sig { returns(::Stripe::Issuing::Card::UpdateParams::Shipping::Address) }
          attr_accessor :address
          # Address validation settings.
          sig {
            returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping::AddressValidation))
           }
          attr_accessor :address_validation
          # Customs information for the shipment.
          sig { returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping::Customs)) }
          attr_accessor :customs
          # The name printed on the shipping label when shipping the card.
          sig { returns(String) }
          attr_accessor :name
          # Phone number of the recipient of the shipment.
          sig { returns(T.nilable(String)) }
          attr_accessor :phone_number
          # Whether a signature is required for card delivery.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :require_signature
          # Shipment service.
          sig { returns(T.nilable(String)) }
          attr_accessor :service
          # Packaging options.
          sig { returns(T.nilable(String)) }
          attr_accessor :type
          sig {
            params(address: ::Stripe::Issuing::Card::UpdateParams::Shipping::Address, address_validation: T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping::AddressValidation), customs: T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping::Customs), name: String, phone_number: T.nilable(String), require_signature: T.nilable(T::Boolean), service: T.nilable(String), type: T.nilable(String)).void
           }
          def initialize(
            address: nil,
            address_validation: nil,
            customs: nil,
            name: nil,
            phone_number: nil,
            require_signature: nil,
            service: nil,
            type: nil
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
          # Limit spending with amount-based rules that apply across any cards this card replaced (i.e., its `replacement_for` card and _that_ card's `replacement_for` card, up the chain).
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Card::UpdateParams::SpendingControls::SpendingLimit]))
           }
          attr_accessor :spending_limits
          sig {
            params(allowed_categories: T.nilable(T::Array[String]), allowed_merchant_countries: T.nilable(T::Array[String]), blocked_categories: T.nilable(T::Array[String]), blocked_merchant_countries: T.nilable(T::Array[String]), spending_limits: T.nilable(T::Array[::Stripe::Issuing::Card::UpdateParams::SpendingControls::SpendingLimit])).void
           }
          def initialize(
            allowed_categories: nil,
            allowed_merchant_countries: nil,
            blocked_categories: nil,
            blocked_merchant_countries: nil,
            spending_limits: nil
          ); end
        end
        # Reason why the `status` of this card is `canceled`.
        sig { returns(T.nilable(String)) }
        attr_accessor :cancellation_reason
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
        attr_accessor :metadata
        # Attribute for param field personalization_design
        sig { returns(T.nilable(String)) }
        attr_accessor :personalization_design
        # The desired new PIN for this card.
        sig { returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Pin)) }
        attr_accessor :pin
        # Updated shipping information for the card.
        sig { returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping)) }
        attr_accessor :shipping
        # Rules that control spending for this card. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        sig { returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::SpendingControls)) }
        attr_accessor :spending_controls
        # Dictates whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`. If this card is being canceled because it was lost or stolen, this information should be provided as `cancellation_reason`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        sig {
          params(cancellation_reason: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String]))), personalization_design: T.nilable(String), pin: T.nilable(::Stripe::Issuing::Card::UpdateParams::Pin), shipping: T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping), spending_controls: T.nilable(::Stripe::Issuing::Card::UpdateParams::SpendingControls), status: T.nilable(String)).void
         }
        def initialize(
          cancellation_reason: nil,
          expand: nil,
          metadata: nil,
          personalization_design: nil,
          pin: nil,
          shipping: nil,
          spending_controls: nil,
          status: nil
        ); end
      end
      class DeliverCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class FailCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ReturnCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ShipCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class SubmitCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Creates an Issuing Card object.
      sig {
        params(params: T.any(::Stripe::Issuing::Card::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Card)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of Issuing Card objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::Card::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates the specified Issuing Card object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(card: String, params: T.any(::Stripe::Issuing::Card::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Card)
       }
      def self.update(card, params = {}, opts = {}); end
    end
  end
end