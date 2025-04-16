# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class TaxService < StripeService
    attr_reader :calculations, :registrations, :settings, :transactions

    def initialize(requestor)
      super
      @calculations = Stripe::Tax::CalculationService.new(@requestor)
      @registrations = Stripe::Tax::RegistrationService.new(@requestor)
      @settings = Stripe::Tax::SettingsService.new(@requestor)
      @transactions = Stripe::Tax::TransactionService.new(@requestor)
    end
  end
end
