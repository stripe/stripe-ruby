# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      class AccountEvaluationService < StripeService
        # Creates a new account evaluation to request signal evaluations on an account, customer, or inline account data.
        sig {
          params(params: T.any(::Stripe::V2::Signals::AccountEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Signals::AccountEvaluation)
         }
        def create(params = {}, opts = {}); end

        # Retrieves an AccountEvaluation by its ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Signals::AccountEvaluationRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Signals::AccountEvaluation)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end