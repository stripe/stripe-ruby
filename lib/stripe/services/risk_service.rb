# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class RiskService < StripeService
    attr_reader :forms

    def initialize(requestor)
      super
      @forms = Stripe::Risk::FormService.new(@requestor)
    end
  end
end
