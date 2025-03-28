# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Some payment methods have no required amount that a customer must send.
  # Customers can be instructed to send any amount, and it can be made up of
  # multiple transactions. As such, sources can have multiple associated
  # transactions.
  class SourceTransaction < StripeObject
    class AchCreditTransfer < Stripe::StripeObject
      # Customer data associated with the transfer.
      sig { returns(String) }
      attr_reader :customer_data
      # Bank account fingerprint associated with the transfer.
      sig { returns(String) }
      attr_reader :fingerprint
      # Last 4 digits of the account number associated with the transfer.
      sig { returns(String) }
      attr_reader :last4
      # Routing number associated with the transfer.
      sig { returns(String) }
      attr_reader :routing_number
    end
    class ChfCreditTransfer < Stripe::StripeObject
      # Reference associated with the transfer.
      sig { returns(String) }
      attr_reader :reference
      # Sender's country address.
      sig { returns(String) }
      attr_reader :sender_address_country
      # Sender's line 1 address.
      sig { returns(String) }
      attr_reader :sender_address_line1
      # Sender's bank account IBAN.
      sig { returns(String) }
      attr_reader :sender_iban
      # Sender's name.
      sig { returns(String) }
      attr_reader :sender_name
    end
    class GbpCreditTransfer < Stripe::StripeObject
      # Bank account fingerprint associated with the Stripe owned bank account receiving the transfer.
      sig { returns(String) }
      attr_reader :fingerprint
      # The credit transfer rails the sender used to push this transfer. The possible rails are: Faster Payments, BACS, CHAPS, and wire transfers. Currently only Faster Payments is supported.
      sig { returns(String) }
      attr_reader :funding_method
      # Last 4 digits of sender account number associated with the transfer.
      sig { returns(String) }
      attr_reader :last4
      # Sender entered arbitrary information about the transfer.
      sig { returns(String) }
      attr_reader :reference
      # Sender account number associated with the transfer.
      sig { returns(String) }
      attr_reader :sender_account_number
      # Sender name associated with the transfer.
      sig { returns(String) }
      attr_reader :sender_name
      # Sender sort code associated with the transfer.
      sig { returns(String) }
      attr_reader :sender_sort_code
    end
    class PaperCheck < Stripe::StripeObject
      # Time at which the deposited funds will be available for use. Measured in seconds since the Unix epoch.
      sig { returns(String) }
      attr_reader :available_at
      # Comma-separated list of invoice IDs associated with the paper check.
      sig { returns(String) }
      attr_reader :invoices
    end
    class SepaCreditTransfer < Stripe::StripeObject
      # Reference associated with the transfer.
      sig { returns(String) }
      attr_reader :reference
      # Sender's bank account IBAN.
      sig { returns(String) }
      attr_reader :sender_iban
      # Sender's name.
      sig { returns(String) }
      attr_reader :sender_name
    end
    # Attribute for field ach_credit_transfer
    sig { returns(AchCreditTransfer) }
    attr_reader :ach_credit_transfer
    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount your customer has pushed to the receiver.
    sig { returns(Integer) }
    attr_reader :amount
    # Attribute for field chf_credit_transfer
    sig { returns(ChfCreditTransfer) }
    attr_reader :chf_credit_transfer
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # Attribute for field gbp_credit_transfer
    sig { returns(GbpCreditTransfer) }
    attr_reader :gbp_credit_transfer
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # Attribute for field paper_check
    sig { returns(PaperCheck) }
    attr_reader :paper_check
    # Attribute for field sepa_credit_transfer
    sig { returns(SepaCreditTransfer) }
    attr_reader :sepa_credit_transfer
    # The ID of the source this transaction is attached to.
    sig { returns(String) }
    attr_reader :source
    # The status of the transaction, one of `succeeded`, `pending`, or `failed`.
    sig { returns(String) }
    attr_reader :status
    # The type of source this transaction is attached to.
    sig { returns(String) }
    attr_reader :type
  end
end