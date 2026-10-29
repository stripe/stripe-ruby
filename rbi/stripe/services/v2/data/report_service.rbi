# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      class ReportService < StripeService
        # Returns a list of Stripe-defined reports that the caller can create a `ReportRun` for.
        sig {
          params(params: T.any(::Stripe::V2::Data::ReportListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieves metadata about a specific `Report`, including its name, description, and
        # the parameters it accepts. It's useful for understanding the capabilities and
        # requirements of a particular `Report` before requesting a `ReportRun`.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Data::ReportRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Data::Report)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end