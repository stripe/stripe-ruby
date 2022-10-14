# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    # This is an object representing the details of a transaction on a Capital financing object.
    class FinancingTransaction < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "capital.financing_transaction"
    end
  end
end
