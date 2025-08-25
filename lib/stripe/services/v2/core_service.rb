# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class CoreService < StripeService
      attr_reader :accounts, :account_links, :events, :event_destinations, :vault

      def initialize(requestor)
        super
        @accounts = Stripe::V2::Core::AccountService.new(@requestor)
        @account_links = Stripe::V2::Core::AccountLinkService.new(@requestor)
        @events = Stripe::V2::Core::EventService.new(@requestor)
        @event_destinations = Stripe::V2::Core::EventDestinationService.new(@requestor)
        @vault = Stripe::V2::Core::VaultService.new(@requestor)
      end
    end
  end
end
