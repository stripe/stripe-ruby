# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class CustomerEvaluationService < StripeService
      # Creates a new CustomerEvaluation object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/radar/customer_evaluations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
