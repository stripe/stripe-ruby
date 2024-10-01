# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AppsService < StripeService
    attr_reader :secrets

    def initialize(requestor)
      super(requestor)
      @secrets = Stripe::Apps::SecretService.new(@requestor)
    end
  end
end
