# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class OperationService < StripeService
        # Resolve a natural-language query into ranked public analytical resources
        # (schemas, reports, and metrics) with execution context.
        sig {
          params(params: T.any(::Stripe::V2::Data::OperationSearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Data::SearchResultList)
         }
        def search(params = {}, opts = {}); end
      end
    end
  end
end