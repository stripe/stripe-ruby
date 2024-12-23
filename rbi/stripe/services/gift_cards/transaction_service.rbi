# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module GiftCards
    class TransactionService < StripeService
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
          sig { returns(::Stripe::GiftCards::TransactionService::CreateParams::CreatedBy::Payment) }
          attr_accessor :payment
          # The type of event that created this object.
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(payment: ::Stripe::GiftCards::TransactionService::CreateParams::CreatedBy::Payment, type: String).void
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
        sig { returns(::Stripe::GiftCards::TransactionService::CreateParams::CreatedBy) }
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
          params(amount: Integer, confirm: T::Boolean, created_by: ::Stripe::GiftCards::TransactionService::CreateParams::CreatedBy, currency: String, description: String, expand: T::Array[String], gift_card: String, metadata: T::Hash[String, String], transfer_group: String).void
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
        params(id: String, params: T.any(::Stripe::GiftCards::TransactionService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Transaction)
       }
      def cancel(id, params = {}, opts = {}); end

      # Confirm a gift card transaction
      sig {
        params(id: String, params: T.any(::Stripe::GiftCards::TransactionService::ConfirmParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Transaction)
       }
      def confirm(id, params = {}, opts = {}); end

      # Create a gift card transaction
      sig {
        params(params: T.any(::Stripe::GiftCards::TransactionService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Transaction)
       }
      def create(params = {}, opts = {}); end

      # List gift card transactions for a gift card
      sig {
        params(params: T.any(::Stripe::GiftCards::TransactionService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the gift card transaction.
      sig {
        params(id: String, params: T.any(::Stripe::GiftCards::TransactionService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Transaction)
       }
      def retrieve(id, params = {}, opts = {}); end

      # Update a gift card transaction
      sig {
        params(id: String, params: T.any(::Stripe::GiftCards::TransactionService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::GiftCards::Transaction)
       }
      def update(id, params = {}, opts = {}); end
    end
  end
end