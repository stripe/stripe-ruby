# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountService < StripeService
          # Confirm that you have received the result of the Confirmation of Payee request, and that you are okay with
          # proceeding to pay out to this bank account despite the account not matching, partially matching, or the service
          # being unavailable. Once you confirm this, you will be able to send OutboundPayments, but this may lead to
          # funds being sent to the wrong account, which we might not be able to recover.
          def acknowledge_confirmation_of_payee(id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/core/vault/gb_bank_accounts/%<id>s/acknowledge_confirmation_of_payee", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Archive a GBBankAccount object. Archived GBBankAccount objects cannot be used as outbound destinations
          # and will not appear in the outbound destination list.
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
          def create(params = {}, opts = {})
            request(
              method: :post,
              path: "/v2/core/vault/gb_bank_accounts",
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Initiate Confirmation of Payee (CoP) in order to verify that the owner of a UK bank account matches
          # who you expect. This must be done on all UK bank accounts before sending domestic OutboundPayments. If
          # the result is a partial match or a non match, explicit acknowledgement using AcknowledgeConfirmationOfPayee
          # is required before sending funds.
          def initiate_confirmation_of_payee(id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/core/vault/gb_bank_accounts/%<id>s/initiate_confirmation_of_payee", { id: CGI.escape(id) }),
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
