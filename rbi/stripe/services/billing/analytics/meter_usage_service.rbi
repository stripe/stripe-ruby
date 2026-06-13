# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    module Analytics
      class MeterUsageService < StripeService
        # Returns aggregated meter usage data for a customer within a specified time interval. The data can be grouped by various dimensions and can include multiple meters if specified.
        sig {
          params(params: T.any(::Stripe::Billing::Analytics::MeterUsageRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Billing::Analytics::MeterUsage)
         }
        def retrieve(params = {}, opts = {}); end
      end
    end
  end
end