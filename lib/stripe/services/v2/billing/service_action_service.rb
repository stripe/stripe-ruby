# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class ServiceActionService < StripeService
        # Create a Service Action object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/service_actions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieve a Service Action object.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/billing/service_actions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update a ServiceAction object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/billing/service_actions/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
