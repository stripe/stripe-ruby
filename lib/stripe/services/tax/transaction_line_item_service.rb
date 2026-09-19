# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class TransactionLineItemService < StripeService
      # Retrieves the line items of a committed standalone transaction as a collection.
      def list(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/tax/transactions/%<id>s/line_items", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
