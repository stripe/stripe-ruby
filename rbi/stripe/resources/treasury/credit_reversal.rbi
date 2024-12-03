# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # You can reverse some [ReceivedCredits](https://stripe.com/docs/api#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
    class CreditReversal < APIResource
      class StatusTransitions < Stripe::StripeObject
        # Timestamp describing when the CreditReversal changed status to `posted`
        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at
      end
      # Amount (in cents) transferred.
      sig { returns(Integer) }
      attr_reader :amount

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency

      # The FinancialAccount to reverse funds from.
      sig { returns(String) }
      attr_reader :financial_account

      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      # The rails used to reverse the funds.
      sig { returns(String) }
      attr_reader :network

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The ReceivedCredit being reversed.
      sig { returns(String) }
      attr_reader :received_credit

      # Status of the CreditReversal
      sig { returns(String) }
      attr_reader :status

      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      # The Transaction associated with this object.
      sig { returns(T.nilable(T.any(String, Stripe::Treasury::Transaction))) }
      attr_reader :transaction
    end
  end
end