# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class ReportingService < StripeService
      attr_reader :reports, :report_runs

      def initialize(requestor)
        super
        @reports = Stripe::V2::Reporting::ReportService.new(@requestor)
        @report_runs = Stripe::V2::Reporting::ReportRunService.new(@requestor)
      end
    end
  end
end
