# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Signals
      class PaymentRetryEvaluationService < StripeService
        # Cancels an active payment retry evaluation.
        #
        # ** raises CannotProceedError
        sig {
          params(id: String, params: T.any(::Stripe::V2::Signals::PaymentRetryEvaluationCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Signals::PaymentRetryEvaluation)
         }
        def cancel(id, params = {}, opts = {}); end

        # Creates a new payment retry evaluation for a failed payment.
        #
        # ** raises AlreadyExistsError
        # ** raises CannotProceedError
        sig {
          params(params: T.any(::Stripe::V2::Signals::PaymentRetryEvaluationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Signals::PaymentRetryEvaluation)
         }
        def create(params = {}, opts = {}); end

        # Retrieves a payment retry evaluation by ID.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Signals::PaymentRetryEvaluationRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Signals::PaymentRetryEvaluation)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Updates an active payment retry evaluation with a replacement payment identifier.
        #
        # ** raises AlreadyExistsError
        # ** raises CannotProceedError
        sig {
          params(id: String, params: T.any(::Stripe::V2::Signals::PaymentRetryEvaluationUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Signals::PaymentRetryEvaluation)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end