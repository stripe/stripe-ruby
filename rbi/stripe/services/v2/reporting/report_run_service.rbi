# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Reporting
      class ReportRunService < StripeService
        # Initiates the generation of a `ReportRun` based on the specified report template
        # and user-provided parameters. It's the starting point for obtaining report data,
        # and returns a `ReportRun` object which can be used to track the progress and retrieve
        # the results of the report.
        #
        # ** raises RateLimitError
        sig {
          params(params: T.any(::Stripe::V2::Reporting::ReportRunCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Reporting::ReportRun)
         }
        def create(params = {}, opts = {}); end

        # Fetches the current state and details of a previously created `ReportRun`. If the `ReportRun`
        # has succeeded, the endpoint will provide details for how to retrieve the results.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Reporting::ReportRunRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Reporting::ReportRun)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end