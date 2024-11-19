# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # A fraud liability debit occurs when Stripe debits a platform's account for fraud losses on Issuing transactions.
    class FraudLiabilityDebit < APIResource
      sig { returns(Integer) }
      # Debited amount. This is equal to the disputed amount and is given in the card’s currency and in the smallest currency unit.
      attr_reader :amount
      sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
      # ID of the [balance transaction](https://stripe.com/docs/api/balance_transactions) associated with this debit.
      attr_reader :balance_transaction
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # The currency of the debit. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(String) }
      # The ID of the linked dispute.
      attr_reader :dispute
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
    end
  end
end