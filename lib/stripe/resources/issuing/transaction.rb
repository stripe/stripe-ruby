# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # Any use of an [issued card](https://stripe.com/docs/issuing) that results in funds entering or leaving
    # your Stripe account, such as a completed purchase or refund, is represented by an Issuing
    # `Transaction` object.
    #
    # Related guide: [Issued card transactions](https://stripe.com/docs/issuing/purchases/transactions)
    class Transaction < APIResource
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.transaction"

      # Returns a list of Issuing Transaction objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/transactions",
          params: filters,
          opts: opts
        )
      end

      # Updates the specified Issuing Transaction object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/transactions/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = Transaction

        # Allows the user to capture an arbitrary amount, also known as a forced capture.
        def self.create_force_capture(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: "/v1/test_helpers/issuing/transactions/create_force_capture",
            params: params,
            opts: opts
          )
        end

        # Allows the user to refund an arbitrary amount, also known as a unlinked refund.
        def self.create_unlinked_refund(params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: "/v1/test_helpers/issuing/transactions/create_unlinked_refund",
            params: params,
            opts: opts
          )
        end

        # Refund a test-mode Transaction.
        def self.refund(transaction, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/transactions/%<transaction>s/refund", { transaction: CGI.escape(transaction) }),
            params: params,
            opts: opts
          )
        end

        # Refund a test-mode Transaction.
        def refund(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/issuing/transactions/%<transaction>s/refund", { transaction: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
