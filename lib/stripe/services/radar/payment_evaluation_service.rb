# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class PaymentEvaluationService < StripeService
      # Request a Radar API fraud risk score from Stripe for a payment before sending it for external processor authorization.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/radar/payment_evaluations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
