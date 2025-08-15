# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class ReportingService < StripeService
      attr_reader :report_runs, :reports

      def initialize(requestor)
        super
        @report_runs = Stripe::V2::Reporting::ReportRunService.new(@requestor)
        @reports = Stripe::V2::Reporting::ReportService.new(@requestor)
      end
    end
  end
end
