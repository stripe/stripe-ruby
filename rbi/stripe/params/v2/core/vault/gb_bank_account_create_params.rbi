# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class GbBankAccountCreateParams < ::Stripe::RequestParams
          # The Account Number of the bank account.
          sig { returns(T.nilable(String)) }
          def account_number; end
          sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
          def account_number=(_account_number); end
          # Closed Enum. The type of the bank account (checking or savings).
          sig { returns(T.nilable(String)) }
          def bank_account_type; end
          sig { params(_bank_account_type: T.nilable(String)).returns(T.nilable(String)) }
          def bank_account_type=(_bank_account_type); end
          # The currency of the bank account.
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # The IBAN of the bank account.
          sig { returns(T.nilable(String)) }
          def iban; end
          sig { params(_iban: T.nilable(String)).returns(T.nilable(String)) }
          def iban=(_iban); end
          # The Sort Code of the bank account.
          sig { returns(T.nilable(String)) }
          def sort_code; end
          sig { params(_sort_code: T.nilable(String)).returns(T.nilable(String)) }
          def sort_code=(_sort_code); end
          sig {
            params(account_number: T.nilable(String), bank_account_type: T.nilable(String), currency: String, iban: T.nilable(String), sort_code: T.nilable(String)).void
           }
          def initialize(
            account_number: nil,
            bank_account_type: nil,
            currency: nil,
            iban: nil,
            sort_code: nil
          ); end
        end
      end
    end
  end
end