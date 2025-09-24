# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class BillingService < StripeService
      attr_reader :bill_settings, :cadences, :collection_settings, :meter_events, :meter_event_adjustments, :meter_event_session, :meter_event_stream, :profiles

      def initialize(requestor)
        super
        @bill_settings = Stripe::V2::Billing::BillSettingService.new(@requestor)
        @cadences = Stripe::V2::Billing::CadenceService.new(@requestor)
        @collection_settings = Stripe::V2::Billing::CollectionSettingService.new(@requestor)
        @meter_events = Stripe::V2::Billing::MeterEventService.new(@requestor)
        @meter_event_adjustments = Stripe::V2::Billing::MeterEventAdjustmentService.new(@requestor)
        @meter_event_session = Stripe::V2::Billing::MeterEventSessionService.new(@requestor)
        @meter_event_stream = Stripe::V2::Billing::MeterEventStreamService.new(@requestor)
        @profiles = Stripe::V2::Billing::ProfileService.new(@requestor)
      end
    end
  end
end
