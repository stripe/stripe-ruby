# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The invoice payment object
  class InvoicePayment < APIResource
    class Payment < Stripe::StripeObject
      sig { returns(T.any(String, Stripe::Charge)) }
      attr_reader :charge
      sig { returns(T.any(String, Stripe::PaymentIntent)) }
      attr_reader :payment_intent
      sig { returns(T.any(String, Stripe::PaymentRecord)) }
      attr_reader :payment_record
      sig { returns(String) }
      attr_reader :type
    end
    class StatusTransitions < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :canceled_at
      sig { returns(T.nilable(Integer)) }
      attr_reader :paid_at
    end
    sig { returns(T.nilable(Integer)) }
    # Excess payment that was received for this invoice and credited to the customer’s `invoice_credit_balance`. This field is null until the payment is `paid`. Overpayment can happen when you attach more than one PaymentIntent to the invoice, and each of them succeeds. To avoid overpayment, cancel any PaymentIntents that you do not need before attaching more.
    attr_reader :amount_overpaid
    sig { returns(T.nilable(Integer)) }
    # Amount that was actually paid for this invoice, in cents (or local equivalent). This field is null until the payment is `paid`. This amount can be less than the `amount_requested` if the PaymentIntent’s `amount_received` is not sufficient to pay all of the invoices that it is attached to.
    attr_reader :amount_paid
    sig { returns(Integer) }
    # Amount intended to be paid toward this invoice, in cents (or local equivalent)
    attr_reader :amount_requested
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.any(String, Stripe::Invoice)) }
    # The invoice that was paid.
    attr_reader :invoice
    sig { returns(T.nilable(T::Boolean)) }
    # Stripe automatically creates a default InvoicePayment when the invoice is finalized, and keeps it synchronized with the invoice’s `amount_remaining`. The PaymentIntent associated with the default payment can’t be edited or canceled directly.
    attr_reader :is_default
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Payment) }
    # Attribute for field payment
    attr_reader :payment
    sig { returns(String) }
    # The status of the payment, one of `open`, `paid`, or `canceled`.
    attr_reader :status
    sig { returns(StatusTransitions) }
    # Attribute for field status_transitions
    attr_reader :status_transitions
  end
end