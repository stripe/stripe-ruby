# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class IdentityService < StripeService
    attr_reader :blocklist_entries, :verification_reports, :verification_sessions

    def initialize(requestor)
      super
      @blocklist_entries = Stripe::Identity::BlocklistEntryService.new(@requestor)
      @verification_reports = Stripe::Identity::VerificationReportService.new(@requestor)
      @verification_sessions = Stripe::Identity::VerificationSessionService.new(@requestor)
    end
  end
end
