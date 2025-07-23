# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class PaymentService < StripeService
      attr_reader :off_session_payments

      def initialize(requestor)
        super
        @off_session_payments = Stripe::V2::Payments::OffSessionPaymentService.new(@requestor)
      end
    end
  end
end
