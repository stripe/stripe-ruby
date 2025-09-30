# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      class OffSessionPaymentService < StripeService
        # Cancel an OffSessionPayment that has previously been created.
        def cancel(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/payments/off_session_payments/%<id>s/cancel", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Captures an OffSessionPayment that has previously been created.
        def capture(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/payments/off_session_payments/%<id>s/capture", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Creates an OffSessionPayment object.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/payments/off_session_payments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Returns a list of OffSessionPayments matching a filter.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/payments/off_session_payments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an OffSessionPayment that has previously been created.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/payments/off_session_payments/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
