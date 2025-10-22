# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class UsBankAccountService < StripeService
          # Archive a USBankAccount object. USBankAccount objects will not be automatically archived by Stripe.
          # Archived USBankAccount objects cannot be used as outbound destinations
          # and will not appear in the outbound destination list.
          #
          # ** raises ControlledByDashboardError
          def archive(id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/core/vault/us_bank_accounts/%<id>s/archive", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Confirm microdeposits amounts or descriptor code that you have received from the Send Microdeposits request. Once you correctly confirm this, this US Bank Account will be verified and eligible to transfer funds with.
          def confirm_microdeposits(id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/core/vault/us_bank_accounts/%<id>s/confirm_microdeposits", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Create a USBankAccount object.
          #
          # ** raises BlockedByStripeError
          # ** raises InvalidPaymentMethodError
          # ** raises QuotaExceededError
          def create(params = {}, opts = {})
            request(
              method: :post,
              path: "/v2/core/vault/us_bank_accounts",
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # List USBankAccount objects. Optionally filter by verification status.
          def list(params = {}, opts = {})
            request(
              method: :get,
              path: "/v2/core/vault/us_bank_accounts",
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Retrieve a USBankAccount object.
          def retrieve(id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/core/vault/us_bank_accounts/%<id>s", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Send microdeposits in order to verify your US Bank Account so it is eligible to transfer funds. This will start the verification process and you must Confirm Microdeposits to successfully verify your US Bank Account.
          def send_microdeposits(id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/core/vault/us_bank_accounts/%<id>s/send_microdeposits", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Update a USBankAccount object. This is limited to supplying a previously empty routing_number field.
          #
          # ** raises BlockedByStripeError
          # ** raises InvalidPaymentMethodError
          # ** raises QuotaExceededError
          def update(id, params = {}, opts = {})
            request(
              method: :post,
              path: format("/v2/core/vault/us_bank_accounts/%<id>s", { id: CGI.escape(id) }),
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
