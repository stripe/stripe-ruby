# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class OrchestrationService < StripeService
    attr_reader :payment_attempts

    def initialize(requestor)
      super
      @payment_attempts = Stripe::Orchestration::PaymentAttemptService.new(@requestor)
    end
  end
end
