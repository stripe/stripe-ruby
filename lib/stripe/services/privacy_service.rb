# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PrivacyService < StripeService
    attr_reader :redaction_jobs
    def initialize(requestor)
      super(requestor)
      @redaction_jobs = Stripe::Privacy::RedactionJobService.new(@requestor)
    end
  end
end