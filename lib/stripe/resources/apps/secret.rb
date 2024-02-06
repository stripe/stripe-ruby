# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Apps
    # Secret Store is an API that allows Stripe Apps developers to securely persist secrets for use by UI Extensions and app backends.
    #
    # The primary resource in Secret Store is a `secret`. Other apps can't view secrets created by an app. Additionally, secrets are scoped to provide further permission control.
    #
    # All Dashboard users and the app backend share `account` scoped secrets. Use the `account` scope for secrets that don't change per-user, like a third-party API key.
    #
    # A `user` scoped secret is accessible by the app backend and one specific Dashboard user. Use the `user` scope for per-user secrets like per-user OAuth tokens, where different users might have different permissions.
    #
    # Related guide: [Store data between page reloads](https://stripe.com/docs/stripe-apps/store-auth-data-custom-objects)
    class Secret < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "apps.secret"

      # Deletes a secret from the secret store by name and scope.
      def self.delete_where(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/apps/secrets/delete",
          params: params,
          opts: opts
        )
      end

      # Finds a secret in the secret store by name and scope.
      def self.find(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/apps/secrets/find",
          params: params,
          opts: opts
        )
      end

      # Create or replace a secret in the secret store.
      def self.create(params = {}, opts = {})
        request_stripe_object(method: :post, path: "/v1/apps/secrets", params: params, opts: opts)
      end

      # List all secrets stored on the given scope.
      def self.list(filters = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/apps/secrets", params: filters, opts: opts)
      end
    end
  end
end
