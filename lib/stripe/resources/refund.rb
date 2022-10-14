# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # `Refund` objects allow you to refund a charge that has previously been created
  # but not yet refunded. Funds will be refunded to the credit or debit card that
  # was originally charged.
  #
  # Related guide: [Refunds](https://stripe.com/docs/refunds).
  class Refund < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "refund"

    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/refunds/%<refund>s/cancel", { refund: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.cancel(refund, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/refunds/%<refund>s/cancel", { refund: CGI.escape(refund) }),
        params: params,
        opts: opts
      )
    end

    def test_helpers
      TestHelpers.new(self)
    end

    class TestHelpers < APIResourceTestHelpers
      RESOURCE_CLASS = Refund

      def self.expire(refund, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/refunds/%<refund>s/expire", { refund: CGI.escape(refund) }),
          params: params,
          opts: opts
        )
      end

      def expire(params = {}, opts = {})
        @resource.request_stripe_object(
          method: :post,
          path: format("/v1/test_helpers/refunds/%<refund>s/expire", { refund: CGI.escape(@resource["id"]) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
