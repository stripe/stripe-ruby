# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class BatchJobService < StripeService
        # Cancels an existing batch job.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::BatchJobCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::BatchJob)
         }
        def cancel(id, params = {}, opts = {}); end

        # Creates a new batch job.
        sig {
          params(params: T.any(::Stripe::V2::Core::BatchJobCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::BatchJob)
         }
        def create(params = {}, opts = {}); end

        # Retrieves an existing batch job.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::BatchJobRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::BatchJob)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end