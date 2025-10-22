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

          # Confirm microdeposits amounts or descriptor code that you have received from the Send Microdeposits request. Once you correctly confirm this, this US Bank Account will be verified and eligible to transfer funds with.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::UsBankAccountConfirmMicrodepositsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::UsBankAccount)
           }
          def confirm_microdeposits(id, params = {}, opts = {}); end

          # Create a USBankAccount object.
          #
          # ** raises BlockedByStripeError
          # ** raises InvalidPaymentMethodError
          # ** raises QuotaExceededError
          sig {
            params(params: T.any(::Stripe::V2::Core::Vault::UsBankAccountCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::UsBankAccount)
           }
          def create(params = {}, opts = {}); end

          # List USBankAccount objects. Optionally filter by verification status.
          sig {
            params(params: T.any(::Stripe::V2::Core::Vault::UsBankAccountListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::ListObject)
           }
          def list(params = {}, opts = {}); end

          # Retrieve a USBankAccount object.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::UsBankAccountRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::UsBankAccount)
           }
          def retrieve(id, params = {}, opts = {}); end

          # Send microdeposits in order to verify your US Bank Account so it is eligible to transfer funds. This will start the verification process and you must Confirm Microdeposits to successfully verify your US Bank Account.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::UsBankAccountSendMicrodepositsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::Core::Vault::UsBankAccount)
           }
          def send_microdeposits(id, params = {}, opts = {}); end

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