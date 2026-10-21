# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class OperationService < StripeService
        # Resolve a natural-language query into ranked public analytical resources
        # (schemas, reports, and metrics) with execution context.
        def search(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/data/operations/search",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
