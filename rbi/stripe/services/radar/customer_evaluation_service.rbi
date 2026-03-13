# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class CustomerEvaluationService < StripeService
      # Creates a new CustomerEvaluation object.
      sig {
        params(params: T.any(::Stripe::Radar::CustomerEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::CustomerEvaluation)
       }
      def create(params = {}, opts = {}); end
    end
  end
end