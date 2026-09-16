# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class NetworkTokenService < StripeService
          # Creates or returns a NetworkToken from raw card data for POST /v2/core/vault/network_tokens.
          #
          # ** raises CannotProceedError
          # ** raises BlockedByStripeError
          # ** raises MerchantNotGatedError
          sig {
            params(params: T.any(::Stripe::V2::Core::Vault::NetworkTokenCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::NetworkToken)
           }
          def create(params = {}, opts = {}); end

          # Creates or returns a NetworkToken from an existing card reference for POST /v2/core/vault/network_tokens/create_from_credential.
          #
          # ** raises CannotProceedError
          # ** raises BlockedByStripeError
          sig {
            params(params: T.any(::Stripe::V2::Core::Vault::NetworkTokenCreateFromCredentialParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::NetworkToken)
           }
          def create_from_credential(params = {}, opts = {}); end

          # Generates a single-use cryptogram for POST /v2/core/vault/network_tokens/:id/generate_cryptogram.
          # Every successful call generates a new cryptogram, and retrying can generate another cryptogram.
          # The cryptogram is returned only in this response and is never persisted.
          #
          # ** raises RateLimitError
          # ** raises CannotProceedError
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::NetworkTokenGenerateCryptogramParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::NetworkToken)
           }
          def generate_cryptogram(id, params = {}, opts = {}); end

          # Retrieves the persisted NetworkToken projection for GET /v2/core/vault/network_tokens/:id.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::NetworkTokenRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::NetworkToken)
           }
          def retrieve(id, params = {}, opts = {}); end
        end
      end
    end
  end
end