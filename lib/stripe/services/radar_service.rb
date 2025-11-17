# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class RadarService < StripeService
    attr_reader :account_evaluations, :early_fraud_warnings, :value_lists, :value_list_items

    def initialize(requestor)
      super
      @account_evaluations = Stripe::Radar::AccountEvaluationService.new(@requestor)
      @early_fraud_warnings = Stripe::Radar::EarlyFraudWarningService.new(@requestor)
      @value_lists = Stripe::Radar::ValueListService.new(@requestor)
      @value_list_items = Stripe::Radar::ValueListItemService.new(@requestor)
    end
  end
end
