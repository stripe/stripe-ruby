# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      module Reporting
        class QueryRunService < StripeService
          # Creates a query run to execute ad-hoc SQL and returns a `QueryRun` object to track progress and retrieve results.
          sig {
            params(params: T.any(::Stripe::V2::Data::Reporting::QueryRunCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Data::Reporting::QueryRun)
           }
          def create(params = {}, opts = {}); end

          # Fetches the current state and details of a previously created `QueryRun`. If the `QueryRun`
          # has succeeded, the endpoint will provide details for how to retrieve the results.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Data::Reporting::QueryRunRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Data::Reporting::QueryRun)
           }
          def retrieve(id, params = {}, opts = {}); end
        end
      end
    end
  end
end