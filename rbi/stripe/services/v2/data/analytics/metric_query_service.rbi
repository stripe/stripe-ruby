# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      module Analytics
        class MetricQueryService < StripeService
          # Run a synchronous metric query against one or more metrics within the same metric namespace.
          sig {
            params(params: T.any(::Stripe::V2::Data::Analytics::MetricQueryCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Data::Analytics::MetricQueryResult)
           }
          def create(params = {}, opts = {}); end
        end
      end
    end
  end
end