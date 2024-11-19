# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Some payment methods have no required amount that a customer must send.
  # Customers can be instructed to send any amount, and it can be made up of
  # multiple transactions. As such, sources can have multiple associated
  # transactions.
  class SourceTransaction < StripeObject
    class AchCreditTransfer < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :customer_data
      sig { returns(String) }
      attr_reader :fingerprint
      sig { returns(String) }
      attr_reader :last4
      sig { returns(String) }
      attr_reader :routing_number
    end
    class ChfCreditTransfer < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :reference
      sig { returns(String) }
      attr_reader :sender_address_country
      sig { returns(String) }
      attr_reader :sender_address_line1
      sig { returns(String) }
      attr_reader :sender_iban
      sig { returns(String) }
      attr_reader :sender_name
    end
    class GbpCreditTransfer < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :fingerprint
      sig { returns(String) }
      attr_reader :funding_method
      sig { returns(String) }
      attr_reader :last4
      sig { returns(String) }
      attr_reader :reference
      sig { returns(String) }
      attr_reader :sender_account_number
      sig { returns(String) }
      attr_reader :sender_name
      sig { returns(String) }
      attr_reader :sender_sort_code
    end
    class PaperCheck < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :available_at
      sig { returns(String) }
      attr_reader :invoices
    end
    class SepaCreditTransfer < Stripe::StripeObject
      sig { returns(String) }
      attr_reader :reference
      sig { returns(String) }
      attr_reader :sender_iban
      sig { returns(String) }
      attr_reader :sender_name
    end
    sig { returns(AchCreditTransfer) }
    # Attribute for field ach_credit_transfer
    attr_reader :ach_credit_transfer
    sig { returns(Integer) }
    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount your customer has pushed to the receiver.
    attr_reader :amount
    sig { returns(ChfCreditTransfer) }
    # Attribute for field chf_credit_transfer
    attr_reader :chf_credit_transfer
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(GbpCreditTransfer) }
    # Attribute for field gbp_credit_transfer
    attr_reader :gbp_credit_transfer
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(PaperCheck) }
    # Attribute for field paper_check
    attr_reader :paper_check
    sig { returns(SepaCreditTransfer) }
    # Attribute for field sepa_credit_transfer
    attr_reader :sepa_credit_transfer
    sig { returns(String) }
    # The ID of the source this transaction is attached to.
    attr_reader :source
    sig { returns(String) }
    # The status of the transaction, one of `succeeded`, `pending`, or `failed`.
    attr_reader :status
    sig { returns(String) }
    # The type of source this transaction is attached to.
    attr_reader :type
  end
end