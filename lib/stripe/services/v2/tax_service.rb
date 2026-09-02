# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class TaxService < StripeService
      attr_reader :integration_configurations, :manual_rules, :operations

      def initialize(requestor)
        super
        @integration_configurations = Stripe::V2::Tax::IntegrationConfigurationService
                                      .new(@requestor)
        @manual_rules = Stripe::V2::Tax::ManualRuleService.new(@requestor)
        @operations = Stripe::V2::Tax::OperationService.new(@requestor)
      end
    end
  end
end
