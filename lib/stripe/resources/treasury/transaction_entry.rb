# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    class TransactionEntry < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.transaction_entry"

      def self.resource_url
        "/v1/treasury/transaction_entries"
      end
    end
  end
end
