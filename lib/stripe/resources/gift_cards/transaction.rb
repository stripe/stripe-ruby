# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module GiftCards
    # A gift card transaction represents a single transaction on a referenced gift card.
    # A transaction is in one of three states, `confirmed`, `held` or `canceled`. A `confirmed`
    # transaction is one that has added/deducted funds. A `held` transaction has created a
    # temporary hold on funds, which can then be cancelled or confirmed. A `held` transaction
    # can be confirmed into a `confirmed` transaction, or canceled into a `canceled` transaction.
    # A `canceled` transaction has no effect on a gift card's balance.
    class Transaction < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "gift_cards.transaction"
      def self.object_name
        "gift_cards.transaction"
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
        # The gift card to list transactions for.
        attr_accessor :gift_card
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
        attr_accessor :transfer_group

        def initialize(
          ending_before: nil,
          expand: nil,
          gift_card: nil,
          limit: nil,
          starting_after: nil,
          transfer_group: nil
        )
          @ending_before = ending_before
          @expand = expand
          @gift_card = gift_card
          @limit = limit
          @starting_after = starting_after
          @transfer_group = transfer_group
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
        # The amount of the transaction. A negative amount deducts funds, and a positive amount adds funds.
        attr_accessor :amount
        # Whether this is a confirmed transaction. A confirmed transaction immediately deducts from/adds to the `amount_available` on the gift card. Otherwise, it creates a held transaction that increments the `amount_held` on the gift card.
        attr_accessor :confirm
        # Related objects which created this transaction.
        attr_accessor :created_by
        # The currency of the transaction. This must match the currency of the gift card.
        attr_accessor :currency
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_accessor :description
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The gift card to create a new transaction on.
        attr_accessor :gift_card
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
        attr_accessor :transfer_group

        def initialize(
          amount: nil,
          confirm: nil,
          created_by: nil,
          currency: nil,
          description: nil,
          expand: nil,
          gift_card: nil,
          metadata: nil,
          transfer_group: nil
        )
          @amount = amount
          @confirm = confirm
          @created_by = created_by
          @currency = currency
          @description = description
          @expand = expand
          @gift_card = gift_card
          @metadata = metadata
          @transfer_group = transfer_group
        end
      end

      class UpdateParams < Stripe::RequestParams
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_accessor :description
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(description: nil, expand: nil, metadata: nil)
          @description = description
          @expand = expand
          @metadata = metadata
        end
      end

      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class ConfirmParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end
      # The amount of this transaction. A positive value indicates that funds were added to the gift card. A negative value indicates that funds were removed from the gift card.
      attr_reader :amount
      # Time at which the transaction was confirmed. Measured in seconds since the Unix epoch.
      attr_reader :confirmed_at
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The related Stripe objects that created this gift card transaction.
      attr_reader :created_by
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      # The gift card that this transaction occurred on
      attr_reader :gift_card
      # Unique identifier for the object.
      attr_reader :id
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Status of this transaction, one of `held`, `confirmed`, or `canceled`.
      attr_reader :status
      # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
      attr_reader :transfer_group

      # Cancel a gift card transaction
      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s/cancel", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Cancel a gift card transaction
      def self.cancel(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s/cancel", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Confirm a gift card transaction
      def confirm(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s/confirm", { id: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Confirm a gift card transaction
      def self.confirm(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s/confirm", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Create a gift card transaction
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/gift_cards/transactions",
          params: params,
          opts: opts
        )
      end

      # List gift card transactions for a gift card
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/gift_cards/transactions",
          params: params,
          opts: opts
        )
      end

      # Update a gift card transaction
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/gift_cards/transactions/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
