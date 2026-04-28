# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class V2Services < StripeService
    attr_reader :billing, :commerce, :core, :data, :extend, :iam, :money_management, :network, :orchestrated_commerce, :test_helpers

    def initialize(requestor)
      super
      @billing = Stripe::V2::BillingService.new(@requestor)
      @commerce = Stripe::V2::CommerceService.new(@requestor)
      @core = Stripe::V2::CoreService.new(@requestor)
      @data = Stripe::V2::DataService.new(@requestor)
      @extend = Stripe::V2::ExtendService.new(@requestor)
      @iam = Stripe::V2::IamService.new(@requestor)
      @money_management = Stripe::V2::MoneyManagementService.new(@requestor)
      @network = Stripe::V2::NetworkService.new(@requestor)
      @orchestrated_commerce = Stripe::V2::OrchestratedCommerceService.new(@requestor)
      @test_helpers = Stripe::V2::TestHelperService.new(@requestor)
    end
  end
end
