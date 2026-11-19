# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Treasury
      class ReceivedCreditService < StripeService
        # Simulates a test ReceivedCredit initiated by a third party. In live mode, you can't directly create ReceivedCredit objects initiated by third parties.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v1/test_helpers/treasury/received_credits",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
