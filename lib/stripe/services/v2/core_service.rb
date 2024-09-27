# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class CoreService < StripeService
      attr_reader :events

      def initialize(requestor)
        super(requestor)
        @events = Stripe::V2::Core::EventService.new(@requestor)
      end
    end
  end
end
