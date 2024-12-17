# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module GiftCards
    class CardService < StripeService
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

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
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

      # Creates a new gift card object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/gift_cards/cards",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # List gift cards for an account
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/gift_cards/cards",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieve a gift card by id
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/gift_cards/cards/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Update a gift card
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/gift_cards/cards/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Validates a gift card code, returning the matching gift card object if it exists.
      def validate(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/gift_cards/cards/validate",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
