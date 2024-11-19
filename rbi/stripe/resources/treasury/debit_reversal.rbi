# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # You can reverse some [ReceivedDebits](https://stripe.com/docs/api#received_debits) depending on their network and source flow. Reversing a ReceivedDebit leads to the creation of a new object known as a DebitReversal.
    class DebitReversal < APIResource
      class LinkedFlows < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :issuing_dispute
      end
      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :completed_at
      end
      sig { returns(Integer) }
      # Amount (in cents) transferred.
      attr_reader :amount
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(T.nilable(String)) }
      # The FinancialAccount to reverse funds from.
      attr_reader :financial_account
      sig { returns(T.nilable(String)) }
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      attr_reader :hosted_regulatory_receipt_url
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T.nilable(LinkedFlows)) }
      # Other flows linked to a DebitReversal.
      attr_reader :linked_flows
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # The rails used to reverse the funds.
      attr_reader :network
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The ReceivedDebit being reversed.
      attr_reader :received_debit
      sig { returns(String) }
      # Status of the DebitReversal
      attr_reader :status
      sig { returns(StatusTransitions) }
      # Attribute for field status_transitions
      attr_reader :status_transitions
      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      # The Transaction associated with this object.
      attr_reader :transaction
    end
  end
end