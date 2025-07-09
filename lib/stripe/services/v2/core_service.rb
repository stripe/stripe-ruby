# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class CoreService < StripeService
      attr_reader :account_links
      attr_reader :accounts
      attr_reader :event_destinations
      attr_reader :events
      attr_reader :vault
      def initialize(requestor)
        super(requestor)
        @account_links = Stripe::V2::Core::AccountLinkService.new(@requestor)
        @accounts = Stripe::V2::Core::AccountService.new(@requestor)
        @event_destinations = Stripe::V2::Core::EventDestinationService.new(@requestor)
        @events = Stripe::V2::Core::EventService.new(@requestor)
        @vault = Stripe::V2::Core::VaultService.new(@requestor)
      end
    end
  end
end