# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class RiskService < StripeService
      attr_reader :inquiries

      def initialize(requestor)
        super
        @inquiries = Stripe::V2::Risk::InquiryService.new(@requestor)
      end
    end
  end
end
