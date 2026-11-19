# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Treasury
      class ReceivedDebitService < StripeService
        # Simulates a test ReceivedDebit initiated by a third party. In live mode, you can't directly create ReceivedDebit objects initiated by third parties.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v1/test_helpers/treasury/received_debits",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
