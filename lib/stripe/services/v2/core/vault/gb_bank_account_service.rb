# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountService < StripeService
          class AcknowledgeConfirmationOfPayeeParams < Stripe::RequestParams; end
          class ArchiveParams < Stripe::RequestParams; end

          class CreateParams < Stripe::RequestParams
            class ConfirmationOfPayee < Stripe::RequestParams
              # The business type to be checked against. Legal entity information will be used if unspecified.
              # Closed enum.
              attr_accessor :business_type
              # User specifies whether Confirmation of Payee is automatically initiated when creating the bank account.
              attr_accessor :initiate
              # The name to be checked against. Legal entity information will be used if unspecified.
              attr_accessor :name

              def initialize(business_type: nil, initiate: nil, name: nil)
                @business_type = business_type
                @initiate = initiate
                @name = name
              end
            end
            # The Account Number of the bank account.
            attr_accessor :account_number
            # Closed Enum. The type of the bank account (checking or savings).
            attr_accessor :bank_account_type
            # Whether or not to automatically perform Confirmation of Payee to verify the users information
            # against what was provided by the bank. Doing so is required for all bank accounts not owned
            # by you before making domestic UK OutboundPayments.
            attr_accessor :confirmation_of_payee
            # The Sort Code of the bank account.
            attr_accessor :sort_code

            def initialize(
              account_number: nil,
              bank_account_type: nil,
              confirmation_of_payee: nil,
              sort_code: nil
            )
              @account_number = account_number
              @bank_account_type = bank_account_type
              @confirmation_of_payee = confirmation_of_payee
              @sort_code = sort_code
            end
          end

          class InitiateConfirmationOfPayeeParams < Stripe::RequestParams
            # The business type to be checked against. Legal entity information will be used if unspecified.
            attr_accessor :business_type
            # The name of the user to be checked against. Legal entity information will be used if unspecified.
            attr_accessor :name

            def initialize(business_type: nil, name: nil)
              @business_type = business_type
              @name = name
            end
          end

          class RetrieveParams < Stripe::RequestParams; end

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
