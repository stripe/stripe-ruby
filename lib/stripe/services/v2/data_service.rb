# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class DataService < StripeService
      attr_reader :analytics, :query_runs, :reports, :report_runs, :reporting, :schemas

      def initialize(requestor)
        super
        @analytics = Stripe::V2::Data::AnalyticsService.new(@requestor)
        @query_runs = Stripe::V2::Data::QueryRunService.new(@requestor)
        @reports = Stripe::V2::Data::ReportService.new(@requestor)
        @report_runs = Stripe::V2::Data::ReportRunService.new(@requestor)
        @reporting = Stripe::V2::Data::ReportingService.new(@requestor)
        @schemas = Stripe::V2::Data::SchemaService.new(@requestor)
      end
    end
  end
end
