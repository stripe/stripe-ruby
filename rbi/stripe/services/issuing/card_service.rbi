# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class CardService < StripeService
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
        sig {
          returns(T.nilable(T.any(::Stripe::Issuing::CardService::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Issuing::CardService::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Issuing::CardService::ListParams::Created, Integer)))
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
          params(cardholder: T.nilable(String), created: T.nilable(T.any(::Stripe::Issuing::CardService::ListParams::Created, Integer)), ending_before: T.nilable(String), exp_month: T.nilable(Integer), exp_year: T.nilable(Integer), expand: T.nilable(T::Array[String]), last4: T.nilable(String), limit: T.nilable(Integer), personalization_design: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String), type: T.nilable(String)).void
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
          sig { returns(::Stripe::Issuing::CardService::CreateParams::Shipping::Address) }
          def address; end
          sig {
            params(_address: ::Stripe::Issuing::CardService::CreateParams::Shipping::Address).returns(::Stripe::Issuing::CardService::CreateParams::Shipping::Address)
           }
          def address=(_address); end
          # Address validation settings.
          sig {
            returns(T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping::AddressValidation))
           }
          def address_validation; end
          sig {
            params(_address_validation: T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping::AddressValidation)).returns(T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping::AddressValidation))
           }
          def address_validation=(_address_validation); end
          # Customs information for the shipment.
          sig {
            returns(T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping::Customs))
           }
          def customs; end
          sig {
            params(_customs: T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping::Customs)).returns(T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping::Customs))
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
            params(address: ::Stripe::Issuing::CardService::CreateParams::Shipping::Address, address_validation: T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping::AddressValidation), customs: T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping::Customs), name: String, phone_number: T.nilable(String), require_signature: T.nilable(T::Boolean), service: T.nilable(String), type: T.nilable(String)).void
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
            returns(T.nilable(T::Array[::Stripe::Issuing::CardService::CreateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits; end
          sig {
            params(_spending_limits: T.nilable(T::Array[::Stripe::Issuing::CardService::CreateParams::SpendingControls::SpendingLimit])).returns(T.nilable(T::Array[::Stripe::Issuing::CardService::CreateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits=(_spending_limits); end
          sig {
            params(allowed_categories: T.nilable(T::Array[String]), allowed_merchant_countries: T.nilable(T::Array[String]), blocked_categories: T.nilable(T::Array[String]), blocked_merchant_countries: T.nilable(T::Array[String]), spending_limits: T.nilable(T::Array[::Stripe::Issuing::CardService::CreateParams::SpendingControls::SpendingLimit])).void
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
        sig { returns(T.nilable(::Stripe::Issuing::CardService::CreateParams::Pin)) }
        def pin; end
        sig {
          params(_pin: T.nilable(::Stripe::Issuing::CardService::CreateParams::Pin)).returns(T.nilable(::Stripe::Issuing::CardService::CreateParams::Pin))
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
        sig { returns(T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping)) }
        def shipping; end
        sig {
          params(_shipping: T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping)).returns(T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping))
         }
        def shipping=(_shipping); end
        # Rules that control spending for this card. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        sig { returns(T.nilable(::Stripe::Issuing::CardService::CreateParams::SpendingControls)) }
        def spending_controls; end
        sig {
          params(_spending_controls: T.nilable(::Stripe::Issuing::CardService::CreateParams::SpendingControls)).returns(T.nilable(::Stripe::Issuing::CardService::CreateParams::SpendingControls))
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
          params(cardholder: T.nilable(String), currency: String, exp_month: T.nilable(Integer), exp_year: T.nilable(Integer), expand: T.nilable(T::Array[String]), financial_account: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), personalization_design: T.nilable(String), pin: T.nilable(::Stripe::Issuing::CardService::CreateParams::Pin), replacement_for: T.nilable(String), replacement_reason: T.nilable(String), second_line: T.nilable(String), shipping: T.nilable(::Stripe::Issuing::CardService::CreateParams::Shipping), spending_controls: T.nilable(::Stripe::Issuing::CardService::CreateParams::SpendingControls), status: T.nilable(String), type: String).void
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
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
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
          sig { returns(::Stripe::Issuing::CardService::UpdateParams::Shipping::Address) }
          def address; end
          sig {
            params(_address: ::Stripe::Issuing::CardService::UpdateParams::Shipping::Address).returns(::Stripe::Issuing::CardService::UpdateParams::Shipping::Address)
           }
          def address=(_address); end
          # Address validation settings.
          sig {
            returns(T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping::AddressValidation))
           }
          def address_validation; end
          sig {
            params(_address_validation: T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping::AddressValidation)).returns(T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping::AddressValidation))
           }
          def address_validation=(_address_validation); end
          # Customs information for the shipment.
          sig {
            returns(T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping::Customs))
           }
          def customs; end
          sig {
            params(_customs: T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping::Customs)).returns(T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping::Customs))
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
            params(address: ::Stripe::Issuing::CardService::UpdateParams::Shipping::Address, address_validation: T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping::AddressValidation), customs: T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping::Customs), name: String, phone_number: T.nilable(String), require_signature: T.nilable(T::Boolean), service: T.nilable(String), type: T.nilable(String)).void
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
            returns(T.nilable(T::Array[::Stripe::Issuing::CardService::UpdateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits; end
          sig {
            params(_spending_limits: T.nilable(T::Array[::Stripe::Issuing::CardService::UpdateParams::SpendingControls::SpendingLimit])).returns(T.nilable(T::Array[::Stripe::Issuing::CardService::UpdateParams::SpendingControls::SpendingLimit]))
           }
          def spending_limits=(_spending_limits); end
          sig {
            params(allowed_categories: T.nilable(T::Array[String]), allowed_merchant_countries: T.nilable(T::Array[String]), blocked_categories: T.nilable(T::Array[String]), blocked_merchant_countries: T.nilable(T::Array[String]), spending_limits: T.nilable(T::Array[::Stripe::Issuing::CardService::UpdateParams::SpendingControls::SpendingLimit])).void
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
        sig { returns(T.nilable(::Stripe::Issuing::CardService::UpdateParams::Pin)) }
        def pin; end
        sig {
          params(_pin: T.nilable(::Stripe::Issuing::CardService::UpdateParams::Pin)).returns(T.nilable(::Stripe::Issuing::CardService::UpdateParams::Pin))
         }
        def pin=(_pin); end
        # Updated shipping information for the card.
        sig { returns(T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping)) }
        def shipping; end
        sig {
          params(_shipping: T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping)).returns(T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping))
         }
        def shipping=(_shipping); end
        # Rules that control spending for this card. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        sig { returns(T.nilable(::Stripe::Issuing::CardService::UpdateParams::SpendingControls)) }
        def spending_controls; end
        sig {
          params(_spending_controls: T.nilable(::Stripe::Issuing::CardService::UpdateParams::SpendingControls)).returns(T.nilable(::Stripe::Issuing::CardService::UpdateParams::SpendingControls))
         }
        def spending_controls=(_spending_controls); end
        # Dictates whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`. If this card is being canceled because it was lost or stolen, this information should be provided as `cancellation_reason`.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
        sig {
          params(cancellation_reason: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), personalization_design: T.nilable(String), pin: T.nilable(::Stripe::Issuing::CardService::UpdateParams::Pin), shipping: T.nilable(::Stripe::Issuing::CardService::UpdateParams::Shipping), spending_controls: T.nilable(::Stripe::Issuing::CardService::UpdateParams::SpendingControls), status: T.nilable(String)).void
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
      # Creates an Issuing Card object.
      sig {
        params(params: T.any(::Stripe::Issuing::CardService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Card)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of Issuing Card objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::CardService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves an Issuing Card object.
      sig {
        params(card: String, params: T.any(::Stripe::Issuing::CardService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Card)
       }
      def retrieve(card, params = {}, opts = {}); end

      # Updates the specified Issuing Card object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(card: String, params: T.any(::Stripe::Issuing::CardService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::Card)
       }
      def update(card, params = {}, opts = {}); end
    end
  end
end