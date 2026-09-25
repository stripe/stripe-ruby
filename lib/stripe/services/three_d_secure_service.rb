# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ThreeDSecureService < StripeService
    attr_reader :authentications

    def initialize(requestor)
      super
      @authentications = Stripe::ThreeDSecure::AuthenticationService.new(@requestor)
    end
  end
end
