# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class IssuingAuthorizationEvaluationService < StripeService
      # Request a fraud risk assessment from Stripe for an Issuing card authorization.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/radar/issuing_authorization_evaluations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
