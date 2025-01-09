# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The invoice payment object
  class InvoicePayment < APIResource
    OBJECT_NAME = "invoice_payment"
    def self.object_name
      "invoice_payment"
    end

    class Payment < Stripe::StripeObject
      # ID of the successful charge for this payment when `type` is `charge`.
      attr_reader :charge
      # ID of the PaymentIntent associated with this payment when `type` is `payment_intent`. Note: This property is only populated for invoices finalized on or after March 15th, 2019.
      attr_reader :payment_intent
      # ID of the PaymentRecord associated with this payment when `type` is `payment_record`.
      attr_reader :payment_record
      # Type of payment object associated with this invoice payment.
      attr_reader :type
    end

    class StatusTransitions < Stripe::StripeObject
      # The time that the payment was canceled.
      attr_reader :canceled_at
      # The time that the payment succeeded.
      attr_reader :paid_at
    end
    # Excess payment that was received for this invoice and credited to the customer’s `invoice_credit_balance`. This field is null until the payment is `paid`. Overpayment can happen when you attach more than one PaymentIntent to the invoice, and each of them succeeds. To avoid overpayment, cancel any PaymentIntents that you do not need before attaching more.
    attr_reader :amount_overpaid
    # Amount that was actually paid for this invoice, in cents (or local equivalent). This field is null until the payment is `paid`. This amount can be less than the `amount_requested` if the PaymentIntent’s `amount_received` is not sufficient to pay all of the invoices that it is attached to.
    attr_reader :amount_paid
    # Amount intended to be paid toward this invoice, in cents (or local equivalent)
    attr_reader :amount_requested
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # Unique identifier for the object.
    attr_reader :id
    # The invoice that was paid.
    attr_reader :invoice
    # Stripe automatically creates a default InvoicePayment when the invoice is finalized, and keeps it synchronized with the invoice’s `amount_remaining`. The PaymentIntent associated with the default payment can’t be edited or canceled directly.
    attr_reader :is_default
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field payment
    attr_reader :payment
    # The status of the payment, one of `open`, `paid`, or `canceled`.
    attr_reader :status
    # Attribute for field status_transitions
    attr_reader :status_transitions
  end
end
