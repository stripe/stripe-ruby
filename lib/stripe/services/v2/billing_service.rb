# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class BillingService < StripeService
      attr_reader :bill_settings, :cadences, :collection_settings, :custom_pricing_units, :intents, :license_fees, :license_fee_subscriptions, :licensed_items, :meter_events, :meter_event_adjustments, :meter_event_session, :meter_event_stream, :metered_items, :pricing_plans, :pricing_plan_subscriptions, :profiles, :rate_cards, :rate_card_subscriptions, :service_actions

      def initialize(requestor)
        super
        @bill_settings = Stripe::V2::Billing::BillSettingService.new(@requestor)
        @cadences = Stripe::V2::Billing::CadenceService.new(@requestor)
        @collection_settings = Stripe::V2::Billing::CollectionSettingService.new(@requestor)
        @custom_pricing_units = Stripe::V2::Billing::CustomPricingUnitService.new(@requestor)
        @intents = Stripe::V2::Billing::IntentService.new(@requestor)
        @license_fees = Stripe::V2::Billing::LicenseFeeService.new(@requestor)
        @license_fee_subscriptions = Stripe::V2::Billing::LicenseFeeSubscriptionService
                                     .new(@requestor)
        @licensed_items = Stripe::V2::Billing::LicensedItemService.new(@requestor)
        @meter_events = Stripe::V2::Billing::MeterEventService.new(@requestor)
        @meter_event_adjustments = Stripe::V2::Billing::MeterEventAdjustmentService.new(@requestor)
        @meter_event_session = Stripe::V2::Billing::MeterEventSessionService.new(@requestor)
        @meter_event_stream = Stripe::V2::Billing::MeterEventStreamService.new(@requestor)
        @metered_items = Stripe::V2::Billing::MeteredItemService.new(@requestor)
        @pricing_plans = Stripe::V2::Billing::PricingPlanService.new(@requestor)
        @pricing_plan_subscriptions = Stripe::V2::Billing::PricingPlanSubscriptionService
                                      .new(@requestor)
        @profiles = Stripe::V2::Billing::ProfileService.new(@requestor)
        @rate_cards = Stripe::V2::Billing::RateCardService.new(@requestor)
        @rate_card_subscriptions = Stripe::V2::Billing::RateCardSubscriptionService.new(@requestor)
        @service_actions = Stripe::V2::Billing::ServiceActionService.new(@requestor)
      end
    end
  end
end
