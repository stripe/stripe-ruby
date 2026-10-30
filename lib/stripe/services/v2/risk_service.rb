# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class RiskService < StripeService
      attr_reader :forms

      def initialize(requestor)
        super
        @forms = Stripe::V2::Risk::FormService.new(@requestor)
      end
    end
  end
end
