# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class BillingService < StripeService
    attr_reader :alerts, :meters, :meter_events, :meter_event_adjustments

    def initialize(requestor)
      super(requestor)
      @alerts = Stripe::Billing::AlertService.new(@requestor)
      @meters = Stripe::Billing::MeterService.new(@requestor)
      @meter_events = Stripe::Billing::MeterEventService.new(@requestor)
      @meter_event_adjustments = Stripe::Billing::MeterEventAdjustmentService.new(@requestor)
    end
  end
end
