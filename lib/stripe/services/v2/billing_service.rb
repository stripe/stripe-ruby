# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class BillingService < StripeService
      attr_reader :meter_event_session, :meter_event_adjustments, :meter_event_stream, :meter_events

      def initialize(requestor)
        super
        @meter_event_session = Stripe::V2::Billing::MeterEventSessionService.new(@requestor)
        @meter_event_adjustments = Stripe::V2::Billing::MeterEventAdjustmentService.new(@requestor)
        @meter_event_stream = Stripe::V2::Billing::MeterEventStreamService.new(@requestor)
        @meter_events = Stripe::V2::Billing::MeterEventService.new(@requestor)
      end
    end
  end
end
