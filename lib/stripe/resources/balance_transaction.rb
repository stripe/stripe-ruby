# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Balance transactions represent funds moving through your Stripe account.
  # They're created for every type of transaction that comes into or flows out of your Stripe account balance.
  #
  # Related guide: [Balance Transaction Types](https://stripe.com/docs/reports/balance-transaction-types).
  class BalanceTransaction < APIResource
    extend Stripe::APIOperations::List

    OBJECT_NAME = "balance_transaction"
  end
end
