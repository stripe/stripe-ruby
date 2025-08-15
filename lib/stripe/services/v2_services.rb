# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class V2Services < StripeService
    attr_reader :account_links, :accounts, :billing, :core, :money_management, :payments, :reporting, :tax, :test_helpers

    def initialize(requestor)
      super
      @account_links = Stripe::V2::AccountLinkService.new(@requestor)
      @accounts = Stripe::V2::AccountService.new(@requestor)
      @billing = Stripe::V2::BillingService.new(@requestor)
      @core = Stripe::V2::CoreService.new(@requestor)
      @money_management = Stripe::V2::MoneyManagementService.new(@requestor)
      @payments = Stripe::V2::PaymentService.new(@requestor)
      @reporting = Stripe::V2::ReportingService.new(@requestor)
      @tax = Stripe::V2::TaxService.new(@requestor)
      @test_helpers = Stripe::V2::TestHelperService.new(@requestor)
    end
  end
end
