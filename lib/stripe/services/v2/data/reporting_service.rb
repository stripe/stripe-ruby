# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      class ReportingService < StripeService
        attr_reader :query_runs

        def initialize(requestor)
          super
          @query_runs = Stripe::V2::Data::Reporting::QueryRunService.new(@requestor)
        end
      end
    end
  end
end
