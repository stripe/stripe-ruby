# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ApplicationFee < APIResource
    class FeeSource < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :charge
      sig { returns(String) }
      attr_reader :payout
      sig { returns(String) }
      attr_reader :type
    end
    sig { returns(T.any(String, Stripe::Account)) }
    # ID of the Stripe account this fee was taken from.
    attr_reader :account
    sig { returns(Integer) }
    # Amount earned, in cents (or local equivalent).
    attr_reader :amount
    sig { returns(Integer) }
    # Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the fee if a partial refund was issued)
    attr_reader :amount_refunded
    sig { returns(T.any(String, Stripe::Application)) }
    # ID of the Connect application that earned the fee.
    attr_reader :application
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    # Balance transaction that describes the impact of this collected application fee on your account balance (not including refunds).
    attr_reader :balance_transaction
    sig { returns(T.any(String, Stripe::Charge)) }
    # ID of the charge that the application fee was taken from.
    attr_reader :charge
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(FeeSource)) }
    # Polymorphic source of the application fee. Includes the ID of the object the application fee was created from.
    attr_reader :fee_source
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    # ID of the corresponding charge on the platform account, if this fee was the result of a charge using the `destination` parameter.
    attr_reader :originating_transaction
    sig { returns(T::Boolean) }
    # Whether the fee has been fully refunded. If the fee is only partially refunded, this attribute will still be false.
    attr_reader :refunded
    sig { returns(Stripe::ListObject) }
    # A list of refunds that have been applied to the fee.
    attr_reader :refunds
  end
end