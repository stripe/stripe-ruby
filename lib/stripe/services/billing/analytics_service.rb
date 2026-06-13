# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class AnalyticsService < StripeService
      attr_reader :meter_usage

      def initialize(requestor)
        super
        @meter_usage = Stripe::Billing::Analytics::MeterUsageService.new(@requestor)
      end
    end
  end
end
