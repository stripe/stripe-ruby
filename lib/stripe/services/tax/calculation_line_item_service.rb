# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class CalculationLineItemService < StripeService
      # Retrieves the line items of a tax calculation as a collection, if the calculation hasn't expired.
      def list(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/tax/calculations/%<id>s/line_items", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
