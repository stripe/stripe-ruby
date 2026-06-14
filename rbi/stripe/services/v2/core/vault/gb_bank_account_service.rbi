# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountService < StripeService
          # Confirm that you have received the result of the Confirmation of Payee request, and that you are okay with
          # proceeding to pay out to this bank account despite the account not matching, partially matching, or the service
          # being unavailable. Once you confirm this, you will be able to send OutboundPayments, but this may lead to
          # funds being sent to the wrong account, which we might not be able to recover.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::GbBankAccountAcknowledgeConfirmationOfPayeeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::GbBankAccount)
           }
          def acknowledge_confirmation_of_payee(id, params = {}, opts = {}); end

          # Archive a GBBankAccount object. Archived GBBankAccount objects cannot be used as outbound destinations
          # and will not appear in the outbound destination list.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::GbBankAccountArchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::GbBankAccount)
           }
          def archive(id, params = {}, opts = {}); end

          # Create a GB bank account.
          sig {
            params(params: T.any(::Stripe::V2::Core::Vault::GbBankAccountCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::GbBankAccount)
           }
          def create(params = {}, opts = {}); end

          # Initiate Confirmation of Payee (CoP) in order to verify that the owner of a UK bank account matches
          # who you expect. This must be done on all UK bank accounts before sending domestic OutboundPayments. If
          # the result is a partial match or a non match, explicit acknowledgement using AcknowledgeConfirmationOfPayee
          # is required before sending funds.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::GbBankAccountInitiateConfirmationOfPayeeParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::GbBankAccount)
           }
          def initiate_confirmation_of_payee(id, params = {}, opts = {}); end

          # List objects that can be used as destinations for outbound money movement via OutboundPayment.
          sig {
            params(params: T.any(::Stripe::V2::Core::Vault::GbBankAccountListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(params = {}, opts = {}); end

          # Retrieve a GB bank account.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::GbBankAccountRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::GbBankAccount)
           }
          def retrieve(id, params = {}, opts = {}); end
        end
      end
    end
  end
end