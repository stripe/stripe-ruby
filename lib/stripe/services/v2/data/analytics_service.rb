# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class AnalyticsService < StripeService
        attr_reader :metric_query

        def initialize(requestor)
          super
          @metric_query = Stripe::V2::Data::Analytics::MetricQueryService.new(@requestor)
        end
      end
    end
  end
end
