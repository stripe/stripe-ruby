# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class DebitReversalService < StripeService
      # Reverses a ReceivedDebit and creates a DebitReversal object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/treasury/debit_reversals",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of DebitReversals.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/treasury/debit_reversals",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a DebitReversal object.
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/treasury/debit_reversals/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
