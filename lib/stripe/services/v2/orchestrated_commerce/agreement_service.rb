# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module OrchestratedCommerce
      class AgreementService < StripeService
        # Confirm an Agreement.
        def confirm(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/orchestrated_commerce/agreements/%<id>s/confirm", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Create a new Agreement.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/orchestrated_commerce/agreements",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List Agreements for the profile associated with the authenticated merchant.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/orchestrated_commerce/agreements",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve an Agreement by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/orchestrated_commerce/agreements/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Terminate an Agreement.
        def terminate(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/orchestrated_commerce/agreements/%<id>s/terminate", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
