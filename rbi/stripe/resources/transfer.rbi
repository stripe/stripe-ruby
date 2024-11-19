# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
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
  # Related guide: [Creating separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers)
  class Transfer < APIResource
    sig { returns(Integer) }
    # Amount in cents (or local equivalent) to be transferred.
    attr_reader :amount
    sig { returns(Integer) }
    # Amount in cents (or local equivalent) reversed (can be less than the amount attribute on the transfer if a partial reversal was issued).
    attr_reader :amount_reversed
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    # Balance transaction that describes the impact of this transfer on your account balance.
    attr_reader :balance_transaction
    sig { returns(Integer) }
    # Time that this record of the transfer was first created.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    # ID of the Stripe account the transfer was sent to.
    attr_reader :destination
    sig { returns(T.any(String, Stripe::Charge)) }
    # If the destination is a Stripe account, this will be the ID of the payment that the destination account received for the transfer.
    attr_reader :destination_payment
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Stripe::ListObject) }
    # A list of reversals that have been applied to the transfer.
    attr_reader :reversals
    sig { returns(T::Boolean) }
    # Whether the transfer has been fully reversed. If the transfer is only partially reversed, this attribute will still be false.
    attr_reader :reversed
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    # ID of the charge that was used to fund the transfer. If null, the transfer was funded from the available balance.
    attr_reader :source_transaction
    sig { returns(String) }
    # The source balance this transfer came from. One of `card`, `fpx`, or `bank_account`.
    attr_reader :source_type
    sig { returns(T.nilable(String)) }
    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
    attr_reader :transfer_group
  end
end