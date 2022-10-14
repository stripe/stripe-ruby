# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A `Transfer` object is created when you move funds between Stripe accounts as
  # part of Connect.
  #
  # Before April 6, 2017, transfers also represented movement of funds from a
  # Stripe account to a card or bank account. This behavior has since been split
  # out into a [Payout](https://stripe.com/docs/api#payout_object) object, with corresponding payout endpoints. For more
  # information, read about the
  # [transfer/payout split](https://stripe.com/docs/transfer-payout-split).
  #
  # Related guide: [Creating Separate Charges and Transfers](https://stripe.com/docs/connect/charges-transfers).
  class Transfer < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "transfer"

    nested_resource_class_methods :reversal,
                                  operations: %i[create retrieve update list]
  end
end
