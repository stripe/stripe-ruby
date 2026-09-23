# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    class ConsentService < StripeService
      # Creates a Financial Connections Consent object for an account holder.
      sig {
        params(params: T.any(::Stripe::FinancialConnections::ConsentCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FinancialConnections::Consent)
       }
      def create(params = {}, opts = {}); end

      # Retrieves the details of a Financial Connections Consent.
      sig {
        params(consent: String, params: T.any(::Stripe::FinancialConnections::ConsentRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FinancialConnections::Consent)
       }
      def retrieve(consent, params = {}, opts = {}); end
    end
  end
end