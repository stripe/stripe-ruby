# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      class FundingSessionService < StripeService
        # Create a FundingSession: a hosted funding surface for a customer to fund a FinancialAccount.
        sig {
          params(params: T.any(::Stripe::V2::MoneyManagement::FundingSessionCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::V2::MoneyManagement::FundingSession)
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end