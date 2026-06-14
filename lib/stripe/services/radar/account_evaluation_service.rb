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
      def retrieve(account_evaluation, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/radar/account_evaluations/%<account_evaluation>s", { account_evaluation: CGI.escape(account_evaluation) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Reports an event on an AccountEvaluation object.
      def update(account_evaluation, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/radar/account_evaluations/%<account_evaluation>s/report_event", { account_evaluation: CGI.escape(account_evaluation) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
