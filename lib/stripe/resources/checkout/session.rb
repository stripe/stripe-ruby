# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Checkout
    class Session < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      extend Stripe::APIOperations::NestedResource

      OBJECT_NAME = "checkout.session"

      nested_resource_class_methods :line_item, operations: %i[list]

      def expire(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/checkout/sessions/%<session>s/expire", { session: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.expire(session, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/checkout/sessions/%<session>s/expire", { session: CGI.escape(session) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
