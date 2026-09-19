# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class CreditReversalService < StripeService
      # Reverses a ReceivedCredit and creates a CreditReversal object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/treasury/credit_reversals",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of CreditReversals.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/treasury/credit_reversals",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of an existing CreditReversal by passing the unique CreditReversal ID from either the CreditReversal creation request or CreditReversal list
      def retrieve(id, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/treasury/credit_reversals/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
