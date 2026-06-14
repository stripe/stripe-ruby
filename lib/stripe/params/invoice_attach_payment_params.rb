# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoiceAttachPaymentParams < ::Stripe::RequestParams
    class PaymentRecordData < ::Stripe::RequestParams
      # The amount that was paid out of band.
      attr_accessor :amount
      # The currency that was paid out of band.
      attr_accessor :currency
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The type of money movement for this out of band payment record.
      attr_accessor :money_movement_type
      # The timestamp when this out of band payment was paid.
      attr_accessor :paid_at
      # The reference for this out of band payment record.
      attr_accessor :payment_reference

      def initialize(
        amount: nil,
        currency: nil,
        metadata: nil,
        money_movement_type: nil,
        paid_at: nil,
        payment_reference: nil
      )
        @amount = amount
        @currency = currency
        @metadata = metadata
        @money_movement_type = money_movement_type
        @paid_at = paid_at
        @payment_reference = payment_reference
      end
    end
    # The portion of the `amount` on the PaymentIntent or out of band payment to apply to this invoice. It defaults to the entire amount.
    attr_accessor :amount_requested
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The ID of the PaymentIntent to attach to the invoice.
    attr_accessor :payment_intent
    # The ID of the PaymentRecord to attach to the invoice.
    attr_accessor :payment_record
    # The PaymentRecord data for attaching an out of band payment to the invoice.
    attr_accessor :payment_record_data

    def initialize(
      amount_requested: nil,
      expand: nil,
      payment_intent: nil,
      payment_record: nil,
      payment_record_data: nil
    )
      @amount_requested = amount_requested
      @expand = expand
      @payment_intent = payment_intent
      @payment_record = payment_record
      @payment_record_data = payment_record_data
    end
  end
end
