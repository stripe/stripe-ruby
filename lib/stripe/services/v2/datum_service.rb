# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class DatumService < StripeService
      attr_reader :reporting

      def initialize(requestor)
        super
        @reporting = Stripe::V2::Data::ReportingService.new(@requestor)
      end
    end
  end
end
