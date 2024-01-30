# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Each customer has a [Balance](https://stripe.com/docs/api/customers/object#customer_object-balance) value,
  # which denotes a debit or credit that's automatically applied to their next invoice upon finalization.
  # You may modify the value directly by using the [update customer API](https://stripe.com/docs/api/customers/update),
  # or by creating a Customer Balance Transaction, which increments or decrements the customer's `balance` by the specified `amount`.
  #
  # Related guide: [Customer balance](https://stripe.com/docs/billing/customer/balance)
  class CustomerBalanceTransaction < APIResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "customer_balance_transaction"

    def resource_url
      if !respond_to?(:customer) || customer.nil?
        raise NotImplementedError,
              "Customer Balance Transactions cannot be accessed without a customer ID."
      end
      "#{Customer.resource_url}/#{CGI.escape(customer)}/balance_transactions/#{CGI.escape(id)}"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError,
            "Customer Balance Transactions cannot be retrieved without a customer ID. " \
            "Retrieve a Customer Balance Transaction using `Customer.retrieve_balance_transaction('cus_123', 'cbtxn_123')`"
    end

    def self.update(_id, _params = nil, _opts = nil)
      raise NotImplementedError,
            "Customer Balance Transactions cannot be retrieved without a customer ID. " \
            "Update a Customer Balance Transaction using `Customer.update_balance_transaction('cus_123', 'cbtxn_123', params)`"
    end
  end
end
