# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module TestHelpers
      class MoneyManagementService < StripeService
        # Creates a RecipientVerification with a specified match result for testing purposes in a Sandbox environment.
        def recipient_verifications(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/test_helpers/money_management/recipient_verifications",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
