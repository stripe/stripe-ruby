# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Climate
    # Orders represent your intent to purchase a particular Climate product. When you create an order, the
    # payment is deducted from your merchant balance.
    class Order < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "climate.order"

      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/climate/orders/%<order>s/cancel", { order: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.cancel(order, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/climate/orders/%<order>s/cancel", { order: CGI.escape(order) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
