# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # A fraud liability debit occurs when Stripe debits a platform's account for fraud losses on Issuing transactions.
    class FraudLiabilityDebit < APIResource
      # Debited amount. This is equal to the disputed amount and is given in the card’s currency and in the smallest currency unit.
      sig { returns(Integer) }
      attr_reader :amount

      # ID of the [balance transaction](https://stripe.com/docs/api/balance_transactions) associated with this debit.
      sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
      attr_reader :balance_transaction

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # The currency of the debit. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency

      # The ID of the linked dispute.
      sig { returns(String) }
      attr_reader :dispute

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
    end
  end
end