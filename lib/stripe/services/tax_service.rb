# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class TaxService < StripeService
    attr_reader :associations
    attr_reader :calculations
    attr_reader :forms
    attr_reader :registrations
    attr_reader :settings
    attr_reader :transactions
    def initialize(requestor)
      super(requestor)
      @associations = Stripe::Tax::AssociationService.new(@requestor)
      @calculations = Stripe::Tax::CalculationService.new(@requestor)
      @forms = Stripe::Tax::FormService.new(@requestor)
      @registrations = Stripe::Tax::RegistrationService.new(@requestor)
      @settings = Stripe::Tax::SettingsService.new(@requestor)
      @transactions = Stripe::Tax::TransactionService.new(@requestor)
    end
  end
end