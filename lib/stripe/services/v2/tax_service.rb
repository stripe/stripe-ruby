# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class TaxService < StripeService
      attr_reader :manual_rules, :operations

      def initialize(requestor)
        super
        @manual_rules = Stripe::V2::Tax::ManualRuleService.new(@requestor)
        @operations = Stripe::V2::Tax::OperationService.new(@requestor)
      end
    end
  end
end
