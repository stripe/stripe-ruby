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
          def city; end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(T.nilable(String)) }
          def country; end
          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(T.nilable(String)) }
          def line1; end
          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(T.nilable(String)) }
          def line2; end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          # State, county, province, or region.
          sig { returns(T.nilable(String)) }
          def state; end
        end
        class AddressValidation < Stripe::StripeObject
          class NormalizedAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          # The address validation capabilities to use.
          sig { returns(String) }
          def mode; end
          # The normalized shipping address.
          sig { returns(T.nilable(NormalizedAddress)) }
          def normalized_address; end
          # The validation result for the shipping address.
          sig { returns(T.nilable(String)) }
          def result; end
        end
        class Customs < Stripe::StripeObject
          # A registration number used for customs in Europe. See [https://www.gov.uk/eori](https://www.gov.uk/eori) for the UK and [https://ec.europa.eu/taxation_customs/business/customs-procedures-import-and-export/customs-procedures/economic-operators-registration-and-identification-number-eori_en](https://ec.europa.eu/taxation_customs/business/customs-procedures-import-and-export/customs-procedures/economic-operators-registration-and-identification-number-eori_en) for the EU.
          sig { returns(T.nilable(String)) }
          def eori_number; end
        end
        # Attribute for field address
        sig { returns(Address) }
        def address; end
        # Address validation details for the shipment.
        sig { returns(T.nilable(AddressValidation)) }
        def address_validation; end
        # The delivery company that shipped a card.
        sig { returns(T.nilable(String)) }
        def carrier; end
        # Additional information that may be required for clearing customs.
        sig { returns(T.nilable(Customs)) }
        def customs; end
        # A unix timestamp representing a best estimate of when the card will be delivered.
        sig { returns(T.nilable(Integer)) }
        def eta; end
        # Recipient name.
        sig { returns(String) }
        def name; end
        # The phone number of the receiver of the shipment. Our courier partners will use this number to contact you in the event of card delivery issues. For individual shipments to the EU/UK, if this field is empty, we will provide them with the phone number provided when the cardholder was initially created.
        sig { returns(T.nilable(String)) }
        def phone_number; end
        # Whether a signature is required for card delivery. This feature is only supported for US users. Standard shipping service does not support signature on delivery. The default value for standard shipping service is false and for express and priority services is true.
        sig { returns(T.nilable(T::Boolean)) }
        def require_signature; end
        # Shipment service, such as `standard` or `express`.
        sig { returns(String) }
        def service; end
        # The delivery status of the card.
        sig { returns(T.nilable(String)) }
        def status; end
        # A tracking number for a card shipment.
        sig { returns(T.nilable(String)) }
        def tracking_number; end
        # A link to the shipping carrier's site where you can view detailed information about a card shipment.
        sig { returns(T.nilable(String)) }
        def tracking_url; end
        # Packaging options.
        sig { returns(String) }
        def type; end
      end
      class SpendingControls < Stripe::StripeObject
        class SpendingLimit < Stripe::StripeObject
          # Maximum amount allowed to spend per interval. This amount is in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(Integer) }
          def amount; end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
          sig { returns(T.nilable(T::Array[String])) }
          def categories; end
          # Interval (or event) to which the amount applies.
          sig { returns(String) }
          def interval; end
        end
        # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
        sig { returns(T.nilable(T::Array[String])) }
        def allowed_categories; end
        # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
        sig { returns(T.nilable(T::Array[String])) }
        def allowed_merchant_countries; end
        # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
        sig { returns(T.nilable(T::Array[String])) }
        def blocked_categories; end
        # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
        sig { returns(T.nilable(T::Array[String])) }
        def blocked_merchant_countries; end
        # Limit spending with amount-based rules that apply across any cards this card replaced (i.e., its `replacement_for` card and _that_ card's `replacement_for` card, up the chain).
        sig { returns(T.nilable(T::Array[SpendingLimit])) }
        def spending_limits; end
        # Currency of the amounts within `spending_limits`. Always the same as the currency of the card.
        sig { returns(T.nilable(String)) }
        def spending_limits_currency; end
      end
      class Wallets < Stripe::StripeObject
        class ApplePay < Stripe::StripeObject
          # Apple Pay Eligibility
          sig { returns(T::Boolean) }
          def eligible; end
          # Reason the card is ineligible for Apple Pay
          sig { returns(T.nilable(String)) }
          def ineligible_reason; end
        end
        class GooglePay < Stripe::StripeObject
          # Google Pay Eligibility
          sig { returns(T::Boolean) }
          def eligible; end
          # Reason the card is ineligible for Google Pay
          sig { returns(T.nilable(String)) }
          def ineligible_reason; end
        end
        # Attribute for field apple_pay
        sig { returns(ApplePay) }
        def apple_pay; end
        # Attribute for field google_pay
        sig { returns(GooglePay) }
        def google_pay; end
        # Unique identifier for a card used with digital wallets
        sig { returns(T.nilable(String)) }
        def primary_account_identifier; end
      end
      # The brand of the card.
      sig { returns(String) }
      def brand; end
      # The reason why the card was canceled.
      sig { returns(T.nilable(String)) }
      def cancellation_reason; end
      # An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://stripe.com/docs/issuing) cards.
      #
      # Related guide: [How to create a cardholder](https://stripe.com/docs/issuing/cards/virtual/issue-cards#create-cardholder)
      sig { returns(Stripe::Issuing::Cardholder) }
      def cardholder; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Supported currencies are `usd` in the US, `eur` in the EU, and `gbp` in the UK.
      sig { returns(String) }
      def currency; end
      # The card's CVC. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint.
      sig { returns(String) }
      def cvc; end
      # The expiration month of the card.
      sig { returns(Integer) }
      def exp_month; end
      # The expiration year of the card.
      sig { returns(Integer) }
      def exp_year; end
      # The financial account this card is attached to.
      sig { returns(T.nilable(String)) }
      def financial_account; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # The last 4 digits of the card number.
      sig { returns(String) }
      def last4; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # The full unredacted card number. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint.
      sig { returns(String) }
      def number; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The personalization design object belonging to this card.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::PersonalizationDesign))) }
      def personalization_design; end
      # The latest card that replaces this card, if any.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Card))) }
      def replaced_by; end
      # The card this card replaces, if any.
      sig { returns(T.nilable(T.any(String, Stripe::Issuing::Card))) }
      def replacement_for; end
      # The reason why the previous card needed to be replaced.
      sig { returns(T.nilable(String)) }
      def replacement_reason; end
      # Where and how the card will be shipped.
      sig { returns(T.nilable(Shipping)) }
      def shipping; end
      # Attribute for field spending_controls
      sig { returns(SpendingControls) }
      def spending_controls; end
      # Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
      sig { returns(String) }
      def status; end
      # The type of the card.
      sig { returns(String) }
      def type; end
      # Information relating to digital wallets (like Apple Pay and Google Pay).
      sig { returns(T.nilable(Wallets)) }
      def wallets; end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return cards belonging to the Cardholder with the provided ID.
        sig { returns(T.nilable(String)) }
        def cardholder; end
        sig { params(_cardholder: T.nilable(String)).returns(T.nilable(String)) }
        def cardholder=(_cardholder); end
        # Only return cards that were issued during the given date interval.
        sig { returns(T.nilable(T.any(::Stripe::Issuing::Card::ListParams::Created, Integer))) }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Issuing::Card::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Issuing::Card::ListParams::Created, Integer)))
         }
        def created=(_created); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Only return cards that have the given expiration month.
        sig { returns(T.nilable(Integer)) }
        def exp_month; end
        sig { params(_exp_month: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def exp_month=(_exp_month); end
        # Only return cards that have the given expiration year.
        sig { returns(T.nilable(Integer)) }
        def exp_year; end
        sig { params(_exp_year: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def exp_year=(_exp_year); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Only return cards that have the given last four digits.
        sig { returns(T.nilable(String)) }
        def last4; end
        sig { params(_last4: T.nilable(String)).returns(T.nilable(String)) }
        def last4=(_last4); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # Attribute for param field personalization_design
        sig { returns(T.nilable(String)) }
        def personalization_design; end
        sig { params(_personalization_design: T.nilable(String)).returns(T.nilable(String)) }
        def personalization_design=(_personalization_design); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return cards that have the given status. One of `active`, `inactive`, or `canceled`.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        # Only return cards that have the given type. One of `virtual` or `physical`.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
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
          def encrypted_number; end
          sig { params(_encrypted_number: T.nilable(String)).returns(T.nilable(String)) }
          def encrypted_number=(_encrypted_number); end
          sig { params(encrypted_number: T.nilable(String)).void }
          def initialize(encrypted_number: nil); end
        end
        class Shipping < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            def city; end
            sig { params(_city: String).returns(String) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            def country; end
            sig { params(_country: String).returns(String) }
            def country=(_country); end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            def line1; end
            sig { params(_line1: String).returns(String) }
            def line1=(_line1); end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_line2); end
            # ZIP or postal code.
            sig { returns(String) }
            def postal_code; end
            sig { params(_postal_code: String).returns(String) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
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
            def mode; end
            sig { params(_mode: String).returns(String) }
            def mode=(_mode); end
            sig { params(mode: String).void }
            def initialize(mode: nil); end
          end
          class Customs < Stripe::RequestParams
            # The Economic Operators Registration and Identification (EORI) number to use for Customs. Required for bulk shipments to Europe.
            sig { returns(T.nilable(String)) }
            def eori_number; end
            sig { params(_eori_number: T.nilable(String)).returns(T.nilable(String)) }
            def eori_number=(_eori_number); end
            sig { params(eori_number: T.nilable(String)).void }
            def initialize(eori_number: nil); end
          end
          # The address that the card is shipped to.
          sig { returns(::Stripe::Issuing::Card::CreateParams::Shipping::Address) }
          def address; end
          sig {
            params(_address: ::Stripe::Issuing::Card::CreateParams::Shipping::Address).returns(::Stripe::Issuing::Card::CreateParams::Shipping::Address)
           }
          def address=(_address); end
          # Address validation settings.
          sig {
            returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping::AddressValidation))
           }
          def address_validation; end
          sig {
            params(_address_validation: T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping::AddressValidation)).returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping::AddressValidation))
           }
          def address_validation=(_address_validation); end
          # Customs information for the shipment.
          sig { returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping::Customs)) }
          def customs; end
          sig {
            params(_customs: T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping::Customs)).returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping::Customs))
           }
          def customs=(_customs); end
          # The name printed on the shipping label when shipping the card.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # Phone number of the recipient of the shipment.
          sig { returns(T.nilable(String)) }
          def phone_number; end
          sig { params(_phone_number: T.nilable(String)).returns(T.nilable(String)) }
          def phone_number=(_phone_number); end
          # Whether a signature is required for card delivery.
          sig { returns(T.nilable(T::Boolean)) }
          def require_signature; end
          sig { params(_require_signature: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def require_signature=(_require_signature); end
          # Shipment service.
          sig { returns(T.nilable(String)) }
          def service; end
          sig { params(_service: T.nilable(String)).returns(T.nilable(String)) }
          def service=(_service); end
          # Packaging options.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
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
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
            sig { returns(T.nilable(T::Array[String])) }
            def categories; end
            sig {
              params(_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def categories=(_categories); end
            # Interval (or event) to which the amount applies.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            sig {
              params(amount: Integer, categories: T.nilable(T::Array[String]), interval: String).void
             }
            def initialize(amount: nil, categories: nil, interval: nil); end
          end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          def allowed_categories; end
          sig {
            params(_allowed_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def allowed_categories=(_allowed_categories); end
          # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          def allowed_merchant_countries; end
          sig {
            params(_allowed_merchant_countries: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def allowed_merchant_countries=(_allowed_merchant_countries); end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          def blocked_categories; end
          sig {
            params(_blocked_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def blocked_categories=(_blocked_categories); end
          # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          def blocked_merchant_countries; end
          sig {
            params(_blocked_merchant_countries: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def blocked_merchant_countries=(_blocked_merchant_countries); end
          # Limit spending with amount-based rules that apply across any cards this card replaced (i.e., its `replacement_for` card and _that_ card's `replacement_for` card, up the chain).
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Card::CreateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits; end
          sig {
            params(_spending_limits: T.nilable(T::Array[::Stripe::Issuing::Card::CreateParams::SpendingControls::SpendingLimit])).returns(T.nilable(T::Array[::Stripe::Issuing::Card::CreateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits=(_spending_limits); end
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
        def cardholder; end
        sig { params(_cardholder: T.nilable(String)).returns(T.nilable(String)) }
        def cardholder=(_cardholder); end
        # The currency for the card.
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # The desired expiration month (1-12) for this card if [specifying a custom expiration date](/issuing/cards/virtual/issue-cards?testing-method=with-code#exp-dates).
        sig { returns(T.nilable(Integer)) }
        def exp_month; end
        sig { params(_exp_month: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def exp_month=(_exp_month); end
        # The desired 4-digit expiration year for this card if [specifying a custom expiration date](/issuing/cards/virtual/issue-cards?testing-method=with-code#exp-dates).
        sig { returns(T.nilable(Integer)) }
        def exp_year; end
        sig { params(_exp_year: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def exp_year=(_exp_year); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The new financial account ID the card will be associated with. This field allows a card to be reassigned to a different financial account.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
        def financial_account=(_financial_account); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The personalization design object belonging to this card.
        sig { returns(T.nilable(String)) }
        def personalization_design; end
        sig { params(_personalization_design: T.nilable(String)).returns(T.nilable(String)) }
        def personalization_design=(_personalization_design); end
        # The desired PIN for this card.
        sig { returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Pin)) }
        def pin; end
        sig {
          params(_pin: T.nilable(::Stripe::Issuing::Card::CreateParams::Pin)).returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Pin))
         }
        def pin=(_pin); end
        # The card this is meant to be a replacement for (if any).
        sig { returns(T.nilable(String)) }
        def replacement_for; end
        sig { params(_replacement_for: T.nilable(String)).returns(T.nilable(String)) }
        def replacement_for=(_replacement_for); end
        # If `replacement_for` is specified, this should indicate why that card is being replaced.
        sig { returns(T.nilable(String)) }
        def replacement_reason; end
        sig { params(_replacement_reason: T.nilable(String)).returns(T.nilable(String)) }
        def replacement_reason=(_replacement_reason); end
        # The second line to print on the card. Max length: 24 characters.
        sig { returns(T.nilable(String)) }
        def second_line; end
        sig { params(_second_line: T.nilable(String)).returns(T.nilable(String)) }
        def second_line=(_second_line); end
        # The address where the card will be shipped.
        sig { returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping)) }
        def shipping; end
        sig {
          params(_shipping: T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping)).returns(T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping))
         }
        def shipping=(_shipping); end
        # Rules that control spending for this card. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        sig { returns(T.nilable(::Stripe::Issuing::Card::CreateParams::SpendingControls)) }
        def spending_controls; end
        sig {
          params(_spending_controls: T.nilable(::Stripe::Issuing::Card::CreateParams::SpendingControls)).returns(T.nilable(::Stripe::Issuing::Card::CreateParams::SpendingControls))
         }
        def spending_controls=(_spending_controls); end
        # Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        # The type of card to issue. Possible values are `physical` or `virtual`.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(cardholder: T.nilable(String), currency: String, exp_month: T.nilable(Integer), exp_year: T.nilable(Integer), expand: T.nilable(T::Array[String]), financial_account: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), personalization_design: T.nilable(String), pin: T.nilable(::Stripe::Issuing::Card::CreateParams::Pin), replacement_for: T.nilable(String), replacement_reason: T.nilable(String), second_line: T.nilable(String), shipping: T.nilable(::Stripe::Issuing::Card::CreateParams::Shipping), spending_controls: T.nilable(::Stripe::Issuing::Card::CreateParams::SpendingControls), status: T.nilable(String), type: String).void
         }
        def initialize(
          cardholder: nil,
          currency: nil,
          exp_month: nil,
          exp_year: nil,
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
          def encrypted_number; end
          sig { params(_encrypted_number: T.nilable(String)).returns(T.nilable(String)) }
          def encrypted_number=(_encrypted_number); end
          sig { params(encrypted_number: T.nilable(String)).void }
          def initialize(encrypted_number: nil); end
        end
        class Shipping < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            def city; end
            sig { params(_city: String).returns(String) }
            def city=(_city); end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            def country; end
            sig { params(_country: String).returns(String) }
            def country=(_country); end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            def line1; end
            sig { params(_line1: String).returns(String) }
            def line1=(_line1); end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
            def line2=(_line2); end
            # ZIP or postal code.
            sig { returns(String) }
            def postal_code; end
            sig { params(_postal_code: String).returns(String) }
            def postal_code=(_postal_code); end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
            sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
            def state=(_state); end
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
            def mode; end
            sig { params(_mode: String).returns(String) }
            def mode=(_mode); end
            sig { params(mode: String).void }
            def initialize(mode: nil); end
          end
          class Customs < Stripe::RequestParams
            # The Economic Operators Registration and Identification (EORI) number to use for Customs. Required for bulk shipments to Europe.
            sig { returns(T.nilable(String)) }
            def eori_number; end
            sig { params(_eori_number: T.nilable(String)).returns(T.nilable(String)) }
            def eori_number=(_eori_number); end
            sig { params(eori_number: T.nilable(String)).void }
            def initialize(eori_number: nil); end
          end
          # The address that the card is shipped to.
          sig { returns(::Stripe::Issuing::Card::UpdateParams::Shipping::Address) }
          def address; end
          sig {
            params(_address: ::Stripe::Issuing::Card::UpdateParams::Shipping::Address).returns(::Stripe::Issuing::Card::UpdateParams::Shipping::Address)
           }
          def address=(_address); end
          # Address validation settings.
          sig {
            returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping::AddressValidation))
           }
          def address_validation; end
          sig {
            params(_address_validation: T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping::AddressValidation)).returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping::AddressValidation))
           }
          def address_validation=(_address_validation); end
          # Customs information for the shipment.
          sig { returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping::Customs)) }
          def customs; end
          sig {
            params(_customs: T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping::Customs)).returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping::Customs))
           }
          def customs=(_customs); end
          # The name printed on the shipping label when shipping the card.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # Phone number of the recipient of the shipment.
          sig { returns(T.nilable(String)) }
          def phone_number; end
          sig { params(_phone_number: T.nilable(String)).returns(T.nilable(String)) }
          def phone_number=(_phone_number); end
          # Whether a signature is required for card delivery.
          sig { returns(T.nilable(T::Boolean)) }
          def require_signature; end
          sig { params(_require_signature: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def require_signature=(_require_signature); end
          # Shipment service.
          sig { returns(T.nilable(String)) }
          def service; end
          sig { params(_service: T.nilable(String)).returns(T.nilable(String)) }
          def service=(_service); end
          # Packaging options.
          sig { returns(T.nilable(String)) }
          def type; end
          sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
          def type=(_type); end
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
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
            sig { returns(T.nilable(T::Array[String])) }
            def categories; end
            sig {
              params(_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
             }
            def categories=(_categories); end
            # Interval (or event) to which the amount applies.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            sig {
              params(amount: Integer, categories: T.nilable(T::Array[String]), interval: String).void
             }
            def initialize(amount: nil, categories: nil, interval: nil); end
          end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          def allowed_categories; end
          sig {
            params(_allowed_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def allowed_categories=(_allowed_categories); end
          # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          def allowed_merchant_countries; end
          sig {
            params(_allowed_merchant_countries: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def allowed_merchant_countries=(_allowed_merchant_countries); end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
          sig { returns(T.nilable(T::Array[String])) }
          def blocked_categories; end
          sig {
            params(_blocked_categories: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def blocked_categories=(_blocked_categories); end
          # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
          sig { returns(T.nilable(T::Array[String])) }
          def blocked_merchant_countries; end
          sig {
            params(_blocked_merchant_countries: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def blocked_merchant_countries=(_blocked_merchant_countries); end
          # Limit spending with amount-based rules that apply across any cards this card replaced (i.e., its `replacement_for` card and _that_ card's `replacement_for` card, up the chain).
          sig {
            returns(T.nilable(T::Array[::Stripe::Issuing::Card::UpdateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits; end
          sig {
            params(_spending_limits: T.nilable(T::Array[::Stripe::Issuing::Card::UpdateParams::SpendingControls::SpendingLimit])).returns(T.nilable(T::Array[::Stripe::Issuing::Card::UpdateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits=(_spending_limits); end
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
        def cancellation_reason; end
        sig { params(_cancellation_reason: T.nilable(String)).returns(T.nilable(String)) }
        def cancellation_reason=(_cancellation_reason); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        # Attribute for param field personalization_design
        sig { returns(T.nilable(String)) }
        def personalization_design; end
        sig { params(_personalization_design: T.nilable(String)).returns(T.nilable(String)) }
        def personalization_design=(_personalization_design); end
        # The desired new PIN for this card.
        sig { returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Pin)) }
        def pin; end
        sig {
          params(_pin: T.nilable(::Stripe::Issuing::Card::UpdateParams::Pin)).returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Pin))
         }
        def pin=(_pin); end
        # Updated shipping information for the card.
        sig { returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping)) }
        def shipping; end
        sig {
          params(_shipping: T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping)).returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping))
         }
        def shipping=(_shipping); end
        # Rules that control spending for this card. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        sig { returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::SpendingControls)) }
        def spending_controls; end
        sig {
          params(_spending_controls: T.nilable(::Stripe::Issuing::Card::UpdateParams::SpendingControls)).returns(T.nilable(::Stripe::Issuing::Card::UpdateParams::SpendingControls))
         }
        def spending_controls=(_spending_controls); end
        # Dictates whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`. If this card is being canceled because it was lost or stolen, this information should be provided as `cancellation_reason`.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(cancellation_reason: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), personalization_design: T.nilable(String), pin: T.nilable(::Stripe::Issuing::Card::UpdateParams::Pin), shipping: T.nilable(::Stripe::Issuing::Card::UpdateParams::Shipping), spending_controls: T.nilable(::Stripe::Issuing::Card::UpdateParams::SpendingControls), status: T.nilable(String)).void
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
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class FailCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ReturnCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ShipCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class SubmitCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
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