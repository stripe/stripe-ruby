# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerTaxIdService < StripeService
    # Creates a new tax_id object for a customer.
    def create(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<id>s/tax_ids", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Deletes an existing tax_id object.
    def delete(customer_id, id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/customers/%<customer_id>s/tax_ids/%<id>s", { customer_id: CGI.escape(customer_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of tax IDs for a customer.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<id>s/tax_ids", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the tax_id object with the given identifier.
    def retrieve(customer_id, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer_id>s/tax_ids/%<id>s", { customer_id: CGI.escape(customer_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a CustomerTaxId create request into a batch job JSONL line.
    def serialize_batch_create_for_customer(id, params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:path_params] = { id: id }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end

    # Serializes a CustomerTaxId delete request into a batch job JSONL line.
    def serialize_batch_delete(customer_id, id, params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:path_params] = { customer_id: customer_id, id: id }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end
  end
end
