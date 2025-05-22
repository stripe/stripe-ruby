# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class V2Services < StripeService
    attr_reader :core, :money_management, :billing, :test_helpers, :payments

    def initialize(requestor)
      super
      @core = Stripe::V2::CoreService.new(@requestor)
      @money_management = Stripe::V2::MoneyManagementService.new(@requestor)
      @billing = Stripe::V2::BillingService.new(@requestor)
      @test_helpers = Stripe::V2::TestHelperService.new(@requestor)
      @payments = Stripe::V2::PaymentService.new(@requestor)
    end
  end
end
