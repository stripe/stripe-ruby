# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module TestHelpers
      class FinancialAddressService < StripeService
        class CreditParams < Stripe::RequestParams
          # Object containing the amount value and currency to credit.
          sig { returns(Stripe::V2::Amount) }
          attr_accessor :amount
          # Open Enum. The network to use in simulating the funds flow. This will be the reflected in the resulting ReceivedCredit.
          sig { returns(String) }
          attr_accessor :network
          # String explaining funds flow. Use this field to populate the statement descriptor of the ReceivedCredit created as an eventual result of this simulation.
          sig { returns(T.nilable(String)) }
          attr_accessor :statement_descriptor
          sig {
            params(amount: Stripe::V2::Amount, network: String, statement_descriptor: T.nilable(String)).void
           }
          def initialize(amount: nil, network: nil, statement_descriptor: nil); end
        end
        class GenerateMicrodepositsParams < Stripe::RequestParams; end
        # Simulate crediting a FinancialAddress in a Sandbox environment. This can be used to add virtual funds and increase your balance for testing.
        #
        # ** raises FeatureNotEnabledError
        sig {
          params(id: String, params: T.any(::Stripe::V2::TestHelpers::FinancialAddressService::CreditParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::FinancialAddressCreditSimulation)
         }
        def credit(id, params = {}, opts = {}); end

        # Generates microdeposits for a FinancialAddress in a Sandbox environment.
        #
        # ** raises FeatureNotEnabledError
        sig {
          params(id: String, params: T.any(::Stripe::V2::TestHelpers::FinancialAddressService::GenerateMicrodepositsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::FinancialAddressGeneratedMicrodeposits)
         }
        def generate_microdeposits(id, params = {}, opts = {}); end
      end
    end
  end
end