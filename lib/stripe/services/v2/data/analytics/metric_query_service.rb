# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      module Analytics
        class MetricQueryService < StripeService
          # Run a synchronous metric query against one or more metrics within the same metric namespace.
          def create(params = {}, opts = {})
            request(
              method: :post,
              path: "/v2/data/analytics/metric_query",
              params: params,
              opts: opts,
              base_address: :api
            )
          end
        end
      end
    end
  end
end
