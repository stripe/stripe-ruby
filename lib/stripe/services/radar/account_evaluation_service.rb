# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class AccountEvaluationService < StripeService
      # Creates a new AccountEvaluation object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/radar/account_evaluations",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves an AccountEvaluation object.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/radar/account_evaluations/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Reports an event on an AccountEvaluation object.
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/radar/account_evaluations/%<id>s/report_event", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
