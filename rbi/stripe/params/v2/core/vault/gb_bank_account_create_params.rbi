# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountCreateParams < ::Stripe::RequestParams
          class ConfirmationOfPayee < ::Stripe::RequestParams
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
            returns(T.nilable(::Stripe::V2::Core::Vault::GbBankAccountCreateParams::ConfirmationOfPayee))
           }
          def confirmation_of_payee; end
          sig {
            params(_confirmation_of_payee: T.nilable(::Stripe::V2::Core::Vault::GbBankAccountCreateParams::ConfirmationOfPayee)).returns(T.nilable(::Stripe::V2::Core::Vault::GbBankAccountCreateParams::ConfirmationOfPayee))
           }
          def confirmation_of_payee=(_confirmation_of_payee); end
          # The Sort Code of the bank account.
          sig { returns(String) }
          def sort_code; end
          sig { params(_sort_code: String).returns(String) }
          def sort_code=(_sort_code); end
          sig {
            params(account_number: String, bank_account_type: T.nilable(String), confirmation_of_payee: T.nilable(::Stripe::V2::Core::Vault::GbBankAccountCreateParams::ConfirmationOfPayee), sort_code: String).void
           }
          def initialize(
            account_number: nil,
            bank_account_type: nil,
            confirmation_of_payee: nil,
            sort_code: nil
          ); end
        end
      end
    end
  end
end