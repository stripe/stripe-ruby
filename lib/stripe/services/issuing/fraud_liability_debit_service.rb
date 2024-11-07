# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class FraudLiabilityDebitService < StripeService
      # Returns a list of Issuing FraudLiabilityDebit objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/issuing/fraud_liability_debits",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves an Issuing FraudLiabilityDebit object.
      def retrieve(fraud_liability_debit, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/issuing/fraud_liability_debits/%<fraud_liability_debit>s", { fraud_liability_debit: CGI.escape(fraud_liability_debit) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
