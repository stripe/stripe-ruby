# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    # This is an object representing the details of a transaction on a Capital financing object.
    class FinancingTransaction < APIResource
      class Details < Stripe::StripeObject
        class Transaction < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :charge
          sig { returns(String) }
          attr_reader :treasury_transaction
        end
        sig { returns(Integer) }
        attr_reader :advance_amount
        sig { returns(String) }
        attr_reader :currency
        sig { returns(Integer) }
        attr_reader :fee_amount
        sig { returns(String) }
        attr_reader :linked_payment
        sig { returns(String) }
        attr_reader :reason
        sig { returns(String) }
        attr_reader :reversed_transaction
        sig { returns(Integer) }
        attr_reader :total_amount
        sig { returns(Transaction) }
        attr_reader :transaction
      end
      sig { returns(String) }
      # The ID of the merchant associated with this financing transaction.
      attr_reader :account
      sig { returns(Integer) }
      # Time at which the financing transaction was created. Given in seconds since unix epoch.
      attr_reader :created_at
      sig { returns(Details) }
      # This is an object representing a transaction on a Capital financing offer.
      attr_reader :details
      sig { returns(T.nilable(String)) }
      # The Capital financing offer for this financing transaction.
      attr_reader :financing_offer
      sig { returns(String) }
      # A unique identifier for the financing transaction object.
      attr_reader :id
      sig { returns(String) }
      # The Capital transaction object that predates the Financing Transactions API and
      # corresponds with the balance transaction that was created as a result of this
      # financing transaction.
      attr_reader :legacy_balance_transaction_source
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # The object type: financing_transaction
      attr_reader :object
      sig { returns(String) }
      # The type of the financing transaction.
      attr_reader :type
      sig { returns(T.nilable(String)) }
      # A human-friendly description of the financing transaction.
      attr_reader :user_facing_description
    end
  end
end