# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      class EarnedCreditService < StripeService
        # Returns a list of EarnedCredits.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/money_management/earned_credits",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves an EarnedCredit.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/money_management/earned_credits/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
