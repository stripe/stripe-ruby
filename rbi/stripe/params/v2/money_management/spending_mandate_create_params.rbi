# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class SpendingMandateCreateParams < ::Stripe::RequestParams
        class BankTransfer < ::Stripe::RequestParams
          class Ach < ::Stripe::RequestParams
            # ACH Company ID identifying the authorized originator. Must contain exactly 10 alphanumeric characters.
            sig { returns(String) }
            def originator_company_id; end
            sig { params(_originator_company_id: String).returns(String) }
            def originator_company_id=(_originator_company_id); end
            # Positive per-debit limit in USD.
            sig { returns(T.nilable(::Stripe::V2::Amount)) }
            def transaction_limit; end
            sig {
              params(_transaction_limit: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
             }
            def transaction_limit=(_transaction_limit); end
            sig {
              params(originator_company_id: String, transaction_limit: T.nilable(::Stripe::V2::Amount)).void
             }
            def initialize(originator_company_id: nil, transaction_limit: nil); end
          end
          # Display name for the authorized originator.
          sig { returns(String) }
          def account_holder_name; end
          sig { params(_account_holder_name: String).returns(String) }
          def account_holder_name=(_account_holder_name); end
          # ACH authorization details. Required when `network` is `ach`.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateCreateParams::BankTransfer::Ach))
           }
          def ach; end
          sig {
            params(_ach: T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateCreateParams::BankTransfer::Ach)).returns(T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateCreateParams::BankTransfer::Ach))
           }
          def ach=(_ach); end
          # An active US Financial Address belonging to the Financial Account.
          sig { returns(String) }
          def financial_address; end
          sig { params(_financial_address: String).returns(String) }
          def financial_address=(_financial_address); end
          # The bank transfer network. Only ACH mandates can be created.
          sig { returns(String) }
          def network; end
          sig { params(_network: String).returns(String) }
          def network=(_network); end
          sig {
            params(account_holder_name: String, ach: T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateCreateParams::BankTransfer::Ach), financial_address: String, network: String).void
           }
          def initialize(
            account_holder_name: nil,
            ach: nil,
            financial_address: nil,
            network: nil
          ); end
        end
        # Bank transfer authorization details. Required when `type` is `bank_transfer`.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateCreateParams::BankTransfer))
         }
        def bank_transfer; end
        sig {
          params(_bank_transfer: T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateCreateParams::BankTransfer)).returns(T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateCreateParams::BankTransfer))
         }
        def bank_transfer=(_bank_transfer); end
        # The Financial Account to authorize debits against.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # The mandate type.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(bank_transfer: T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateCreateParams::BankTransfer), financial_account: String, type: String).void
         }
        def initialize(bank_transfer: nil, financial_account: nil, type: nil); end
      end
    end
  end
end