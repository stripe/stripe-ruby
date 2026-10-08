# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class FundingSessionService < StripeService
        # Create a FundingSession: a hosted funding surface for a customer to fund a FinancialAccount.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/money_management/funding_sessions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
