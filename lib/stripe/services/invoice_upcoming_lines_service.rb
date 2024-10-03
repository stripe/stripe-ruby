# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoiceUpcomingLinesService < StripeService
    # When retrieving an upcoming invoice, you'll get a lines property containing the total count of line items and the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/invoices/upcoming/lines",
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
