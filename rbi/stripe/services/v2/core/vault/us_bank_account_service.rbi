# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class UsBankAccountService < StripeService
          class CreateParams < Stripe::RequestParams
            # The account number of the bank account.
            sig { returns(String) }
            def account_number; end
            sig { params(_account_number: String).returns(String) }
            def account_number=(_account_number); end
            # Closed Enum. The type of the bank account (checking or savings).
            sig { returns(T.nilable(String)) }
            def bank_account_type; end
            sig { params(_bank_account_type: T.nilable(String)).returns(T.nilable(String)) }
            def bank_account_type=(_bank_account_type); end
            # The fedwire routing number of the bank account. Note that certain banks have the same ACH and wire routing number.
            sig { returns(T.nilable(String)) }
            def fedwire_routing_number; end
            sig { params(_fedwire_routing_number: T.nilable(String)).returns(T.nilable(String)) }
            def fedwire_routing_number=(_fedwire_routing_number); end
            # The ACH routing number of the bank account. Note that certain banks have the same ACH and wire routing number.
            sig { returns(T.nilable(String)) }
            def routing_number; end
            sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
            def routing_number=(_routing_number); end
            sig {
              params(account_number: String, bank_account_type: T.nilable(String), fedwire_routing_number: T.nilable(String), routing_number: T.nilable(String)).void
             }
            def initialize(
              account_number: nil,
              bank_account_type: nil,
              fedwire_routing_number: nil,
              routing_number: nil
            ); end
          end
          class RetrieveParams < Stripe::RequestParams; end
          class UpdateParams < Stripe::RequestParams
            # The bank account's fedwire routing number can be provided for update it was were empty previously.
            sig { returns(T.nilable(String)) }
            def fedwire_routing_number; end
            sig { params(_fedwire_routing_number: T.nilable(String)).returns(T.nilable(String)) }
            def fedwire_routing_number=(_fedwire_routing_number); end
            # The bank account's ACH routing number can be provided for update if it was empty previously.
            sig { returns(T.nilable(String)) }
            def routing_number; end
            sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
            def routing_number=(_routing_number); end
            sig {
              params(fedwire_routing_number: T.nilable(String), routing_number: T.nilable(String)).void
             }
            def initialize(fedwire_routing_number: nil, routing_number: nil); end
          end
          class ArchiveParams < Stripe::RequestParams; end
          # Archive a USBankAccount object. USBankAccount objects will not be automatically archived by Stripe.
          # Archived USBankAccount objects cannot be used as outbound destinations
          # and will not appear in the outbound destination list.
          #
          # ** raises ControlledByDashboardError
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::UsBankAccountService::ArchiveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Vault::UsBankAccount)
           }
          def archive(id, params = {}, opts = {}); end

          # Create a USBankAccount object.
          #
          # ** raises BlockedByStripeError
          # ** raises InvalidPaymentMethodError
          # ** raises QuotaExceededError
          sig {
            params(params: T.any(::Stripe::V2::Core::Vault::UsBankAccountService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Vault::UsBankAccount)
           }
          def create(params = {}, opts = {}); end

          # Retrieve a USBankAccount object.
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::UsBankAccountService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Vault::UsBankAccount)
           }
          def retrieve(id, params = {}, opts = {}); end

          # Update a USBankAccount object. This is limited to supplying a previously empty routing_number field.
          #
          # ** raises BlockedByStripeError
          # ** raises InvalidPaymentMethodError
          # ** raises QuotaExceededError
          sig {
            params(id: String, params: T.any(::Stripe::V2::Core::Vault::UsBankAccountService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Core::Vault::UsBankAccount)
           }
          def update(id, params = {}, opts = {}); end
        end
      end
    end
  end
end