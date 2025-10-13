# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module TestHelpers
      class FinancialAddressService < StripeService
        # Simulate crediting a FinancialAddress in a Sandbox environment. This can be used to add virtual funds and increase your balance for testing.
        #
        # ** raises FeatureNotEnabledError
        sig {
          params(id: String, params: T.any(::Stripe::V2::TestHelpers::FinancialAddressCreditParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::FinancialAddressCreditSimulation)
         }
        def credit(id, params = {}, opts = {}); end

        # Generates microdeposits for a FinancialAddress in a Sandbox environment.
        #
        # ** raises FeatureNotEnabledError
        sig {
          params(id: String, params: T.any(::Stripe::V2::TestHelpers::FinancialAddressGenerateMicrodepositsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::FinancialAddressGeneratedMicrodeposits)
         }
        def generate_microdeposits(id, params = {}, opts = {}); end
      end
    end
  end
end