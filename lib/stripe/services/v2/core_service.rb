# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class CoreService < StripeService
      attr_reader :account_links, :accounts, :event_destinations, :events, :vault

      def initialize(requestor)
        super
        @account_links = Stripe::V2::Core::AccountLinkService.new(@requestor)
        @accounts = Stripe::V2::Core::AccountService.new(@requestor)
        @event_destinations = Stripe::V2::Core::EventDestinationService.new(@requestor)
        @events = Stripe::V2::Core::EventService.new(@requestor)
        @vault = Stripe::V2::Core::VaultService.new(@requestor)
      end
    end
  end
end
