# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # You can add one or multiple tax IDs to a [customer](https://stripe.com/docs/api/customers) or account.
  # Customer and account tax IDs get displayed on related invoices and credit notes.
  #
  # Related guides: [Customer tax identification numbers](https://stripe.com/docs/billing/taxes/tax-ids), [Account tax IDs](https://stripe.com/docs/invoicing/connect#account-tax-ids)
  class TaxId < APIResource
    include Stripe::APIOperations::Delete

    OBJECT_NAME = "tax_id"
    def self.object_name
      "tax_id"
    end

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

    def self.delete(id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: "#{resource_url}/#{id}",
        params: params,
        opts: opts
      )
    end

    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: resource_url.to_s,
        params: params,
        opts: opts
      )
    end
  end
end
