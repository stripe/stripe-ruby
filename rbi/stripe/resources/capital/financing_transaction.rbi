# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    # This is an object representing the details of a transaction on a Capital financing object.
    class FinancingTransaction < APIResource
      class Details < ::Stripe::StripeObject
        class Transaction < ::Stripe::StripeObject
          # The linked payment ID.
          sig { returns(T.nilable(String)) }
          def charge; end
          # The linked Treasury Financing Transaction ID.
          sig { returns(T.nilable(String)) }
          def treasury_transaction; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The advance amount being repaid, paid out, or reversed in minor units.
        sig { returns(Integer) }
        def advance_amount; end
        # The currency of the financing transaction.
        sig { returns(String) }
        def currency; end
        # The fee amount being repaid, paid out, or reversed in minor units.
        sig { returns(Integer) }
        def fee_amount; end
        # The linked payment for the transaction. This field only applies to financing transactions of type `paydown` and reason `automatic_withholding`.
        sig { returns(T.nilable(String)) }
        def linked_payment; end
        # The reason for the financing transaction (if applicable).
        sig { returns(T.nilable(String)) }
        def reason; end
        # The reversed transaction. This field only applies to financing
        # transactions of type `reversal`.
        sig { returns(T.nilable(String)) }
        def reversed_transaction; end
        # The advance and fee amount being repaid, paid out, or reversed in minor units.
        sig { returns(Integer) }
        def total_amount; end
        # This is an object representing a linked transaction on a Capital Financing Transaction.
        sig { returns(T.nilable(Transaction)) }
        def transaction; end
        def self.inner_class_types
          @inner_class_types = {transaction: Transaction}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The ID of the merchant associated with this financing transaction.
      sig { returns(String) }
      def account; end
      # Time at which the financing transaction was created. Given in seconds since unix epoch.
      sig { returns(Integer) }
      def created_at; end
      # This is an object representing a transaction on a Capital financing offer.
      sig { returns(Details) }
      def details; end
      # The Capital financing offer for this financing transaction.
      sig { returns(T.nilable(String)) }
      def financing_offer; end
      # A unique identifier for the financing transaction object.
      sig { returns(String) }
      def id; end
      # The Capital transaction object that predates the Financing Transactions API and
      # corresponds with the balance transaction that was created as a result of this
      # financing transaction.
      sig { returns(T.nilable(String)) }
      def legacy_balance_transaction_source; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # The object type: financing_transaction
      sig { returns(String) }
      def object; end
      # The type of the financing transaction.
      sig { returns(String) }
      def type; end
      # A human-friendly description of the financing transaction.
      sig { returns(T.nilable(String)) }
      def user_facing_description; end
      # Returns a list of financing transactions. The transactions are returned in sorted order,
      # with the most recent transactions appearing first.
      sig {
        params(params: T.any(::Stripe::Capital::FinancingTransactionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end