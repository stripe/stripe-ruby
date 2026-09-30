# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class QueryRunService < StripeService
        # Submits a SQL query for execution against a dataset and returns a `QueryRun` object
        # to track progress and retrieve results.
        sig {
          params(params: T.any(::Stripe::V2::Data::QueryRunCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Data::QueryRun)
         }
        def create(params = {}, opts = {}); end

        # Retrieves the status and results of a previously created `QueryRun`.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Data::QueryRunRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Data::QueryRun)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end