# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # A fraud liability debit occurs when Stripe debits a platform's account for fraud losses on Issuing transactions.
    class FraudLiabilityDebit < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "issuing.fraud_liability_debit"
      def self.object_name
        "issuing.fraud_liability_debit"
      end

      # Debited amount. This is equal to the disputed amount and is given in the card’s currency and in the smallest currency unit.
      attr_reader :amount
      # ID of the [balance transaction](https://stripe.com/docs/api/balance_transactions) associated with this debit.
      attr_reader :balance_transaction
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The currency of the debit. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The ID of the linked dispute.
      attr_reader :dispute
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # Returns a list of Issuing FraudLiabilityDebit objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/fraud_liability_debits",
          params: params,
          opts: opts
        )
      end
    end
  end
end
