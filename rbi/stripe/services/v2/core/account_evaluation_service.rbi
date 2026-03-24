# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class AccountEvaluationService < StripeService
        # Creates a new account evaluation to trigger signal evaluations on an account or account data.
        sig {
          params(params: T.any(::Stripe::V2::Core::AccountEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::AccountEvaluation)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end