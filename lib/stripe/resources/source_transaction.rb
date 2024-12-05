# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Some payment methods have no required amount that a customer must send.
  # Customers can be instructed to send any amount, and it can be made up of
  # multiple transactions. As such, sources can have multiple associated
  # transactions.
  class SourceTransaction < StripeObject
    OBJECT_NAME = "source_transaction"
    def self.object_name
      "source_transaction"
    end

    class AchCreditTransfer < Stripe::StripeObject
      attr_reader :customer_data, :fingerprint, :last4, :routing_number
    end

    class ChfCreditTransfer < Stripe::StripeObject
      attr_reader :reference, :sender_address_country, :sender_address_line1, :sender_iban, :sender_name
    end

    class GbpCreditTransfer < Stripe::StripeObject
      attr_reader :fingerprint, :funding_method, :last4, :reference, :sender_account_number, :sender_name, :sender_sort_code
    end

    class PaperCheck < Stripe::StripeObject
      attr_reader :available_at, :invoices
    end

    class SepaCreditTransfer < Stripe::StripeObject
      attr_reader :reference, :sender_iban, :sender_name
    end
    # Attribute for field ach_credit_transfer
    attr_reader :ach_credit_transfer
    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount your customer has pushed to the receiver.
    attr_reader :amount
    # Attribute for field chf_credit_transfer
    attr_reader :chf_credit_transfer
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # Attribute for field gbp_credit_transfer
    attr_reader :gbp_credit_transfer
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field paper_check
    attr_reader :paper_check
    # Attribute for field sepa_credit_transfer
    attr_reader :sepa_credit_transfer
    # The ID of the source this transaction is attached to.
    attr_reader :source
    # The status of the transaction, one of `succeeded`, `pending`, or `failed`.
    attr_reader :status
    # The type of source this transaction is attached to.
    attr_reader :type
  end
end
