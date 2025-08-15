# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Reporting
      class ReportService < StripeService
        class RetrieveParams < Stripe::RequestParams; end
        # Retrieves metadata about a specific `Report` template, including its name, description,
        # and the parameters it accepts. It's useful for understanding the capabilities and
        # requirements of a particular `Report` before requesting a `ReportRun`.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Reporting::ReportService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Reporting::Report)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end