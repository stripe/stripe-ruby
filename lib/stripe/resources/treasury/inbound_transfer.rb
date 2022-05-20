# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class InboundTransfer < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.inbound_transfer"

      custom_method :cancel, http_verb: :post

      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: resource_url + "/cancel",
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = InboundTransfer

        custom_method :fail, http_verb: :post
        custom_method :return_inbound_transfer, http_verb: :post, http_path: "return"
        custom_method :succeed, http_verb: :post

        def fail(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: resource_url + "/fail",
            params: params,
            opts: opts
          )
        end

        def return_inbound_transfer(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: resource_url + "/return",
            params: params,
            opts: opts
          )
        end

        def succeed(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: resource_url + "/succeed",
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
