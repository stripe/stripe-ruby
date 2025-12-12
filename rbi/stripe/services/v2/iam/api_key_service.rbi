# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Iam
      class ApiKeyService < StripeService
        # Create an API key.
        sig {
          params(params: T.any(::Stripe::V2::Iam::ApiKeyCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Iam::ApiKey)
         }
        def create(params = {}, opts = {}); end

        # Expire an API key.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Iam::ApiKeyExpireParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Iam::ApiKey)
         }
        def expire(id, params = {}, opts = {}); end

        # List all API keys of an account.
        sig {
          params(params: T.any(::Stripe::V2::Iam::ApiKeyListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Retrieve an API key.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Iam::ApiKeyRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Iam::ApiKey)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Rotate an API key.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Iam::ApiKeyRotateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Iam::ApiKey)
         }
        def rotate(id, params = {}, opts = {}); end

        # Update an API key.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Iam::ApiKeyUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Iam::ApiKey)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end