# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Each customer has a [`balance`](https://stripe.com/docs/api/customers/object#customer_object-balance) that is
  # automatically applied to future invoices and payments using the `customer_balance` payment method.
  # Customers can fund this balance by initiating a bank transfer to any account in the
  # `financial_addresses` field.
  # Related guide: [Customer balance funding instructions](https://stripe.com/docs/payments/customer-balance/funding-instructions)
  class FundingInstructions < APIResource
    OBJECT_NAME = "funding_instructions"

    def resource_url
      if !respond_to?(:customer) || customer.nil?
        raise NotImplementedError,
              "FundingInstructions cannot be accessed without a customer ID."
      end
      "#{Customer.resource_url}/#{CGI.escape(customer)}/funding_instructions" "/#{CGI.escape(id)}"
    end
  end
end
