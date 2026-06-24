# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      module TestHelpers
        class FinancialAddressService < StripeService
          # Simulate debiting a FinancialAddress in a Sandbox environment. This can be used to remove virtual funds and decrease your balance for testing.
          sig {
            params(id: String, params: T.any(::Stripe::V2::MoneyManagement::TestHelpers::FinancialAddressDebitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FinancialAddressDebitSimulation)
           }
          def debit(id, params = {}, opts = {}); end
        end
      end
    end
  end
end