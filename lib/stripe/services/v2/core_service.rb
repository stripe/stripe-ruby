# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class CoreService < StripeService
      attr_reader :event_destinations, :events

      def initialize(requestor)
        super
        @event_destinations = Stripe::V2::Core::EventDestinationService.new(@requestor)
        @events = Stripe::V2::Core::EventService.new(@requestor)
      end
    end
  end
end
