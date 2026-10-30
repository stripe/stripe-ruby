# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class AccountSessionService < StripeService
        # Create an Account Session.
        #
        # ** raises RateLimitError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/core/account_sessions",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
