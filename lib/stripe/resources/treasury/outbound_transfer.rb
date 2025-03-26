# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # Use [OutboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers) to transfer funds from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts) to a PaymentMethod belonging to the same entity. To send funds to a different party, use [OutboundPayments](https://stripe.com/docs/api#outbound_payments) instead. You can send funds over ACH rails or through a domestic wire transfer to a user's own external bank account.
    #
    # Simulate OutboundTransfer state changes with the `/v1/test_helpers/treasury/outbound_transfers` endpoints. These methods can only be called on test mode objects.
    #
    # Related guide: [Moving money with Treasury using OutboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers)
    class OutboundTransfer < APIResource
      OBJECT_NAME = "treasury.outbound_transfer"
      def self.object_name
        "treasury.outbound_transfer"
      end

      # An OutboundTransfer can be canceled if the funds have not yet been paid out.
      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/treasury/outbound_transfers/%<outbound_transfer>s/cancel", { outbound_transfer: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # An OutboundTransfer can be canceled if the funds have not yet been paid out.
      def self.cancel(outbound_transfer, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/treasury/outbound_transfers/%<outbound_transfer>s/cancel", { outbound_transfer: CGI.escape(outbound_transfer) }),
          params: params,
          opts: opts
        )
      end

      # Creates an OutboundTransfer.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/treasury/outbound_transfers",
          params: params,
          opts: opts
        )
      end

      # Returns a list of OutboundTransfers sent from the specified FinancialAccount.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/treasury/outbound_transfers",
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = OutboundTransfer
        def self.resource_class
          "OutboundTransfer"
        end

        # Transitions a test mode created OutboundTransfer to the failed status. The OutboundTransfer must already be in the processing state.
        def self.fail(outbound_transfer, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/fail", { outbound_transfer: CGI.escape(outbound_transfer) }),
            params: params,
            opts: opts
          )
        end

        # Transitions a test mode created OutboundTransfer to the failed status. The OutboundTransfer must already be in the processing state.
        def fail(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/fail", { outbound_transfer: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Transitions a test mode created OutboundTransfer to the posted status. The OutboundTransfer must already be in the processing state.
        def self.post(outbound_transfer, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/post", { outbound_transfer: CGI.escape(outbound_transfer) }),
            params: params,
            opts: opts
          )
        end

        # Transitions a test mode created OutboundTransfer to the posted status. The OutboundTransfer must already be in the processing state.
        def post(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/post", { outbound_transfer: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Transitions a test mode created OutboundTransfer to the returned status. The OutboundTransfer must already be in the processing state.
        def self.return_outbound_transfer(outbound_transfer, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/return", { outbound_transfer: CGI.escape(outbound_transfer) }),
            params: params,
            opts: opts
          )
        end

        # Transitions a test mode created OutboundTransfer to the returned status. The OutboundTransfer must already be in the processing state.
        def return_outbound_transfer(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s/return", { outbound_transfer: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end

        # Updates a test mode created OutboundTransfer with tracking details. The OutboundTransfer must not be cancelable, and cannot be in the canceled or failed states.
        def self.update(outbound_transfer, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s", { outbound_transfer: CGI.escape(outbound_transfer) }),
            params: params,
            opts: opts
          )
        end

        # Updates a test mode created OutboundTransfer with tracking details. The OutboundTransfer must not be cancelable, and cannot be in the canceled or failed states.
        def update(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<outbound_transfer>s", { outbound_transfer: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
