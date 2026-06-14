# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class IssuingAuthorizationEvaluationService < StripeService
      # Request a fraud risk assessment from Stripe for an Issuing card authorization.
      sig {
        params(params: T.any(::Stripe::Radar::IssuingAuthorizationEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::IssuingAuthorizationEvaluation)
       }
      def create(params = {}, opts = {}); end
    end
  end
end