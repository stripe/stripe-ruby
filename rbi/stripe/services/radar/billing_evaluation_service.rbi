# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class BillingEvaluationService < StripeService
      # Request Stripe Radar's assessment of the non-payment abuse risk of an upcoming charge, before the payment is attempted.
      sig {
        params(params: T.any(::Stripe::Radar::BillingEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::BillingEvaluation)
       }
      def create(params = {}, opts = {}); end
    end
  end
end