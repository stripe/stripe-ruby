# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class OutboundTransfer < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.outbound_transfer"

      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/treasury/outbound_transfers/%<outbound_transfer>s/cancel", { outbound_transfer: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      def self.cancel(outbound_transfer, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/treasury/outbound_transfers/%<outbound_transfer>s/cancel", { outbound_transfer: CGI.escape(outbound_transfer) }),
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = OutboundTransfer

        def self.fail(outbound_transfer, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/fail", { outbound_transfer: CGI.escape(outbound_transfer) }),
            params: params,
            opts: opts
          )
        end

        def self.post(outbound_transfer, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/post", { outbound_transfer: CGI.escape(outbound_transfer) }),
            params: params,
            opts: opts
          )
        end

        def self.return_outbound_transfer(
          outbound_transfer,
          params = {},
          opts = {}
        )
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/return", { outbound_transfer: CGI.escape(outbound_transfer) }),
            params: params,
            opts: opts
          )
        end

        def fail(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/fail", { outbound_transfer: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        def post(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/post", { outbound_transfer: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        def return_outbound_transfer(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/return", { outbound_transfer: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
