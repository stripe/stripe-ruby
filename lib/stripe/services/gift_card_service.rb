# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class GiftCardService < StripeService
    # Activates a third-party gift card and optionally sets its balance.
    def activate(gift_card, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/activate", { gift_card: CGI.escape(gift_card) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Cashout a third-party gift card by zeroing its balance.
    def cashout(gift_card, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/cashout", { gift_card: CGI.escape(gift_card) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Checks the balance of a third-party gift card.
    def check_balance(gift_card, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/check_balance", { gift_card: CGI.escape(gift_card) }),
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
    def reload(gift_card, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/reload", { gift_card: CGI.escape(gift_card) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves a third-party gift card object.
    def retrieve(gift_card, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/gift_cards/%<gift_card>s", { gift_card: CGI.escape(gift_card) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Voids a previously performed gift card operation.
    def void_operation(gift_card, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/void_operation", { gift_card: CGI.escape(gift_card) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
