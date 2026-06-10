# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Represents third-party gift cards that can be used as a payment method through Stripe.
  class GiftCard < APIResource
    extend Stripe::APIOperations::Create

    OBJECT_NAME = "gift_card"
    def self.object_name
      "gift_card"
    end

    # The brand of the gift card.
    attr_reader :brand
    # The expiration month of the gift card.
    attr_reader :exp_month
    # The expiration year of the gift card.
    attr_reader :exp_year
    # Unique identifier for the object.
    attr_reader :id
    # The last four digits of the gift card number.
    attr_reader :last4
    # The last operation performed on this gift card.
    attr_reader :last_operation
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # Activates a third-party gift card and optionally sets its balance.
    def activate(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/activate", { gift_card: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Activates a third-party gift card and optionally sets its balance.
    def self.activate(gift_card, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/activate", { gift_card: CGI.escape(gift_card) }),
        params: params,
        opts: opts
      )
    end

    # Cashout a third-party gift card by zeroing its balance.
    def cashout(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/cashout", { gift_card: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cashout a third-party gift card by zeroing its balance.
    def self.cashout(gift_card, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/cashout", { gift_card: CGI.escape(gift_card) }),
        params: params,
        opts: opts
      )
    end

    # Checks the balance of a third-party gift card.
    def check_balance(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/check_balance", { gift_card: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Checks the balance of a third-party gift card.
    def self.check_balance(gift_card, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/check_balance", { gift_card: CGI.escape(gift_card) }),
        params: params,
        opts: opts
      )
    end

    # Creates a gift card object.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/gift_cards", params: params, opts: opts)
    end

    # Reloads a third-party gift card by adding the specified amount to its balance.
    def reload(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/reload", { gift_card: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Reloads a third-party gift card by adding the specified amount to its balance.
    def self.reload(gift_card, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/reload", { gift_card: CGI.escape(gift_card) }),
        params: params,
        opts: opts
      )
    end

    # Voids a previously performed gift card operation.
    def void_operation(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/void_operation", { gift_card: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Voids a previously performed gift card operation.
    def self.void_operation(gift_card, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/gift_cards/%<gift_card>s/void_operation", { gift_card: CGI.escape(gift_card) }),
        params: params,
        opts: opts
      )
    end

    def self.inner_class_types
      @inner_class_types = {}
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
