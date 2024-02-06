# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # You can reverse some [ReceivedCredits](https://stripe.com/docs/api#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
    class CreditReversal < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.credit_reversal"

      # Reverses a ReceivedCredit and creates a CreditReversal object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/treasury/credit_reversals",
          params: params,
          opts: opts
        )
      end

      # Returns a list of CreditReversals.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/treasury/credit_reversals",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
