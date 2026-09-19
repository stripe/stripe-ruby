# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntentAmountDetailsLineItemService < StripeService
    # Lists all LineItems of a given PaymentIntent.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/payment_intents/%<id>s/amount_details_line_items", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
