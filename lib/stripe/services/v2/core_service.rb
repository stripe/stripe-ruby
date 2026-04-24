# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class CoreService < StripeService
      attr_reader :accounts, :account_evaluations, :account_links, :account_tokens, :approval_requests, :batch_jobs, :claimable_sandboxes, :connection_sessions, :events, :event_destinations, :vault

      def initialize(requestor)
        super
        @accounts = Stripe::V2::Core::AccountService.new(@requestor)
        @account_evaluations = Stripe::V2::Core::AccountEvaluationService.new(@requestor)
        @account_links = Stripe::V2::Core::AccountLinkService.new(@requestor)
        @account_tokens = Stripe::V2::Core::AccountTokenService.new(@requestor)
        @approval_requests = Stripe::V2::Core::ApprovalRequestService.new(@requestor)
        @batch_jobs = Stripe::V2::Core::BatchJobService.new(@requestor)
        @claimable_sandboxes = Stripe::V2::Core::ClaimableSandboxService.new(@requestor)
        @connection_sessions = Stripe::V2::Core::ConnectionSessionService.new(@requestor)
        @events = Stripe::V2::Core::EventService.new(@requestor)
        @event_destinations = Stripe::V2::Core::EventDestinationService.new(@requestor)
        @vault = Stripe::V2::Core::VaultService.new(@requestor)
      end
    end
  end
end
