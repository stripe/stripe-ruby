# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class TaxRateService < StripeService
    # Creates a new tax rate.
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/tax_rates", params: params, opts: opts, base_address: :api)
    end

    # Returns a list of your tax rates. Tax rates are returned sorted by creation date, with the most recently created tax rates appearing first.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/tax_rates", params: params, opts: opts, base_address: :api)
    end

    # Retrieves a tax rate with the given ID
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/tax_rates/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a TaxRate create request into a batch job JSONL line.
    def serialize_batch_create(params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end

    # Serializes a TaxRate update request into a batch job JSONL line.
    def serialize_batch_update(id, params = {}, opts = {})
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

    # Updates an existing tax rate.
    def update(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/tax_rates/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
