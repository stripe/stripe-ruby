# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class OutboundPayment < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.outbound_payment"

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
        RESOURCE_CLASS = OutboundPayment

        custom_method :fail, http_verb: :post
        custom_method :post, http_verb: :post
        custom_method :return_outbound_payment, http_verb: :post, http_path: "return"

        def fail(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: resource_url + "/fail",
            params: params,
            opts: opts
          )
        end

        def post(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: resource_url + "/post",
            params: params,
            opts: opts
          )
        end

        def return_outbound_payment(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: resource_url + "/return",
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
