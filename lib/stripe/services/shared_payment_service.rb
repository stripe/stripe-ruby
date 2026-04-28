# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class SharedPaymentService < StripeService
    attr_reader :granted_tokens, :issued_tokens

    def initialize(requestor)
      super
      @granted_tokens = Stripe::SharedPayment::GrantedTokenService.new(@requestor)
      @issued_tokens = Stripe::SharedPayment::IssuedTokenService.new(@requestor)
    end
  end
end
