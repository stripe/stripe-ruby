# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class GiftCardOperationService < StripeService
    # Retrieves a third-party gift card operation object.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/gift_card_operations/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
