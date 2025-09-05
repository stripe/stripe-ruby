# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountService < StripeService
          class CreateParams < Stripe::RequestParams
            class ConfirmationOfPayee < Stripe::RequestParams
              # The business type to be checked against. Legal entity information will be used if unspecified.
              # Closed enum.
              sig { returns(T.nilable(String)) }
              def business_type; end
              sig { params(_business_type: T.nilable(String)).returns(T.nilable(String)) }
              def business_type=(_business_type); end
              # User specifies whether Confirmation of Payee is automatically initiated when creating the bank account.
              sig { returns(T::Boolean) }
              def initiate; end
              sig { params(_initiate: T::Boolean).returns(T::Boolean) }
              def initiate=(_initiate); end
              # The name to be checked against. Legal entity information will be used if unspecified.
              sig { returns(T.nilable(String)) }
              def name; end
              sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
              def name=(_name); end
              sig {
                params(business_type: T.nilable(String), initiate: T::Boolean, name: T.nilable(String)).void
               }
              def initialize(business_type: nil, initiate: nil, name: nil); end
            end
            # The Account Number of the bank account.
            sig { returns(String) }
            def account_number; end
            sig { params(_account_number: String).returns(String) }
            def account_number=(_account_number); end
            # Closed Enum. The type of the bank account (checking or savings).
            sig { returns(T.nilable(String)) }
            def bank_account_type; end
            sig { params(_bank_account_type: T.nilable(String)).returns(T.nilable(String)) }
            def bank_account_type=(_bank_account_type); end
            # Whether or not to automatically perform Confirmation of Payee to verify the users information
            # against what was provided by the bank. Doing so is required for all bank accounts not owned
            # by you before making domestic UK OutboundPayments.
            sig {
              returns(T.nilable(::Stripe::V2::Core::Vault::GbBankAccountService::CreateParams::ConfirmationOfPayee))
             }
            def confirmation_of_payee; end
            sig {
              params(_confirmation_of_payee: T.nilable(::Stripe::V2::Core::Vault::GbBankAccountService::CreateParams::ConfirmationOfPayee)).returns(T.nilable(::Stripe::V2::Core::Vault::GbBankAccountService::CreateParams::ConfirmationOfPayee))
             }
            def confirmation_of_payee=(_confirmation_of_payee); end
            # The Sort Code of the bank account.
            sig { returns(String) }
            def sort_code; end
            sig { params(_sort_code: String).returns(String) }
            def sort_code=(_sort_code); end
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
          class RetrieveParams < Stripe::RequestParams; end
          class AcknowledgeConfirmationOfPayeeParams < Stripe::RequestParams; end
          class ArchiveParams < Stripe::RequestParams; end
          class InitiateConfirmationOfPayeeParams < Stripe::RequestParams
            # The business type to be checked against. Legal entity information will be used if unspecified.
            sig { returns(T.nilable(String)) }
            def business_type; end
            sig { params(_business_type: T.nilable(String)).returns(T.nilable(String)) }
            def business_type=(_business_type); end
            # The name of the user to be checked against. Legal entity information will be used if unspecified.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            sig { params(business_type: T.nilable(String), name: T.nilable(String)).void }
            def initialize(business_type: nil, name: nil); end
          end
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