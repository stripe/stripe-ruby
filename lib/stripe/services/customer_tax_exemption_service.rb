# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerTaxExemptionService < StripeService
    # Create a location specific tax exemption for a customer.
    def create(customer, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<customer>s/tax_exemptions", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Delete a location specific tax exemption for a customer.
    def delete(customer, id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/customers/%<customer>s/tax_exemptions/%<id>s", { customer: CGI.escape(customer), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # List all location specific tax exemptions for a customer.
    def list(customer, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer>s/tax_exemptions", { customer: CGI.escape(customer) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve a location specific tax exemption for a customer.
    def retrieve(customer, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer>s/tax_exemptions/%<id>s", { customer: CGI.escape(customer), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
