# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # You can add one or multiple tax IDs to a [customer](https://stripe.com/docs/api/customers).
  # A customer's tax IDs are displayed on invoices and credit notes issued for the customer.
  #
  # Related guide: [Customer Tax Identification Numbers](https://stripe.com/docs/billing/taxes/tax-ids).
  class TaxId < APIResource
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List

    OBJECT_NAME = "tax_id"

    def resource_url
      if !respond_to?(:customer) || customer.nil?
        raise NotImplementedError,
              "Tax IDs cannot be accessed without a customer ID."
      end
      "#{Customer.resource_url}/#{CGI.escape(customer)}/tax_ids" \
      "/#{CGI.escape(id)}"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError,
            "Tax IDs cannot be retrieved without a customer ID. Retrieve a " \
            "tax ID using `Customer.retrieve_tax_id('customer_id', " \
            "'tax_id_id')`"
    end
  end
end
