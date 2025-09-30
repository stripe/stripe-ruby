# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    module Analytics
      class MeterUsageService < StripeService
        # Returns aggregated meter usage data for a customer within a specified time interval. The data can be grouped by various dimensions and can include multiple meters if specified.
        def retrieve(params = {}, opts = {})
          request(
            method: :get,
            path: "/v1/billing/analytics/meter_usage",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
