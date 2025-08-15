# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class TaxService < StripeService
      attr_reader :automatic_rules

      def initialize(requestor)
        super
        @automatic_rules = Stripe::V2::Tax::AutomaticRuleService.new(@requestor)
      end
    end
  end
end
