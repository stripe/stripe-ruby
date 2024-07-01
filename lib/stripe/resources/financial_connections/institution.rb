# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # An institution represents a banking institution which may be available for an end user to select in the Financial Connections authentication flow.
    class Institution < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "financial_connections.institution"
      def self.object_name
        "financial_connections.institution"
      end

      # Returns a list of Financial Connections Institution objects.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/financial_connections/institutions",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
