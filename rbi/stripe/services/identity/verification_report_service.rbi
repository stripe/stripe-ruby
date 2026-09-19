# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Identity
    class VerificationReportService < StripeService
      # List all verification reports.
      sig {
        params(params: T.any(::Stripe::Identity::VerificationReportListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves an existing VerificationReport
      sig {
        params(id: String, params: T.any(::Stripe::Identity::VerificationReportRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Identity::VerificationReport)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end