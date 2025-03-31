# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module GiftCards
    # A gift card represents a single gift card owned by a customer, including the
    # remaining balance, gift card code, and whether or not it is active.
    class Card < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "gift_cards.card"
      def self.object_name
        "gift_cards.card"
      end

      class CreatedBy < Stripe::StripeObject
        class Checkout < Stripe::StripeObject
          # The Stripe CheckoutSession that created this object.
          attr_reader :checkout_session
          # The Stripe CheckoutSession LineItem that created this object.
          attr_reader :line_item
        end

        class Order < Stripe::StripeObject
          # The Stripe Order LineItem that created this object.
          attr_reader :line_item
          # The Stripe Order that created this object.
          attr_reader :order
        end

        class Payment < Stripe::StripeObject
          # The PaymentIntent that created this object.
          attr_reader :payment_intent
        end
        # Attribute for field checkout
        attr_reader :checkout
        # Attribute for field order
        attr_reader :order
        # Attribute for field payment
        attr_reader :payment
        # The type of event that created this object.
        attr_reader :type
      end

      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        class CreatedBy < Stripe::RequestParams
          class Payment < Stripe::RequestParams
            # The PaymentIntent used to collect payment for this object.
            attr_accessor :payment_intent

            def initialize(payment_intent: nil)
              @payment_intent = payment_intent
            end
          end
          # The details for the payment that created this object.
          attr_accessor :payment
          # The type of event that created this object.
          attr_accessor :type

          def initialize(payment: nil, type: nil)
            @payment = payment
            @type = type
          end
        end
        # The active state for the new gift card, defaults to false. The active state can be updated after creation.
        attr_accessor :active
        # Related objects which created this gift card.
        attr_accessor :created_by
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The initial amount to load onto the new gift card, defaults to 0.
        attr_accessor :initial_amount
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(
          active: nil,
          created_by: nil,
          currency: nil,
          expand: nil,
          initial_amount: nil,
          metadata: nil
        )
          @active = active
          @created_by = created_by
          @currency = currency
          @expand = expand
          @initial_amount = initial_amount
          @metadata = metadata
        end
      end

      class UpdateParams < Stripe::RequestParams
        # The new active state for the gift card.
        attr_accessor :active
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(active: nil, expand: nil, metadata: nil)
          @active = active
          @expand = expand
          @metadata = metadata
        end
      end

      class ValidateParams < Stripe::RequestParams
        # The gift card code to be validated.
        attr_accessor :code
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The pin associated with the gift card. Not all gift cards have pins.
        attr_accessor :giftcard_pin

        def initialize(code: nil, expand: nil, giftcard_pin: nil)
          @code = code
          @expand = expand
          @giftcard_pin = giftcard_pin
        end
      end
      # Whether this gift card can be used or not.
      attr_reader :active
      # The amount of funds available for new transactions.
      attr_reader :amount_available
      # The amount of funds marked as held.
      attr_reader :amount_held
      # Code used to redeem this gift card.
      attr_reader :code
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The related Stripe objects that created this gift card.
      attr_reader :created_by
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Unique identifier for the object.
      attr_reader :id
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Transactions on this gift card.
      attr_reader :transactions

      # Creates a new gift card object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/gift_cards/cards",
          params: params,
          opts: opts
        )
      end

      # List gift cards for an account
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/gift_cards/cards",
          params: params,
          opts: opts
        )
      end

      # Update a gift card
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/cards/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Validates a gift card code, returning the matching gift card object if it exists.
      def self.validate(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/gift_cards/cards/validate",
          params: params,
          opts: opts
        )
      end
    end
  end
end
