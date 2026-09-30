# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class TestHelperService < StripeService
        attr_reader :financial_addresses
        # Creates an EarnedCredit in a Sandbox environment for testing purposes.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::TestHelperEarnedCreditsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::EarnedCreditSimulation)
         }
        def earned_credits(params = {}, opts = {}); end
      end
    end
  end
end