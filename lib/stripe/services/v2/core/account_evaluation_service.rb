# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class AccountEvaluationService < StripeService
        # Creates a new account evaluation to trigger signal evaluations on an account or account data.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/core/account_evaluations",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
