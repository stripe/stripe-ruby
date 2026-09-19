# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ProductFeatureService < StripeService
    # Creates a product_feature, which represents a feature attachment to a product
    def create(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/products/%<id>s/features", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Deletes the feature attachment to a product
    def delete(product_id, id, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/products/%<product_id>s/features/%<id>s", { product_id: CGI.escape(product_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieve a list of features for a product
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/products/%<id>s/features", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves a product_feature, which represents a feature attachment to a product
    def retrieve(product_id, id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/products/%<product_id>s/features/%<id>s", { product_id: CGI.escape(product_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes a ProductFeature create request into a batch job JSONL line.
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

    # Serializes a ProductFeature delete request into a batch job JSONL line.
    def serialize_batch_delete(product_id, id, params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:path_params] = { product_id: product_id, id: id }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end
  end
end
