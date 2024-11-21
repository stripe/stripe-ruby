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
    # Amount in cents (or local equivalent) to be transferred.
    sig { returns(Integer) }
    attr_reader :amount

    # Amount in cents (or local equivalent) reversed (can be less than the amount attribute on the transfer if a partial reversal was issued).
    sig { returns(Integer) }
    attr_reader :amount_reversed

    # Balance transaction that describes the impact of this transfer on your account balance.
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    # Time that this record of the transfer was first created.
    sig { returns(Integer) }
    attr_reader :created

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description

    # ID of the Stripe account the transfer was sent to.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :destination

    # If the destination is a Stripe account, this will be the ID of the payment that the destination account received for the transfer.
    sig { returns(T.any(String, Stripe::Charge)) }
    attr_reader :destination_payment

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # A list of reversals that have been applied to the transfer.
    sig { returns(Stripe::ListObject) }
    attr_reader :reversals

    # Whether the transfer has been fully reversed. If the transfer is only partially reversed, this attribute will still be false.
    sig { returns(T::Boolean) }
    attr_reader :reversed

    # ID of the charge that was used to fund the transfer. If null, the transfer was funded from the available balance.
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :source_transaction

    # The source balance this transfer came from. One of `card`, `fpx`, or `bank_account`.
    sig { returns(String) }
    attr_reader :source_type

    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
    sig { returns(T.nilable(String)) }
    attr_reader :transfer_group
  end
end