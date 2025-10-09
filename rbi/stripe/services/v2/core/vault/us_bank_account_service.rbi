# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::UsBankAccountArchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::UsBankAccount)
           }
          def archive(id, params = {}, opts = {}); end

          # Create a USBankAccount object.
          #
          # ** raises BlockedByStripeError
          # ** raises InvalidPaymentMethodError
          # ** raises QuotaExceededError
          sig {
            params(params: T.any(::Stripe::V2::Core::Vault::UsBankAccountCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::UsBankAccount)
           }
          def create(params = {}, opts = {}); end

          # Retrieve a USBankAccount object.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::UsBankAccountRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::UsBankAccount)
           }
          def retrieve(id, params = {}, opts = {}); end

          # Update a USBankAccount object. This is limited to supplying a previously empty routing_number field.
          #
          # ** raises BlockedByStripeError
          # ** raises InvalidPaymentMethodError
          # ** raises QuotaExceededError
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::UsBankAccountUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::UsBankAccount)
           }
          def update(id, params = {}, opts = {}); end
        end
      end
    end
  end
end