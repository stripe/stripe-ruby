# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class TaxService < StripeService
      attr_reader :manual_rules

      def initialize(requestor)
        super
        @manual_rules = Stripe::V2::Tax::ManualRuleService.new(@requestor)
      end
    end
  end
end
