# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # You can reverse some [ReceivedDebits](https://stripe.com/docs/api#received_debits) depending on their network and source flow. Reversing a ReceivedDebit leads to the creation of a new object known as a DebitReversal.
    class DebitReversal < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.debit_reversal"
    end
  end
end
