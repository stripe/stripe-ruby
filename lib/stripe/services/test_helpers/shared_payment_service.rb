# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    class SharedPaymentService < StripeService
      attr_reader :granted_tokens

      def initialize(requestor)
        super
        @granted_tokens = Stripe::TestHelpers::SharedPayment::GrantedTokenService.new(@requestor)
      end
    end
  end
end
