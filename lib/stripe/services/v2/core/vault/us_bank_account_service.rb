# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class UsBankAccountService < StripeService
          class ArchiveParams < Stripe::RequestParams
          end

          class CreateParams < Stripe::RequestParams
            # The account number of the bank account.
            attr_accessor :account_number
            # Closed Enum. The type of the bank account (checking or savings).
            attr_accessor :bank_account_type
            # The fedwire routing number of the bank account. Note that certain banks have the same ACH and wire routing number.
            attr_accessor :fedwire_routing_number
            # The ACH routing number of the bank account. Note that certain banks have the same ACH and wire routing number.
            attr_accessor :routing_number

            def initialize(
              account_number: nil,
              bank_account_type: nil,
              fedwire_routing_number: nil,
              routing_number: nil
            )
              @account_number = account_number
              @bank_account_type = bank_account_type
              @fedwire_routing_number = fedwire_routing_number
              @routing_number = routing_number
            end
          end

          class RetrieveParams < Stripe::RequestParams
          end

          class UpdateParams < Stripe::RequestParams
            # The bank account's fedwire routing number can be provided for update it was were empty previously.
            attr_accessor :fedwire_routing_number
            # The bank account's ACH routing number can be provided for update if it was empty previously.
            attr_accessor :routing_number

            def initialize(fedwire_routing_number: nil, routing_number: nil)
              @fedwire_routing_number = fedwire_routing_number
              @routing_number = routing_number
            end
          end

          # Archive a UsBankAccount object. UsBankAccount objects will not be automatically archived by Stripe.
          # Archived UsBankAccount objects cannot be used as outbound destinations
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

          # Create a UsBankAccount object.
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

          # Retrieve a UsBankAccount object.
          def retrieve(id, params = {}, opts = {})
            request(
              method: :get,
              path: format("/v2/core/vault/us_bank_accounts/%<id>s", { id: CGI.escape(id) }),
              params: params,
              opts: opts,
              base_address: :api
            )
          end

          # Update a UsBankAccount object. This is limited to supplying a previously empty routing_number field.
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
