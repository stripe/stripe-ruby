# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ConnectCollectionTransfer < APIResource
    sig { returns(Integer) }
    # Amount transferred, in cents (or local equivalent).
    attr_reader :amount
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.any(String, Stripe::Account)) }
    # ID of the account that funds are being collected for.
    attr_reader :destination
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
  end
end