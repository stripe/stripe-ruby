# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A customer's `Cash balance` represents real funds. Customers can add funds to their cash balance by sending a bank transfer. These funds can be used for payment and can eventually be paid out to your bank account.
  class CashBalance < APIResource
    class Settings < Stripe::StripeObject
      # The configuration for how funds that land in the customer cash balance are reconciled.
      sig { returns(String) }
      attr_reader :reconciliation_mode
      # A flag to indicate if reconciliation mode returned is the user's default or is specific to this customer cash balance
      sig { returns(T::Boolean) }
      attr_reader :using_merchant_default
    end
    # A hash of all cash balances available to this customer. You cannot delete a customer with any cash balances, even if the balance is 0. Amounts are represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    sig { returns(T.nilable(T::Hash[String, Integer])) }
    attr_reader :available
    # The ID of the customer whose cash balance this object represents.
    sig { returns(String) }
    attr_reader :customer
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Attribute for field settings
    sig { returns(Settings) }
    attr_reader :settings
  end
end