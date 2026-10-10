# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountService < StripeService
          # Archive a GBBankAccount object. Archived GBBankAccount objects cannot be used as outbound destinations
          # and will not appear in the outbound destination list.
          #
          # ** raises CannotProceedError
          # ** raises ControlledByAlternateResourceError
          def archive(id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/core/vault/gb_bank_accounts/%<id>s/archive", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Create a GB bank account.
          #
          # ** raises BlockedByStripeError
          # ** raises CannotProceedError
          # ** raises InvalidVaultedCredentialError
          # ** raises QuotaExceededError
          def create(params = {}, opts = {})
            request(
              method: :post,
              path: "/v2/core/vault/gb_bank_accounts",
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # List objects that can be used as destinations for outbound money movement via OutboundPayment.
          def list(params = {}, opts = {})
            request(
              method: :get,
              path: "/v2/core/vault/gb_bank_accounts",
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a GB bank account.
          def retrieve(id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/core/vault/gb_bank_accounts/%<id>s", { id: CGI.escape(id) }),
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
