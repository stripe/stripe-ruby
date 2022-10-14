# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # ReceivedDebits represent funds pulled from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts). These are not initiated from the FinancialAccount.
    class ReceivedDebit < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.received_debit"

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = ReceivedDebit

        def self.create(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: "/v1/test_helpers/treasury/received_debits",
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
