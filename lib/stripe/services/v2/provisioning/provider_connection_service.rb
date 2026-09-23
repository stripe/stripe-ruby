# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ProviderConnectionService < StripeService
        # Lists the provider connections for the account.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/provisioning/provider_connections",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Unlinks a provider connection so it can no longer be used to create resources.
        def unlink(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/provisioning/provider_connections/%<id>s/unlink", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
