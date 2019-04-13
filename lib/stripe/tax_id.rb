# frozen_string_literal: true

module Stripe
  class TaxId < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Delete

    OBJECT_NAME = "tax_id".freeze

    def resource_url
      if !respond_to?(:customer) || customer.nil?
        raise NotImplementedError,
              "Tax Ids cannot be accessed without a customer ID."
      end
      "#{Customer.resource_url}/#{CGI.escape(customer)}/tax_ids/#{CGI.escape(id)}"
    end

    def self.retrieve(_id, _opts = {})
      raise NotImplementedError, "Tax Ids cannot be retrieved without a customer ID. Retrieve a tax id using Customer.retrieve_tax_id('tax_id')"
    end
  end
end
