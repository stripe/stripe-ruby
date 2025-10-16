# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class DelegatedCheckoutService < StripeService
    attr_reader :requested_sessions

    def initialize(requestor)
      super
      @requested_sessions = Stripe::DelegatedCheckout::RequestedSessionService.new(@requestor)
    end
  end
end
