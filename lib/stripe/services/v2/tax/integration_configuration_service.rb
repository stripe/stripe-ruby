# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      class IntegrationConfigurationService < StripeService
        # Retrieve the tax integration configuration for this account.
        def retrieve(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/tax/integration_configurations",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update the tax integration configuration for this account.
        def update(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/tax/integration_configurations",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
