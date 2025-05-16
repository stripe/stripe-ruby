# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # You can [create physical or virtual cards](https://stripe.com/docs/issuing) that are issued to cardholders.
    class Card < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.card"
      def self.object_name
        "issuing.card"
      end

      class Shipping < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State, county, province, or region.
          attr_reader :state
        end

        class AddressValidation < Stripe::StripeObject
          class NormalizedAddress < Stripe::StripeObject
            # City, district, suburb, town, or village.
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_reader :line2
            # ZIP or postal code.
            attr_reader :postal_code
            # State, county, province, or region.
            attr_reader :state
          end
          # The address validation capabilities to use.
          attr_reader :mode
          # The normalized shipping address.
          attr_reader :normalized_address
          # The validation result for the shipping address.
          attr_reader :result
        end

        class Customs < Stripe::StripeObject
          # A registration number used for customs in Europe. See [https://www.gov.uk/eori](https://www.gov.uk/eori) for the UK and [https://ec.europa.eu/taxation_customs/business/customs-procedures-import-and-export/customs-procedures/economic-operators-registration-and-identification-number-eori_en](https://ec.europa.eu/taxation_customs/business/customs-procedures-import-and-export/customs-procedures/economic-operators-registration-and-identification-number-eori_en) for the EU.
          attr_reader :eori_number
        end
        # Attribute for field address
        attr_reader :address
        # Address validation details for the shipment.
        attr_reader :address_validation
        # The delivery company that shipped a card.
        attr_reader :carrier
        # Additional information that may be required for clearing customs.
        attr_reader :customs
        # A unix timestamp representing a best estimate of when the card will be delivered.
        attr_reader :eta
        # Recipient name.
        attr_reader :name
        # The phone number of the receiver of the shipment. Our courier partners will use this number to contact you in the event of card delivery issues. For individual shipments to the EU/UK, if this field is empty, we will provide them with the phone number provided when the cardholder was initially created.
        attr_reader :phone_number
        # Whether a signature is required for card delivery. This feature is only supported for US users. Standard shipping service does not support signature on delivery. The default value for standard shipping service is false and for express and priority services is true.
        attr_reader :require_signature
        # Shipment service, such as `standard` or `express`.
        attr_reader :service
        # The delivery status of the card.
        attr_reader :status
        # A tracking number for a card shipment.
        attr_reader :tracking_number
        # A link to the shipping carrier's site where you can view detailed information about a card shipment.
        attr_reader :tracking_url
        # Packaging options.
        attr_reader :type
      end

      class SpendingControls < Stripe::StripeObject
        class SpendingLimit < Stripe::StripeObject
          # Maximum amount allowed to spend per interval. This amount is in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          attr_reader :amount
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
          attr_reader :categories
          # Interval (or event) to which the amount applies.
          attr_reader :interval
        end
        # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
        attr_reader :allowed_categories
        # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
        attr_reader :allowed_merchant_countries
        # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
        attr_reader :blocked_categories
        # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
        attr_reader :blocked_merchant_countries
        # Limit spending with amount-based rules that apply across any cards this card replaced (i.e., its `replacement_for` card and _that_ card's `replacement_for` card, up the chain).
        attr_reader :spending_limits
        # Currency of the amounts within `spending_limits`. Always the same as the currency of the card.
        attr_reader :spending_limits_currency
      end

      class Wallets < Stripe::StripeObject
        class ApplePay < Stripe::StripeObject
          # Apple Pay Eligibility
          attr_reader :eligible
          # Reason the card is ineligible for Apple Pay
          attr_reader :ineligible_reason
        end

        class GooglePay < Stripe::StripeObject
          # Google Pay Eligibility
          attr_reader :eligible
          # Reason the card is ineligible for Google Pay
          attr_reader :ineligible_reason
        end
        # Attribute for field apple_pay
        attr_reader :apple_pay
        # Attribute for field google_pay
        attr_reader :google_pay
        # Unique identifier for a card used with digital wallets
        attr_reader :primary_account_identifier
      end

      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # Only return cards belonging to the Cardholder with the provided ID.
        attr_accessor :cardholder
        # Only return cards that were issued during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Only return cards that have the given expiration month.
        attr_accessor :exp_month
        # Only return cards that have the given expiration year.
        attr_accessor :exp_year
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Only return cards that have the given last four digits.
        attr_accessor :last4
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # Attribute for param field personalization_design
        attr_accessor :personalization_design
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Only return cards that have the given status. One of `active`, `inactive`, or `canceled`.
        attr_accessor :status
        # Only return cards that have the given type. One of `virtual` or `physical`.
        attr_accessor :type

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
        )
          @cardholder = cardholder
          @created = created
          @ending_before = ending_before
          @exp_month = exp_month
          @exp_year = exp_year
          @expand = expand
          @last4 = last4
          @limit = limit
          @personalization_design = personalization_design
          @starting_after = starting_after
          @status = status
          @type = type
        end
      end

      class CreateParams < Stripe::RequestParams
        class Pin < Stripe::RequestParams
          # The card's desired new PIN, encrypted under Stripe's public key.
          attr_accessor :encrypted_number

          def initialize(encrypted_number: nil)
            @encrypted_number = encrypted_number
          end
        end

        class Shipping < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end

          class AddressValidation < Stripe::RequestParams
            # The address validation capabilities to use.
            attr_accessor :mode

            def initialize(mode: nil)
              @mode = mode
            end
          end

          class Customs < Stripe::RequestParams
            # The Economic Operators Registration and Identification (EORI) number to use for Customs. Required for bulk shipments to Europe.
            attr_accessor :eori_number

            def initialize(eori_number: nil)
              @eori_number = eori_number
            end
          end
          # The address that the card is shipped to.
          attr_accessor :address
          # Address validation settings.
          attr_accessor :address_validation
          # Customs information for the shipment.
          attr_accessor :customs
          # The name printed on the shipping label when shipping the card.
          attr_accessor :name
          # Phone number of the recipient of the shipment.
          attr_accessor :phone_number
          # Whether a signature is required for card delivery.
          attr_accessor :require_signature
          # Shipment service.
          attr_accessor :service
          # Packaging options.
          attr_accessor :type

          def initialize(
            address: nil,
            address_validation: nil,
            customs: nil,
            name: nil,
            phone_number: nil,
            require_signature: nil,
            service: nil,
            type: nil
          )
            @address = address
            @address_validation = address_validation
            @customs = customs
            @name = name
            @phone_number = phone_number
            @require_signature = require_signature
            @service = service
            @type = type
          end
        end

        class SpendingControls < Stripe::RequestParams
          class SpendingLimit < Stripe::RequestParams
            # Maximum amount allowed to spend per interval.
            attr_accessor :amount
            # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
            attr_accessor :categories
            # Interval (or event) to which the amount applies.
            attr_accessor :interval

            def initialize(amount: nil, categories: nil, interval: nil)
              @amount = amount
              @categories = categories
              @interval = interval
            end
          end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
          attr_accessor :allowed_categories
          # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
          attr_accessor :allowed_merchant_countries
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
          attr_accessor :blocked_categories
          # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
          attr_accessor :blocked_merchant_countries
          # Limit spending with amount-based rules that apply across any cards this card replaced (i.e., its `replacement_for` card and _that_ card's `replacement_for` card, up the chain).
          attr_accessor :spending_limits

          def initialize(
            allowed_categories: nil,
            allowed_merchant_countries: nil,
            blocked_categories: nil,
            blocked_merchant_countries: nil,
            spending_limits: nil
          )
            @allowed_categories = allowed_categories
            @allowed_merchant_countries = allowed_merchant_countries
            @blocked_categories = blocked_categories
            @blocked_merchant_countries = blocked_merchant_countries
            @spending_limits = spending_limits
          end
        end
        # The [Cardholder](https://stripe.com/docs/api#issuing_cardholder_object) object with which the card will be associated.
        attr_accessor :cardholder
        # The currency for the card.
        attr_accessor :currency
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The new financial account ID the card will be associated with. This field allows a card to be reassigned to a different financial account.
        attr_accessor :financial_account
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The personalization design object belonging to this card.
        attr_accessor :personalization_design
        # The desired PIN for this card.
        attr_accessor :pin
        # The card this is meant to be a replacement for (if any).
        attr_accessor :replacement_for
        # If `replacement_for` is specified, this should indicate why that card is being replaced.
        attr_accessor :replacement_reason
        # The second line to print on the card. Max length: 24 characters.
        attr_accessor :second_line
        # The address where the card will be shipped.
        attr_accessor :shipping
        # Rules that control spending for this card. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        attr_accessor :spending_controls
        # Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
        attr_accessor :status
        # The type of card to issue. Possible values are `physical` or `virtual`.
        attr_accessor :type

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
        )
          @cardholder = cardholder
          @currency = currency
          @expand = expand
          @financial_account = financial_account
          @metadata = metadata
          @personalization_design = personalization_design
          @pin = pin
          @replacement_for = replacement_for
          @replacement_reason = replacement_reason
          @second_line = second_line
          @shipping = shipping
          @spending_controls = spending_controls
          @status = status
          @type = type
        end
      end

      class UpdateParams < Stripe::RequestParams
        class Pin < Stripe::RequestParams
          # The card's desired new PIN, encrypted under Stripe's public key.
          attr_accessor :encrypted_number

          def initialize(encrypted_number: nil)
            @encrypted_number = encrypted_number
          end
        end

        class Shipping < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end

          class AddressValidation < Stripe::RequestParams
            # The address validation capabilities to use.
            attr_accessor :mode

            def initialize(mode: nil)
              @mode = mode
            end
          end

          class Customs < Stripe::RequestParams
            # The Economic Operators Registration and Identification (EORI) number to use for Customs. Required for bulk shipments to Europe.
            attr_accessor :eori_number

            def initialize(eori_number: nil)
              @eori_number = eori_number
            end
          end
          # The address that the card is shipped to.
          attr_accessor :address
          # Address validation settings.
          attr_accessor :address_validation
          # Customs information for the shipment.
          attr_accessor :customs
          # The name printed on the shipping label when shipping the card.
          attr_accessor :name
          # Phone number of the recipient of the shipment.
          attr_accessor :phone_number
          # Whether a signature is required for card delivery.
          attr_accessor :require_signature
          # Shipment service.
          attr_accessor :service
          # Packaging options.
          attr_accessor :type

          def initialize(
            address: nil,
            address_validation: nil,
            customs: nil,
            name: nil,
            phone_number: nil,
            require_signature: nil,
            service: nil,
            type: nil
          )
            @address = address
            @address_validation = address_validation
            @customs = customs
            @name = name
            @phone_number = phone_number
            @require_signature = require_signature
            @service = service
            @type = type
          end
        end

        class SpendingControls < Stripe::RequestParams
          class SpendingLimit < Stripe::RequestParams
            # Maximum amount allowed to spend per interval.
            attr_accessor :amount
            # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) this limit applies to. Omitting this field will apply the limit to all categories.
            attr_accessor :categories
            # Interval (or event) to which the amount applies.
            attr_accessor :interval

            def initialize(amount: nil, categories: nil, interval: nil)
              @amount = amount
              @categories = categories
              @interval = interval
            end
          end
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to allow. All other categories will be blocked. Cannot be set with `blocked_categories`.
          attr_accessor :allowed_categories
          # Array of strings containing representing countries from which authorizations will be allowed. Authorizations from merchants in all other countries will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `blocked_merchant_countries`. Provide an empty value to unset this control.
          attr_accessor :allowed_merchant_countries
          # Array of strings containing [categories](https://stripe.com/docs/api#issuing_authorization_object-merchant_data-category) of authorizations to decline. All other categories will be allowed. Cannot be set with `allowed_categories`.
          attr_accessor :blocked_categories
          # Array of strings containing representing countries from which authorizations will be declined. Country codes should be ISO 3166 alpha-2 country codes (e.g. `US`). Cannot be set with `allowed_merchant_countries`. Provide an empty value to unset this control.
          attr_accessor :blocked_merchant_countries
          # Limit spending with amount-based rules that apply across any cards this card replaced (i.e., its `replacement_for` card and _that_ card's `replacement_for` card, up the chain).
          attr_accessor :spending_limits

          def initialize(
            allowed_categories: nil,
            allowed_merchant_countries: nil,
            blocked_categories: nil,
            blocked_merchant_countries: nil,
            spending_limits: nil
          )
            @allowed_categories = allowed_categories
            @allowed_merchant_countries = allowed_merchant_countries
            @blocked_categories = blocked_categories
            @blocked_merchant_countries = blocked_merchant_countries
            @spending_limits = spending_limits
          end
        end
        # Reason why the `status` of this card is `canceled`.
        attr_accessor :cancellation_reason
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # Attribute for param field personalization_design
        attr_accessor :personalization_design
        # The desired new PIN for this card.
        attr_accessor :pin
        # Updated shipping information for the card.
        attr_accessor :shipping
        # Rules that control spending for this card. Refer to our [documentation](https://stripe.com/docs/issuing/controls/spending-controls) for more details.
        attr_accessor :spending_controls
        # Dictates whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`. If this card is being canceled because it was lost or stolen, this information should be provided as `cancellation_reason`.
        attr_accessor :status

        def initialize(
          cancellation_reason: nil,
          expand: nil,
          metadata: nil,
          personalization_design: nil,
          pin: nil,
          shipping: nil,
          spending_controls: nil,
          status: nil
        )
          @cancellation_reason = cancellation_reason
          @expand = expand
          @metadata = metadata
          @personalization_design = personalization_design
          @pin = pin
          @shipping = shipping
          @spending_controls = spending_controls
          @status = status
        end
      end

      class DeliverCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class FailCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class ReturnCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class ShipCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class SubmitCardParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end
      # The brand of the card.
      attr_reader :brand
      # The reason why the card was canceled.
      attr_reader :cancellation_reason
      # An Issuing `Cardholder` object represents an individual or business entity who is [issued](https://stripe.com/docs/issuing) cards.
      #
      # Related guide: [How to create a cardholder](https://stripe.com/docs/issuing/cards/virtual/issue-cards#create-cardholder)
      attr_reader :cardholder
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Supported currencies are `usd` in the US, `eur` in the EU, and `gbp` in the UK.
      attr_reader :currency
      # The card's CVC. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint.
      attr_reader :cvc
      # The expiration month of the card.
      attr_reader :exp_month
      # The expiration year of the card.
      attr_reader :exp_year
      # The financial account this card is attached to.
      attr_reader :financial_account
      # Unique identifier for the object.
      attr_reader :id
      # The last 4 digits of the card number.
      attr_reader :last4
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # The full unredacted card number. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the ["Retrieve a card" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via "List all cards" or any other endpoint.
      attr_reader :number
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The personalization design object belonging to this card.
      attr_reader :personalization_design
      # The latest card that replaces this card, if any.
      attr_reader :replaced_by
      # The card this card replaces, if any.
      attr_reader :replacement_for
      # The reason why the previous card needed to be replaced.
      attr_reader :replacement_reason
      # Where and how the card will be shipped.
      attr_reader :shipping
      # Attribute for field spending_controls
      attr_reader :spending_controls
      # Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
      attr_reader :status
      # The type of the card.
      attr_reader :type
      # Information relating to digital wallets (like Apple Pay and Google Pay).
      attr_reader :wallets

      # Creates an Issuing Card object.
      def self.create(params = {}, opts = {})
        request_stripe_object(method: :post, path: "/v1/issuing/cards", params: params, opts: opts)
      end

      # Returns a list of Issuing Card objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/issuing/cards", params: params, opts: opts)
      end

      # Updates the specified Issuing Card object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(card, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/cards/%<card>s", { card: CGI.escape(card) }),
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = Card
        def self.resource_class
          "Card"
        end

        # Updates the shipping status of the specified Issuing Card object to delivered.
        def self.deliver_card(card, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/deliver", { card: CGI.escape(card) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to delivered.
        def deliver_card(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/deliver", { card: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to failure.
        def self.fail_card(card, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/fail", { card: CGI.escape(card) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to failure.
        def fail_card(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/fail", { card: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to returned.
        def self.return_card(card, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/return", { card: CGI.escape(card) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to returned.
        def return_card(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/return", { card: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to shipped.
        def self.ship_card(card, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/ship", { card: CGI.escape(card) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to shipped.
        def ship_card(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/ship", { card: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to submitted. This method requires Stripe Version ‘2024-09-30.acacia' or later.
        def self.submit_card(card, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/submit", { card: CGI.escape(card) }),
            params: params,
            opts: opts
          )
        end

        # Updates the shipping status of the specified Issuing Card object to submitted. This method requires Stripe Version ‘2024-09-30.acacia' or later.
        def submit_card(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/cards/%<card>s/shipping/submit", { card: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
