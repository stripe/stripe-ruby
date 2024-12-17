# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module GiftCards
    # A gift card transaction represents a single transaction on a referenced gift card.
    # A transaction is in one of three states, `confirmed`, `held` or `canceled`. A `confirmed`
    # transaction is one that has added/deducted funds. A `held` transaction has created a
    # temporary hold on funds, which can then be cancelled or confirmed. A `held` transaction
    # can be confirmed into a `confirmed` transaction, or canceled into a `canceled` transaction.
    # A `canceled` transaction has no effect on a gift card's balance.
    class Transaction < APIResource
      class CreatedBy < Stripe::StripeObject
        class Checkout < Stripe::StripeObject
          # The Stripe CheckoutSession that created this object.
          sig { returns(String) }
          attr_reader :checkout_session
          # The Stripe CheckoutSession LineItem that created this object.
          sig { returns(T.nilable(String)) }
          attr_reader :line_item
        end
        class Order < Stripe::StripeObject
          # The Stripe Order LineItem that created this object.
          sig { returns(T.nilable(String)) }
          attr_reader :line_item
          # The Stripe Order that created this object.
          sig { returns(String) }
          attr_reader :order
        end
        class Payment < Stripe::StripeObject
          # The PaymentIntent that created this object.
          sig { returns(String) }
          attr_reader :payment_intent
        end
        # Attribute for field checkout
        sig { returns(Checkout) }
        attr_reader :checkout
        # Attribute for field order
        sig { returns(Order) }
        attr_reader :order
        # Attribute for field payment
        sig { returns(Payment) }
        attr_reader :payment
        # The type of event that created this object.
        sig { returns(String) }
        attr_reader :type
      end
      # The amount of this transaction. A positive value indicates that funds were added to the gift card. A negative value indicates that funds were removed from the gift card.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount
      # Time at which the transaction was confirmed. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :confirmed_at
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      attr_reader :created
      # The related Stripe objects that created this gift card transaction.
      sig { returns(T.nilable(CreatedBy)) }
      attr_reader :created_by
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      attr_reader :currency
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_reader :description
      # The gift card that this transaction occurred on
      sig { returns(T.nilable(String)) }
      attr_reader :gift_card
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Status of this transaction, one of `held`, `confirmed`, or `canceled`.
      sig { returns(T.nilable(String)) }
      attr_reader :status
      # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
      sig { returns(T.nilable(String)) }
      attr_reader :transfer_group
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(String) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # The gift card to list transactions for.
        sig { returns(String) }
        attr_accessor :gift_card
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(Integer) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after
        # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
        sig { returns(String) }
        attr_accessor :transfer_group
        sig {
          params(ending_before: String, expand: T::Array[String], gift_card: String, limit: Integer, starting_after: String, transfer_group: String).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          gift_card: nil,
          limit: nil,
          starting_after: nil,
          transfer_group: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class CreatedBy < Stripe::RequestParams
          class Payment < Stripe::RequestParams
            # The PaymentIntent used to collect payment for this object.
            sig { returns(String) }
            attr_accessor :payment_intent
            sig { params(payment_intent: String).void }
            def initialize(payment_intent: nil); end
          end
          # The details for the payment that created this object.
          sig { returns(::Stripe::GiftCards::Transaction::CreateParams::CreatedBy::Payment) }
          attr_accessor :payment
          # The type of event that created this object.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(payment: ::Stripe::GiftCards::Transaction::CreateParams::CreatedBy::Payment, type: String).void
           }
          def initialize(payment: nil, type: nil); end
        end
        # The amount of the transaction. A negative amount deducts funds, and a positive amount adds funds.
        sig { returns(Integer) }
        attr_accessor :amount
        # Whether this is a confirmed transaction. A confirmed transaction immediately deducts from/adds to the `amount_available` on the gift card. Otherwise, it creates a held transaction that increments the `amount_held` on the gift card.
        sig { returns(T::Boolean) }
        attr_accessor :confirm
        # Related objects which created this transaction.
        sig { returns(::Stripe::GiftCards::Transaction::CreateParams::CreatedBy) }
        attr_accessor :created_by
        # The currency of the transaction. This must match the currency of the gift card.
        sig { returns(String) }
        attr_accessor :currency
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(String) }
        attr_accessor :description
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # The gift card to create a new transaction on.
        sig { returns(String) }
        attr_accessor :gift_card
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata
        # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
        sig { returns(String) }
        attr_accessor :transfer_group
        sig {
          params(amount: Integer, confirm: T::Boolean, created_by: ::Stripe::GiftCards::Transaction::CreateParams::CreatedBy, currency: String, description: String, expand: T::Array[String], gift_card: String, metadata: T::Hash[String, String], transfer_group: String).void
         }
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
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(String) }
        attr_accessor :description
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        sig {
          params(description: String, expand: T::Array[String], metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(description: nil, expand: nil, metadata: nil); end
      end
      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class ConfirmParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      # Cancel a gift card transaction
      sig {
        params(params: T.any(::Stripe::GiftCards::Transaction::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Transaction)
       }
      def cancel(params = {}, opts = {}); end

      # Cancel a gift card transaction
      sig {
        params(id: String, params: T.any(::Stripe::GiftCards::Transaction::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Transaction)
       }
      def self.cancel(id, params = {}, opts = {}); end

      # Confirm a gift card transaction
      sig {
        params(params: T.any(::Stripe::GiftCards::Transaction::ConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Transaction)
       }
      def confirm(params = {}, opts = {}); end

      # Confirm a gift card transaction
      sig {
        params(id: String, params: T.any(::Stripe::GiftCards::Transaction::ConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Transaction)
       }
      def self.confirm(id, params = {}, opts = {}); end

      # Create a gift card transaction
      sig {
        params(params: T.any(::Stripe::GiftCards::Transaction::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Transaction)
       }
      def self.create(params = {}, opts = {}); end

      # List gift card transactions for a gift card
      sig {
        params(params: T.any(::Stripe::GiftCards::Transaction::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Update a gift card transaction
      sig {
        params(id: String, params: T.any(::Stripe::GiftCards::Transaction::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Transaction)
       }
      def self.update(id, params = {}, opts = {}); end
    end
  end
end