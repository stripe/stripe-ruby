# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    class InstitutionService < StripeService
      # Returns a list of Financial Connections Institution objects.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::InstitutionListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of a Financial Connections Institution.
      sig {
        params(institution: String, params: T.any(::Stripe::FinancialConnections::InstitutionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FinancialConnections::Institution)
       }
      def retrieve(institution, params = {}, opts = {}); end
    end
  end
end