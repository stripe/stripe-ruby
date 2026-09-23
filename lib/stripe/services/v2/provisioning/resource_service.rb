# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class ResourceService < StripeService
        # Creates a new provider resource.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/provisioning/resources",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Links an existing provider resource to a project or account.
        def link(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/provisioning/resources/link",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Removes a resource.
        def remove(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/provisioning/resources/%<id>s/remove", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a provider resource.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/provisioning/resources/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Rotates a resource's credentials.
        def rotate_credentials(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/provisioning/resources/%<id>s/rotate_credentials", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Submits additional information requested by the provider for a resource.
        def submit_information(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/provisioning/resources/%<id>s/submit_information", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Unlinks a resource without removing it from the provider.
        def unlink(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/provisioning/resources/%<id>s/unlink", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates a resource's configuration or service.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/provisioning/resources/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
