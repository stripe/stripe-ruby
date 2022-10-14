# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # Any use of an [issued card](https://stripe.com/docs/issuing) that results in funds entering or leaving
    # your Stripe account, such as a completed purchase or refund, is represented by an Issuing
    # `Transaction` object.
    #
    # Related guide: [Issued Card Transactions](https://stripe.com/docs/issuing/purchases/transactions).
    class Transaction < APIResource
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "issuing.transaction"
    end
  end
end
