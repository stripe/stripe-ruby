# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ReserveService < StripeService
    attr_reader :holds, :plans, :releases

    def initialize(requestor)
      super
      @holds = Stripe::Reserve::HoldService.new(@requestor)
      @plans = Stripe::Reserve::PlanService.new(@requestor)
      @releases = Stripe::Reserve::ReleaseService.new(@requestor)
    end
  end
end
