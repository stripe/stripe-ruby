# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # `Application Fee Refund` objects allow you to refund an application fee that
  # has previously been created but not yet refunded. Funds will be refunded to
  # the Stripe account from which the fee was originally collected.
  #
  # Related guide: [Refunding application fees](https://stripe.com/docs/connect/destination-charges#refunding-app-fee)
  class ApplicationFeeRefund < APIResource
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
    sig { returns(T.any(String, Stripe::ApplicationFee)) }
    # ID of the application fee that was refunded.
    attr_reader :fee
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
  end
end