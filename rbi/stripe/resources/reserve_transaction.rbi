# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ReserveTransaction < APIResource
    sig { returns(Integer) }
    # Attribute for field amount
    attr_reader :amount
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
  end
end