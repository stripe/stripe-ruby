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
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end

        class AddressValidation < Stripe::StripeObject
          class NormalizedAddress < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end
          attr_reader :mode, :normalized_address, :result
        end

        class Customs < Stripe::StripeObject
          attr_reader :eori_number
        end
        attr_reader :address, :address_validation, :carrier, :customs, :eta, :name, :phone_number, :require_signature, :service, :status, :tracking_number, :tracking_url, :type
      end

      class SpendingControls < Stripe::StripeObject
        class SpendingLimit < Stripe::StripeObject
          attr_reader :amount, :categories, :interval
        end
        attr_reader :allowed_categories, :allowed_merchant_countries, :blocked_categories, :blocked_merchant_countries, :spending_limits, :spending_limits_currency
      end

      class Wallets < Stripe::StripeObject
        class ApplePay < Stripe::StripeObject
          attr_reader :eligible, :ineligible_reason
        end

        class GooglePay < Stripe::StripeObject
          attr_reader :eligible, :ineligible_reason
        end
        attr_reader :apple_pay, :google_pay, :primary_account_identifier
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
      def self.list(filters = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/issuing/cards", params: filters, opts: opts)
      end

      # Updates the specified Issuing Card object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/cards/%<id>s", { id: CGI.escape(id) }),
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
