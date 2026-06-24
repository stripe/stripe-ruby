# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      module TestHelpers
        class FinancialAddressDebitParams < ::Stripe::RequestParams
          # Object containing the amount value and currency to debit.
          sig { returns(::Stripe::V2::Amount) }
          def amount; end
          sig { params(_amount: ::Stripe::V2::Amount).returns(::Stripe::V2::Amount) }
          def amount=(_amount); end
          # The network to use in simulating the funds flow. This will be reflected in the resulting ReceivedDebit.
          sig { returns(String) }
          def network; end
          sig { params(_network: String).returns(String) }
          def network=(_network); end
          # String explaining funds flow. Use this field to populate the statement descriptor of the ReceivedDebit created as an eventual result of this simulation.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_statement_descriptor); end
          sig {
            params(amount: ::Stripe::V2::Amount, network: String, statement_descriptor: T.nilable(String)).void
           }
          def initialize(amount: nil, network: nil, statement_descriptor: nil); end
        end
      end
    end
  end
end