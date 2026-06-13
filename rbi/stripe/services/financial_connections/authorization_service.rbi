# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    class AuthorizationService < StripeService
      # Retrieves the details of an Financial Connections Authorization.
      sig {
        params(authorization: String, params: T.any(::Stripe::FinancialConnections::AuthorizationRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::FinancialConnections::Authorization)
       }
      def retrieve(authorization, params = {}, opts = {}); end
    end
  end
end