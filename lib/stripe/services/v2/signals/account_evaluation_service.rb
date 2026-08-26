# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Signals
      class AccountEvaluationService < StripeService
        # Creates a new account evaluation to request signal evaluations on an account, customer, or inline account data.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/signals/account_evaluations",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves an AccountEvaluation by its ID.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/signals/account_evaluations/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
