# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class PaymentEvaluationService < StripeService
      # Request a Radar API fraud risk score from Stripe for a payment before sending it for external processor authorization.
      sig {
        params(params: T.any(::Stripe::Radar::PaymentEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::PaymentEvaluation)
       }
      def create(params = {}, opts = {}); end
    end
  end
end