# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class SpendingMandateUpdateParams < ::Stripe::RequestParams
        class BankTransfer < ::Stripe::RequestParams
          class Ach < ::Stripe::RequestParams
            # ACH Company ID identifying the authorized originator. Must contain exactly 10 alphanumeric characters.
            sig { returns(T.nilable(String)) }
            def originator_company_id; end
            sig { params(_originator_company_id: T.nilable(String)).returns(T.nilable(String)) }
            def originator_company_id=(_originator_company_id); end
            # Per-debit limit for originator.
            sig { returns(T.nilable(::Stripe::V2::Amount)) }
            def transaction_limit; end
            sig {
              params(_transaction_limit: T.nilable(::Stripe::V2::Amount)).returns(T.nilable(::Stripe::V2::Amount))
             }
            def transaction_limit=(_transaction_limit); end
            sig {
              params(originator_company_id: T.nilable(String), transaction_limit: T.nilable(::Stripe::V2::Amount)).void
             }
            def initialize(originator_company_id: nil, transaction_limit: nil); end
          end
          # Display name for the authorized originator, up to 50 characters long.
          sig { returns(T.nilable(String)) }
          def account_holder_name; end
          sig { params(_account_holder_name: T.nilable(String)).returns(T.nilable(String)) }
          def account_holder_name=(_account_holder_name); end
          # ACH authorization fields to update.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateUpdateParams::BankTransfer::Ach))
           }
          def ach; end
          sig {
            params(_ach: T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateUpdateParams::BankTransfer::Ach)).returns(T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateUpdateParams::BankTransfer::Ach))
           }
          def ach=(_ach); end
          sig {
            params(account_holder_name: T.nilable(String), ach: T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateUpdateParams::BankTransfer::Ach)).void
           }
          def initialize(account_holder_name: nil, ach: nil); end
        end
        # Bank transfer fields to update. Omitted fields remain unchanged.
        sig {
          returns(T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateUpdateParams::BankTransfer))
         }
        def bank_transfer; end
        sig {
          params(_bank_transfer: T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateUpdateParams::BankTransfer)).returns(T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateUpdateParams::BankTransfer))
         }
        def bank_transfer=(_bank_transfer); end
        sig {
          params(bank_transfer: T.nilable(::Stripe::V2::MoneyManagement::SpendingMandateUpdateParams::BankTransfer)).void
         }
        def initialize(bank_transfer: nil); end
      end
    end
  end
end