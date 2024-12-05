# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # [Stripe Connect](https://stripe.com/docs/connect) platforms can reverse transfers made to a
  # connected account, either entirely or partially, and can also specify whether
  # to refund any related application fees. Transfer reversals add to the
  # platform's balance and subtract from the destination account's balance.
  #
  # Reversing a transfer that was made for a [destination
  # charge](https://stripe.com/docs/connect/destination-charges) is allowed only up to the amount of
  # the charge. It is possible to reverse a
  # [transfer_group](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options)
  # transfer only if the destination account has enough balance to cover the
  # reversal.
  #
  # Related guide: [Reverse transfers](https://stripe.com/docs/connect/separate-charges-and-transfers#reverse-transfers)
  class Reversal < APIResource
    sig { returns(Integer) }
    # Amount, in cents (or local equivalent).
    attr_reader :amount
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    # Balance transaction that describes the impact on your account balance.
    attr_reader :balance_transaction
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(T.any(String, Stripe::Refund))) }
    # Linked payment refund for the transfer reversal.
    attr_reader :destination_payment_refund
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::Refund))) }
    # ID of the refund responsible for the transfer reversal.
    attr_reader :source_refund
    sig { returns(T.any(String, Stripe::Transfer)) }
    # ID of the transfer that was reversed.
    attr_reader :transfer
  end
end