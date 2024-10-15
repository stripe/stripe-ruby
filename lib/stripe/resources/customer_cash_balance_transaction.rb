# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Customers with certain payments enabled have a cash balance, representing funds that were paid
  # by the customer to a merchant, but have not yet been allocated to a payment. Cash Balance Transactions
  # represent when funds are moved into or out of this balance. This includes funding by the customer, allocation
  # to payments, and refunds to the customer.
  class CustomerCashBalanceTransaction < APIResource
    OBJECT_NAME = "customer_cash_balance_transaction"
    def self.object_name
      "customer_cash_balance_transaction"
    end

    def test_helpers
      TestHelpers.new(self)
    end

    class TestHelpers < APIResourceTestHelpers
      RESOURCE_CLASS = CustomerCashBalanceTransaction
      def self.resource_class
        "CustomerCashBalanceTransaction"
      end

      # Simulate various customer cash balance side-effects by creating synthetic cash balance transactions in testmode.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/test_helpers/customer_cash_balance_transactions",
          params: params,
          opts: opts
        )
      end
    end
  end
end
