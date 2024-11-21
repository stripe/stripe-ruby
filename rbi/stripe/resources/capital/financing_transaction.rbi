# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    # This is an object representing the details of a transaction on a Capital financing object.
    class FinancingTransaction < APIResource
      class Details < Stripe::StripeObject
        class Transaction < Stripe::StripeObject
          # The linked payment ID.
          sig { returns(String) }
          attr_reader :charge
          # The linked Treasury Financing Transaction ID.
          sig { returns(String) }
          attr_reader :treasury_transaction
        end
        # The advance amount being repaid, paid out, or reversed in minor units.
        sig { returns(Integer) }
        attr_reader :advance_amount
        # The currency of the financing transaction.
        sig { returns(String) }
        attr_reader :currency
        # The fee amount being repaid, paid out, or reversed in minor units.
        sig { returns(Integer) }
        attr_reader :fee_amount
        # The linked payment for the transaction. This field only applies to financing transactions of type `paydown` and reason `automatic_withholding`.
        sig { returns(String) }
        attr_reader :linked_payment
        # The reason for the financing transaction (if applicable).
        sig { returns(String) }
        attr_reader :reason
        # The reversed transaction. This field only applies to financing
        # transactions of type `reversal`.
        sig { returns(String) }
        attr_reader :reversed_transaction
        # The advance and fee amount being repaid, paid out, or reversed in minor units.
        sig { returns(Integer) }
        attr_reader :total_amount
        # This is an object representing a linked transaction on a Capital Financing Transaction.
        sig { returns(Transaction) }
        attr_reader :transaction
      end
      # The ID of the merchant associated with this financing transaction.
      sig { returns(String) }
      attr_reader :account

      # Time at which the financing transaction was created. Given in seconds since unix epoch.
      sig { returns(Integer) }
      attr_reader :created_at

      # This is an object representing a transaction on a Capital financing offer.
      sig { returns(Details) }
      attr_reader :details

      # The Capital financing offer for this financing transaction.
      sig { returns(T.nilable(String)) }
      attr_reader :financing_offer

      # A unique identifier for the financing transaction object.
      sig { returns(String) }
      attr_reader :id

      # The Capital transaction object that predates the Financing Transactions API and
      # corresponds with the balance transaction that was created as a result of this
      # financing transaction.
      sig { returns(String) }
      attr_reader :legacy_balance_transaction_source

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # The object type: financing_transaction
      sig { returns(String) }
      attr_reader :object

      # The type of the financing transaction.
      sig { returns(String) }
      attr_reader :type

      # A human-friendly description of the financing transaction.
      sig { returns(T.nilable(String)) }
      attr_reader :user_facing_description
    end
  end
end