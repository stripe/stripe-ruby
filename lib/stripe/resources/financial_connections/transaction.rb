# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A Transaction represents a real transaction that affects a Financial Connections Account balance.
    class Transaction < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "financial_connections.transaction"
    end
  end
end
