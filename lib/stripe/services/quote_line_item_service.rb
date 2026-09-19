# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class QuoteLineItemService < StripeService
    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/quotes/%<id>s/line_items", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
