# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class AppsService < StripeService
    attr_reader :installs, :secrets

    def initialize(requestor)
      super
      @installs = Stripe::Apps::InstallService.new(@requestor)
      @secrets = Stripe::Apps::SecretService.new(@requestor)
    end
  end
end
