# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
              sig { returns(T.nilable(String)) }
              attr_accessor :business_type
              # User specifies whether Confirmation of Payee is automatically initiated when creating the bank account.
              sig { returns(T::Boolean) }
              attr_accessor :initiate
              # The name to be checked against. Legal entity information will be used if unspecified.
              sig { returns(T.nilable(String)) }
              attr_accessor :name
              sig {
                params(business_type: T.nilable(String), initiate: T::Boolean, name: T.nilable(String)).void
               }
              def initialize(business_type: nil, initiate: nil, name: nil); end
            end
            # The Account Number of the bank account.
            sig { returns(String) }
            attr_accessor :account_number
            # Closed Enum. The type of the bank account (checking or savings).
            sig { returns(T.nilable(String)) }
            attr_accessor :bank_account_type
            # Whether or not to automatically perform Confirmation of Payee to verify the users information
            # against what was provided by the bank. Doing so is required for all bank accounts not owned
            # by you before making domestic UK OutboundPayments.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Vault::GbBankAccountService::CreateParams::ConfirmationOfPayee))
             }
            attr_accessor :confirmation_of_payee
            # The Sort Code of the bank account.
            sig { returns(String) }
            attr_accessor :sort_code
            sig {
              params(account_number: String, bank_account_type: T.nilable(String), confirmation_of_payee: T.nilable(::Stripe::V2::Core::Vault::GbBankAccountService::CreateParams::ConfirmationOfPayee), sort_code: String).void
             }
            def initialize(
              account_number: nil,
              bank_account_type: nil,
              confirmation_of_payee: nil,
              sort_code: nil
            ); end
          end
          class InitiateConfirmationOfPayeeParams < Stripe::RequestParams
            # The business type to be checked against. Legal entity information will be used if unspecified.
            sig { returns(T.nilable(String)) }
            attr_accessor :business_type
            # The name of the user to be checked against. Legal entity information will be used if unspecified.
            sig { returns(T.nilable(String)) }
            attr_accessor :name
            sig { params(business_type: T.nilable(String), name: T.nilable(String)).void }
            def initialize(business_type: nil, name: nil); end
          end
          class RetrieveParams < Stripe::RequestParams; end
          # Confirm that you have received the result of the Confirmation of Payee request, and that you are okay with
          # proceeding to pay out to this bank account despite the account not matching, partially matching, or the service
          # being unavailable. Once you confirm this, you will be able to send OutboundPayments, but this may lead to
          # funds being sent to the wrong account, which we might not be able to recover.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::GbBankAccountService::AcknowledgeConfirmationOfPayeeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Vault::GbBankAccount)
           }
          def acknowledge_confirmation_of_payee(id, params = {}, opts = {}); end

          # Archive a GBBankAccount object. Archived GBBankAccount objects cannot be used as outbound destinations
          # and will not appear in the outbound destination list.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::GbBankAccountService::ArchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Vault::GbBankAccount)
           }
          def archive(id, params = {}, opts = {}); end

          # Create a GB bank account.
          sig {
            params(params: T.any(::Stripe::V2::Core::Vault::GbBankAccountService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Vault::GbBankAccount)
           }
          def create(params = {}, opts = {}); end

          # Initiate Confirmation of Payee (CoP) in order to verify that the owner of a UK bank account matches
          # who you expect. This must be done on all UK bank accounts before sending domestic OutboundPayments. If
          # the result is a partial match or a non match, explicit acknowledgement using AcknowledgeConfirmationOfPayee
          # is required before sending funds.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::GbBankAccountService::InitiateConfirmationOfPayeeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Vault::GbBankAccount)
           }
          def initiate_confirmation_of_payee(id, params = {}, opts = {}); end

          # Retrieve a GB bank account.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::GbBankAccountService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Vault::GbBankAccount)
           }
          def retrieve(id, params = {}, opts = {}); end
        end
      end
    end
  end
end