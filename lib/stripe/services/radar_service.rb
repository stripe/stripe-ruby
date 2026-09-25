# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class RadarService < StripeService
    attr_reader :billing_evaluations, :early_fraud_warnings, :payment_evaluations, :value_lists, :value_list_items

    def initialize(requestor)
      super
      @billing_evaluations = Stripe::Radar::BillingEvaluationService.new(@requestor)
      @early_fraud_warnings = Stripe::Radar::EarlyFraudWarningService.new(@requestor)
      @payment_evaluations = Stripe::Radar::PaymentEvaluationService.new(@requestor)
      @value_lists = Stripe::Radar::ValueListService.new(@requestor)
      @value_list_items = Stripe::Radar::ValueListItemService.new(@requestor)
    end
  end
end
