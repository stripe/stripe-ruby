# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Tax
      class OperationService < StripeService
        # Resolves an address to its tax precision level.
        def resolve_address(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/tax/operations/resolve_address",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
