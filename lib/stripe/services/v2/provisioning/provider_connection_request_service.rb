# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ProviderConnectionRequestService < StripeService
        # Creates a new provider connection.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/provisioning/provider_connection_requests",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a provider connection.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/provisioning/provider_connection_requests/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Submits additional information requested by the provider for a provider connection.
        def submit_information(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/provisioning/provider_connection_requests/%<id>s/submit_information", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
