# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module Treasury
      class OutboundTransferService < StripeService
        # Transitions a test mode created OutboundTransfer to the failed status. The OutboundTransfer must already be in the processing state.
        def fail(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<id>s/fail", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Transitions a test mode created OutboundTransfer to the posted status. The OutboundTransfer must already be in the processing state.
        def post(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<id>s/post", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Transitions a test mode created OutboundTransfer to the returned status. The OutboundTransfer must already be in the processing state.
        def return_outbound_transfer(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<id>s/return", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Updates a test mode created OutboundTransfer with tracking details. The OutboundTransfer must not be cancelable, and cannot be in the canceled or failed states.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v1/test_helpers/treasury/outbound_transfers/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
