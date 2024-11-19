# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # A Transaction represents a real transaction that affects a Financial Connections Account balance.
    class Transaction < APIResource
      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :void_at
      end
      sig { returns(String) }
      # The ID of the Financial Connections Account this transaction belongs to.
      attr_reader :account
      sig { returns(Integer) }
      # The amount of this transaction, in cents (or local equivalent).
      attr_reader :amount
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(String) }
      # The description of this transaction.
      attr_reader :description
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The status of the transaction.
      attr_reader :status
      sig { returns(StatusTransitions) }
      # Attribute for field status_transitions
      attr_reader :status_transitions
      sig { returns(Integer) }
      # Time at which the transaction was transacted. Measured in seconds since the Unix epoch.
      attr_reader :transacted_at
      sig { returns(String) }
      # The token of the transaction refresh that last updated or created this transaction.
      attr_reader :transaction_refresh
      sig { returns(Integer) }
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      attr_reader :updated
    end
  end
end