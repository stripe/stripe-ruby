# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A historical balance for the account on a particular day. It may be sourced from a balance snapshot provided by a financial institution, or inferred using transactions data.
    class AccountInferredBalance < APIResource
      OBJECT_NAME = "financial_connections.account_inferred_balance"
      def self.object_name
        "financial_connections.account_inferred_balance"
      end

      # The time for which this balance was calculated, measured in seconds since the Unix epoch. If the balance was computed by Stripe and not provided directly by a financial institution, it will always be 23:59:59 UTC.
      attr_reader :as_of
      # The balances owed to (or by) the account holder, before subtracting any outbound pending transactions or adding any inbound pending transactions.
      #
      # Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
      #
      # Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
      attr_reader :current
      # Unique identifier for the object.
      attr_reader :id
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
    end
  end
end
