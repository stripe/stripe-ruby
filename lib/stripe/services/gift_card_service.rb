# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class GiftCardService < StripeService
    # Activates a third-party gift card and optionally sets its balance.
    def activate(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/gift_cards/%<id>s/activate", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Cashout a third-party gift card by zeroing its balance.
    def cashout(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/gift_cards/%<id>s/cashout", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Checks the balance of a third-party gift card.
    def check_balance(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/gift_cards/%<id>s/check_balance", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Creates a gift card object.
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/gift_cards", params: params, opts: opts, base_address: :api)
    end

    # Reloads a third-party gift card by adding the specified amount to its balance.
    def reload(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/gift_cards/%<id>s/reload", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves a third-party gift card object.
    def retrieve(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/gift_cards/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Voids a previously performed gift card operation.
    def void_operation(id, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/gift_cards/%<id>s/void_operation", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
