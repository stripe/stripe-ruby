# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Iam
      class ApiKeyService < StripeService
        # Create an API key. To create a secret key in livemode, a public key for encryption must be provided.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/iam/api_keys",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Expire an API key. The specified key becomes invalid immediately.
        def expire(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/iam/api_keys/%<id>s/expire", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all API keys of an account.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/iam/api_keys",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve an API key. For livemode secret keys, secret tokens are only returned on creation, and never returned here.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/iam/api_keys/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Rotate an API key. A new key with the same properties is created and returned. The existing key is expired immediately, unless an expiry time is specified.
        def rotate(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/iam/api_keys/%<id>s/rotate", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update an API key. Only parameters that are specified in the request will be updated.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/iam/api_keys/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
