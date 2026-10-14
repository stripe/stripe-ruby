# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::GbBankAccountArchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::GbBankAccount)
           }
          def archive(id, params = {}, opts = {}); end

          # Create a GB bank account.
          #
          # ** raises BlockedByStripeError
          # ** raises CannotProceedError
          # ** raises InvalidVaultedCredentialError
          # ** raises QuotaExceededError
          sig {
            params(params: T.any(::Stripe::V2::Core::Vault::GbBankAccountCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::GbBankAccount)
           }
          def create(params = {}, opts = {}); end

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