# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class QuoteLineService < StripeService
    # Retrieves a paginated list of lines for a quote. These lines describe changes that will be used to create new subscription schedules or update existing subscription schedules when the quote is accepted.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/quotes/%<id>s/lines", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
