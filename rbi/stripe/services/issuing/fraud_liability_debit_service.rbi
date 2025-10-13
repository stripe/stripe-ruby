# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class FraudLiabilityDebitService < StripeService
      # Returns a list of Issuing FraudLiabilityDebit objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::FraudLiabilityDebitListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves an Issuing FraudLiabilityDebit object.
      sig {
        params(fraud_liability_debit: String, params: T.any(::Stripe::Issuing::FraudLiabilityDebitRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Issuing::FraudLiabilityDebit)
       }
      def retrieve(fraud_liability_debit, params = {}, opts = {}); end
    end
  end
end