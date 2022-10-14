# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A customer's `Cash balance` represents real funds. Customers can add funds to their cash balance by sending a bank transfer. These funds can be used for payment and can eventually be paid out to your bank account.
  class CashBalance < APIResource
    OBJECT_NAME = "cash_balance"

    def resource_url
      if !respond_to?(:customer) || customer.nil?
        raise NotImplementedError,
              "Customer Cash Balance cannot be accessed without a customer ID."
      end
      "#{Customer.resource_url}/#{CGI.escape(customer)}/cash_balance"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError,
            "Customer Cash Balance cannot be retrieved without a customer ID. " \
            "Retrieve a Customer Cash Balance using `Customer.retrieve_cash_balance('cus_123')`"
    end
  end
end
