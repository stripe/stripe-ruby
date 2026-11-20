# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class RiskService < StripeService
      attr_reader :evaluation_outcomes, :forms

      def initialize(requestor)
        super
        @evaluation_outcomes = Stripe::V2::Risk::EvaluationOutcomeService.new(@requestor)
        @forms = Stripe::V2::Risk::FormService.new(@requestor)
      end
    end
  end
end
