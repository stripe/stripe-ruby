# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class ConnectionSessionService < StripeService
        # Create a new ConnectionSession.
        sig {
          params(params: T.any(::Stripe::V2::Core::ConnectionSessionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::ConnectionSession)
         }
        def create(params = {}, opts = {}); end

        # Retrieve a ConnectionSession.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::ConnectionSessionRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::ConnectionSession)
         }
        def retrieve(id, params = {}, opts = {}); end
      end
    end
  end
end