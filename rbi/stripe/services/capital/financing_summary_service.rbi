# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    class FinancingSummaryService < StripeService
      # Retrieve the financing summary object for the account.
      sig {
        params(params: T.any(::Stripe::Capital::FinancingSummaryRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Capital::FinancingSummary)
       }
      def retrieve(params = {}, opts = {}); end
    end
  end
end