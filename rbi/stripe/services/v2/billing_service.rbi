# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    class BillingService < StripeService
      attr_reader :bill_settings
      attr_reader :cadences
      attr_reader :collection_settings
      attr_reader :custom_pricing_units
      attr_reader :intents
      attr_reader :license_fees
      attr_reader :license_fee_subscriptions
      attr_reader :licensed_items
      attr_reader :meter_events
      attr_reader :meter_event_adjustments
      attr_reader :meter_event_session
      attr_reader :meter_event_stream
      attr_reader :metered_items
      attr_reader :one_time_items
      attr_reader :pricing_plans
      attr_reader :pricing_plan_subscriptions
      attr_reader :profiles
      attr_reader :rate_cards
      attr_reader :rate_card_subscriptions
      attr_reader :service_actions
    end
  end
end