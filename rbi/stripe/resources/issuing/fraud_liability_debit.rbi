# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # A fraud liability debit occurs when Stripe debits a platform's account for fraud losses on Issuing transactions.
    class FraudLiabilityDebit < APIResource
      # Debited amount. This is equal to the disputed amount and is given in the card’s currency and in the smallest currency unit.
      sig { returns(Integer) }
      def amount; end
      # ID of the [balance transaction](https://stripe.com/docs/api/balance_transactions) associated with this debit.
      sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
      def balance_transaction; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # The currency of the debit. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # The ID of the linked dispute.
      sig { returns(String) }
      def dispute; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Returns a list of Issuing FraudLiabilityDebit objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::FraudLiabilityDebitListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end