# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A customer's `Cash balance` represents real funds. Customers can add funds to their cash balance by sending a bank transfer. These funds can be used for payment and can eventually be paid out to your bank account.
  class CashBalance < APIResource
    OBJECT_NAME = "cash_balance"
    def self.object_name
      "cash_balance"
    end

    class Settings < Stripe::StripeObject
      attr_reader :reconciliation_mode, :using_merchant_default
    end
    # A hash of all cash balances available to this customer. You cannot delete a customer with any cash balances, even if the balance is 0. Amounts are represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    attr_reader :available
    # The ID of the customer whose cash balance this object represents.
    attr_reader :customer
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field settings
    attr_reader :settings

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
