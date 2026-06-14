# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class AccountEvaluationService < StripeService
      # Creates a new AccountEvaluation object.
      sig {
        params(params: T.any(::Stripe::Radar::AccountEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::AccountEvaluation)
       }
      def create(params = {}, opts = {}); end

      # Retrieves an AccountEvaluation object.
      sig {
        params(account_evaluation: String, params: T.any(::Stripe::Radar::AccountEvaluationRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::AccountEvaluation)
       }
      def retrieve(account_evaluation, params = {}, opts = {}); end

      # Reports an event on an AccountEvaluation object.
      sig {
        params(account_evaluation: String, params: T.any(::Stripe::Radar::AccountEvaluationUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Radar::AccountEvaluation)
       }
      def update(account_evaluation, params = {}, opts = {}); end
    end
  end
end