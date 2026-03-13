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

      # Reports an event on a CustomerEvaluation object.
      def update(customer_evaluation, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/radar/customer_evaluations/%<customer_evaluation>s/report", { customer_evaluation: CGI.escape(customer_evaluation) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
