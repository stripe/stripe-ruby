# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # A Transaction represents a real transaction that affects a Financial Connections Account balance.
    class Transaction < APIResource
      class StatusTransitions < Stripe::StripeObject
        # Time at which this transaction posted. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at
        # Time at which this transaction was voided. Measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :void_at
      end
      # The ID of the Financial Connections Account this transaction belongs to.
      sig { returns(String) }
      attr_reader :account

      # The amount of this transaction, in cents (or local equivalent).
      sig { returns(Integer) }
      attr_reader :amount

      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency

      # The description of this transaction.
      sig { returns(String) }
      attr_reader :description

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The status of the transaction.
      sig { returns(String) }
      attr_reader :status

      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      # Time at which the transaction was transacted. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :transacted_at

      # The token of the transaction refresh that last updated or created this transaction.
      sig { returns(String) }
      attr_reader :transaction_refresh

      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :updated
    end
  end
end