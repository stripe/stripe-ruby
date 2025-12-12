# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      class ManualRuleService < StripeService
        # Creates a ManualRule object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/tax/manual_rules",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Deactivates a ManualRule object.
        def deactivate(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/tax/manual_rules/%<id>s/deactivate", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # List all ManualRule objects.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/tax/manual_rules",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves a ManualRule object by ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/tax/manual_rules/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates the Tax configuration for a ManualRule object.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/tax/manual_rules/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
