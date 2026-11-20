# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Risk
      class EvaluationOutcomeService < StripeService
        # Lists all matching historical evaluation outcomes, newest first.
        sig {
          params(params: T.any(::Stripe::V2::Risk::EvaluationOutcomeListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves an evaluation outcome by its ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Risk::EvaluationOutcomeRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Risk::EvaluationOutcome)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end