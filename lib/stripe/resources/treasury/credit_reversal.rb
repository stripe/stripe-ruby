# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # You can reverse some [ReceivedCredits](https://stripe.com/docs/api#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
    class CreditReversal < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "treasury.credit_reversal"
    end
  end
end
