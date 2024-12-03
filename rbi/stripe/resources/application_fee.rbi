# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ApplicationFee < APIResource
    class FeeSource < Stripe::StripeObject
      # Charge ID that created this application fee.
      sig { returns(String) }
      attr_reader :charge
      # Payout ID that created this application fee.
      sig { returns(String) }
      attr_reader :payout
      # Type of object that created the application fee, either `charge` or `payout`.
      sig { returns(String) }
      attr_reader :type
    end
    # ID of the Stripe account this fee was taken from.
    sig { returns(T.any(String, Stripe::Account)) }
    attr_reader :account

    # Amount earned, in cents (or local equivalent).
    sig { returns(Integer) }
    attr_reader :amount

    # Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the fee if a partial refund was issued)
    sig { returns(Integer) }
    attr_reader :amount_refunded

    # ID of the Connect application that earned the fee.
    sig { returns(T.any(String, Stripe::Application)) }
    attr_reader :application

    # Balance transaction that describes the impact of this collected application fee on your account balance (not including refunds).
    sig { returns(T.nilable(T.any(String, Stripe::BalanceTransaction))) }
    attr_reader :balance_transaction

    # ID of the charge that the application fee was taken from.
    sig { returns(T.any(String, Stripe::Charge)) }
    attr_reader :charge

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # Polymorphic source of the application fee. Includes the ID of the object the application fee was created from.
    sig { returns(T.nilable(FeeSource)) }
    attr_reader :fee_source

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # ID of the corresponding charge on the platform account, if this fee was the result of a charge using the `destination` parameter.
    sig { returns(T.nilable(T.any(String, Stripe::Charge))) }
    attr_reader :originating_transaction

    # Whether the fee has been fully refunded. If the fee is only partially refunded, this attribute will still be false.
    sig { returns(T::Boolean) }
    attr_reader :refunded

    # A list of refunds that have been applied to the fee.
    sig { returns(Stripe::ListObject) }
    attr_reader :refunds
  end
end