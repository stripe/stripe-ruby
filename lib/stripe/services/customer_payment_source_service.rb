# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class CustomerPaymentSourceService < StripeService
    # When you create a new credit card, you must specify a customer or recipient on which to create it.
    #
    # If the card's owner has no default card, then the new card will become the default.
    # However, if the owner already has a default, then it will not change.
    # To change the default, you should [update the customer](https://docs.stripe.com/api/customers/update) to have a new default_source.
    def create(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<id>s/sources", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Delete a specified source for a given customer.
    def delete(customer_id, id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/customers/%<customer_id>s/sources/%<id>s", { customer_id: CGI.escape(customer_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # List sources for a specified customer.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<id>s/sources", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve a specified source for a given customer.
    def retrieve(customer_id, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/customers/%<customer_id>s/sources/%<id>s", { customer_id: CGI.escape(customer_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a CustomerPaymentSource create request into a batch job JSONL line.
    def serialize_batch_create(id, params = {}, opts = {})
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

    # Serializes a CustomerPaymentSource delete request into a batch job JSONL line.
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

    # Serializes a CustomerPaymentSource update request into a batch job JSONL line.
    def serialize_batch_update(customer_id, id, params = {}, opts = {})
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

    # Serializes a CustomerPaymentSource verify request into a batch job JSONL line.
    def serialize_batch_verify(customer_id, id, params = {}, opts = {})
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

    # Update a specified source for a given customer.
    def update(customer_id, id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<customer_id>s/sources/%<id>s", { customer_id: CGI.escape(customer_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Verify a specified bank account for a given customer.
    def verify(customer_id, id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/customers/%<customer_id>s/sources/%<id>s/verify", { customer_id: CGI.escape(customer_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
