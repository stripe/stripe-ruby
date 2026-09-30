# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class ReportRunService < StripeService
        # Initiates the generation of a `ReportRun` based on the specified `Report` and
        # caller-provided parameters. Returns a `ReportRun` object which can be used to track
        # the progress and retrieve the results of the report.
        sig {
          params(params: T.any(::Stripe::V2::Data::ReportRunCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Data::ReportRun)
         }
        def create(params = {}, opts = {}); end

        # Fetches the current state and details of a previously created `ReportRun`. If the
        # `ReportRun` has succeeded, the endpoint provides details for how to retrieve the results.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Data::ReportRunRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Data::ReportRun)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end