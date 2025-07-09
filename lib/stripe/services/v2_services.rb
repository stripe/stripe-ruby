# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class V2Services < StripeService
    attr_reader :billing
    attr_reader :core
    attr_reader :money_management
    attr_reader :payments
    attr_reader :test_helpers
    def initialize(requestor)
      super(requestor)
      @billing = Stripe::V2::BillingService.new(@requestor)
      @core = Stripe::V2::CoreService.new(@requestor)
      @money_management = Stripe::V2::MoneyManagementService.new(@requestor)
      @payments = Stripe::V2::PaymentService.new(@requestor)
      @test_helpers = Stripe::V2::TestHelperService.new(@requestor)
    end
  end
end