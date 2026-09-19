# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerTaxExemptionService < StripeService
    # Create a location specific tax exemption for a customer.
    def create(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<id>s/tax_exemptions", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Delete a location specific tax exemption for a customer.
    def delete(customer_id, id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/customers/%<customer_id>s/tax_exemptions/%<id>s", { customer_id: CGI.escape(customer_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # List all location specific tax exemptions for a customer.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<id>s/tax_exemptions", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve a location specific tax exemption for a customer.
    def retrieve(customer_id, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer_id>s/tax_exemptions/%<id>s", { customer_id: CGI.escape(customer_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
