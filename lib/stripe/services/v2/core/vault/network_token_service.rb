# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class NetworkTokenService < StripeService
          # Create or Return a Network Token Using Raw Card Data.
          #
          # ** raises CannotProceedError
          # ** raises BlockedByStripeError
          # ** raises MerchantNotGatedError
          def create(params = {}, opts = {})
            request(
              method: :post,
              path: "/v2/core/vault/network_tokens",
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Creates or returns a Network Token from an existing card reference.
          #
          # ** raises CannotProceedError
          # ** raises BlockedByStripeError
          def create_from_credential(params = {}, opts = {})
            request(
              method: :post,
              path: "/v2/core/vault/network_tokens/create_from_credential",
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Every successful call generates a new cryptogram, and retrying can generate another cryptogram.
          # The cryptogram is returned only in this response and is never persisted.
          #
          # ** raises RateLimitError
          # ** raises CannotProceedError
          def generate_cryptogram(id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/core/vault/network_tokens/%<id>s/generate_cryptogram", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieves an existing network token.
          def retrieve(id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/core/vault/network_tokens/%<id>s", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
