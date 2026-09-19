# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerPaymentMethodService < StripeService
    # Returns a list of PaymentMethods for a given Customer
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<id>s/payment_methods", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves a PaymentMethod object for a given Customer.
    def retrieve(customer_id, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer_id>s/payment_methods/%<id>s", { customer_id: CGI.escape(customer_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
