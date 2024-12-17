# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ConnectCollectionTransfer < APIResource
    # Amount transferred, in cents (or local equivalent).
    sig { returns(Integer) }
    attr_reader :amount
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # ID of the account that funds are being collected for.
    sig { returns(T.any(String, Stripe::Account)) }
    attr_reader :destination
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
  end
end