# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class BillingEvaluationService < StripeService
      # Request Stripe Radar's assessment of the non-payment abuse risk of an upcoming charge, before the payment is attempted.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/radar/billing_evaluations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
