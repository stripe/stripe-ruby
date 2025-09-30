# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      module Vault
        class UsBankAccountCreateParams < Stripe::RequestParams
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
      end
    end
  end
end