# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A customer's `Cash balance` represents real funds. Customers can add funds to their cash balance by sending a bank transfer. These funds can be used for payment and can eventually be paid out to your bank account.
  class CashBalance < APIResource
    class Settings < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :reconciliation_mode
      sig { returns(T::Boolean) }
      attr_reader :using_merchant_default
    end
    sig { returns(T.nilable(T::Hash[String, Integer])) }
    # A hash of all cash balances available to this customer. You cannot delete a customer with any cash balances, even if the balance is 0. Amounts are represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    attr_reader :available
    sig { returns(String) }
    # The ID of the customer whose cash balance this object represents.
    attr_reader :customer
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Settings) }
    # Attribute for field settings
    attr_reader :settings
  end
end