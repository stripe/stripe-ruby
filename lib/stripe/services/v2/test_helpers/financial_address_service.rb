# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module TestHelpers
      class FinancialAddressService < StripeService
        # Simulate crediting a FinancialAddress in a Sandbox environment. This can be used to add virtual funds and increase your balance for testing.
        #
        # ** raises FeatureNotEnabledError
        def credit(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/test_helpers/financial_addresses/%<id>s/credit", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Generates microdeposits for a FinancialAddress in a Sandbox environment.
        #
        # ** raises FeatureNotEnabledError
        def generate_microdeposits(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/test_helpers/financial_addresses/%<id>s/generate_microdeposits", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
