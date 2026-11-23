# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      module TestHelpers
        class FinancialAddressDebitParams < ::Stripe::RequestParams
          class NetworkDetails < ::Stripe::RequestParams
            class Ach < ::Stripe::RequestParams
              # The ACH company ID of the originator of the simulated debit. Must contain exactly 10 alphanumeric characters. Sent to the network in uppercase.
              sig { returns(String) }
              def originator_company_id; end
              sig { params(_originator_company_id: String).returns(String) }
              def originator_company_id=(_originator_company_id); end
              sig { params(originator_company_id: String).void }
              def initialize(originator_company_id: nil); end
            end
            # ACH-specific details for the simulated debit.
            sig {
              returns(T.nilable(::Stripe::V2::MoneyManagement::TestHelpers::FinancialAddressDebitParams::NetworkDetails::Ach))
             }
            def ach; end
            sig {
              params(_ach: T.nilable(::Stripe::V2::MoneyManagement::TestHelpers::FinancialAddressDebitParams::NetworkDetails::Ach)).returns(T.nilable(::Stripe::V2::MoneyManagement::TestHelpers::FinancialAddressDebitParams::NetworkDetails::Ach))
             }
            def ach=(_ach); end
            sig {
              params(ach: T.nilable(::Stripe::V2::MoneyManagement::TestHelpers::FinancialAddressDebitParams::NetworkDetails::Ach)).void
             }
            def initialize(ach: nil); end
          end
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
          # Network-specific details for the simulated debit. Only used for ACH debits; supplied details must be valid.
          sig {
            returns(T.nilable(::Stripe::V2::MoneyManagement::TestHelpers::FinancialAddressDebitParams::NetworkDetails))
           }
          def network_details; end
          sig {
            params(_network_details: T.nilable(::Stripe::V2::MoneyManagement::TestHelpers::FinancialAddressDebitParams::NetworkDetails)).returns(T.nilable(::Stripe::V2::MoneyManagement::TestHelpers::FinancialAddressDebitParams::NetworkDetails))
           }
          def network_details=(_network_details); end
          # String explaining funds flow. Use this field to populate the statement descriptor of the ReceivedDebit created as an eventual result of this simulation.
          sig { returns(T.nilable(String)) }
          def statement_descriptor; end
          sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
          def statement_descriptor=(_statement_descriptor); end
          sig {
            params(amount: ::Stripe::V2::Amount, network: String, network_details: T.nilable(::Stripe::V2::MoneyManagement::TestHelpers::FinancialAddressDebitParams::NetworkDetails), statement_descriptor: T.nilable(String)).void
           }
          def initialize(
            amount: nil,
            network: nil,
            network_details: nil,
            statement_descriptor: nil
          ); end
        end
      end
    end
  end
end