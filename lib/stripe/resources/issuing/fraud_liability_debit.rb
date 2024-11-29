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

      # Returns a list of Issuing FraudLiabilityDebit objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/fraud_liability_debits",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
