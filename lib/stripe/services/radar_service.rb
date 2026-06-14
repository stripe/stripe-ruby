# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class RadarService < StripeService
    attr_reader :account_evaluations, :customer_evaluations, :early_fraud_warnings, :issuing_authorization_evaluations, :payment_evaluations, :value_lists, :value_list_items

    def initialize(requestor)
      super
      @account_evaluations = Stripe::Radar::AccountEvaluationService.new(@requestor)
      @customer_evaluations = Stripe::Radar::CustomerEvaluationService.new(@requestor)
      @early_fraud_warnings = Stripe::Radar::EarlyFraudWarningService.new(@requestor)
      @issuing_authorization_evaluations = Stripe::Radar::IssuingAuthorizationEvaluationService
                                           .new(@requestor)
      @payment_evaluations = Stripe::Radar::PaymentEvaluationService.new(@requestor)
      @value_lists = Stripe::Radar::ValueListService.new(@requestor)
      @value_list_items = Stripe::Radar::ValueListItemService.new(@requestor)
    end
  end
end
