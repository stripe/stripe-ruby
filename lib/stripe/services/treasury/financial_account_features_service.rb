# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class FinancialAccountFeaturesService < StripeService
      # Retrieves Features information associated with the FinancialAccount.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/treasury/financial_accounts/%<id>s/features", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates the Features associated with a FinancialAccount.
      def update(id, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/treasury/financial_accounts/%<id>s/features", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
