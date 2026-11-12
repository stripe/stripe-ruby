# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Treasury
      class OutboundPaymentService < StripeService
        # Transitions a test OutboundPayment to the failed status. The OutboundPayment must already be in the processing state.
        def fail(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_payments/%<id>s/fail", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Transitions a test OutboundPayment to the posted status. The OutboundPayment must already be in the processing state.
        def post(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_payments/%<id>s/post", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Transitions a test OutboundPayment to the returned status. The OutboundPayment must already be in the posted state.
        def return_outbound_payment(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_payments/%<id>s/return", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates a test OutboundPayment with tracking details. The OutboundPayment must not be cancelable, and can't be in the canceled or failed states.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_payments/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
