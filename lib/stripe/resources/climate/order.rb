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
      def self.object_name
        "climate.order"
      end

      # Cancels a Climate order. You can cancel an order within 24 hours of creation. Stripe refunds the
      # reservation amount_subtotal, but not the amount_fees for user-triggered cancellations. Frontier
      # might cancel reservations if suppliers fail to deliver. If Frontier cancels the reservation, Stripe
      # provides 90 days advance notice and refunds the amount_total.
      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/climate/orders/%<order>s/cancel", { order: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Cancels a Climate order. You can cancel an order within 24 hours of creation. Stripe refunds the
      # reservation amount_subtotal, but not the amount_fees for user-triggered cancellations. Frontier
      # might cancel reservations if suppliers fail to deliver. If Frontier cancels the reservation, Stripe
      # provides 90 days advance notice and refunds the amount_total.
      def self.cancel(order, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/climate/orders/%<order>s/cancel", { order: CGI.escape(order) }),
          params: params,
          opts: opts
        )
      end

      # Creates a Climate order object for a given Climate product. The order will be processed immediately
      # after creation and payment will be deducted your Stripe balance.
      def self.create(params = {}, opts = {})
        request_stripe_object(method: :post, path: "/v1/climate/orders", params: params, opts: opts)
      end

      # Lists all Climate order objects. The orders are returned sorted by creation date, with the
      # most recently created orders appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(method: :get, path: "/v1/climate/orders", params: params, opts: opts)
      end

      # Updates the specified order by setting the values of the parameters passed.
      def self.update(order, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/climate/orders/%<order>s", { order: CGI.escape(order) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
