# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class V2Services < StripeService
    attr_reader :billing, :core, :iam, :money_management, :payments, :reporting, :tax, :test_helpers

    def initialize(requestor)
      super
      @billing = Stripe::V2::BillingService.new(@requestor)
      @core = Stripe::V2::CoreService.new(@requestor)
      @iam = Stripe::V2::IamService.new(@requestor)
      @money_management = Stripe::V2::MoneyManagementService.new(@requestor)
      @payments = Stripe::V2::PaymentService.new(@requestor)
      @reporting = Stripe::V2::ReportingService.new(@requestor)
      @tax = Stripe::V2::TaxService.new(@requestor)
      @test_helpers = Stripe::V2::TestHelperService.new(@requestor)
    end
  end
end
