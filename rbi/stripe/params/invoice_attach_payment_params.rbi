# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class InvoiceAttachPaymentParams < ::Stripe::RequestParams
    class PaymentRecordData < ::Stripe::RequestParams
      # The amount that was paid out of band.
      sig { returns(Integer) }
      def amount; end
      sig { params(_amount: Integer).returns(Integer) }
      def amount=(_amount); end
      # The currency that was paid out of band.
      sig { returns(String) }
      def currency; end
      sig { params(_currency: String).returns(String) }
      def currency=(_currency); end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # The type of money movement for this out of band payment record.
      sig { returns(String) }
      def money_movement_type; end
      sig { params(_money_movement_type: String).returns(String) }
      def money_movement_type=(_money_movement_type); end
      # The timestamp when this out of band payment was paid.
      sig { returns(T.nilable(Integer)) }
      def paid_at; end
      sig { params(_paid_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def paid_at=(_paid_at); end
      # The reference for this out of band payment record.
      sig { returns(T.nilable(String)) }
      def payment_reference; end
      sig { params(_payment_reference: T.nilable(String)).returns(T.nilable(String)) }
      def payment_reference=(_payment_reference); end
      sig {
        params(amount: Integer, currency: String, metadata: T.nilable(T.any(String, T::Hash[String, String])), money_movement_type: String, paid_at: T.nilable(Integer), payment_reference: T.nilable(String)).void
       }
      def initialize(
        amount: nil,
        currency: nil,
        metadata: nil,
        money_movement_type: nil,
        paid_at: nil,
        payment_reference: nil
      ); end
    end
    # The portion of the `amount` on the PaymentIntent or out of band payment to apply to this invoice. It defaults to the entire amount.
    sig { returns(T.nilable(Integer)) }
    def amount_requested; end
    sig { params(_amount_requested: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def amount_requested=(_amount_requested); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # The ID of the PaymentIntent to attach to the invoice.
    sig { returns(T.nilable(String)) }
    def payment_intent; end
    sig { params(_payment_intent: T.nilable(String)).returns(T.nilable(String)) }
    def payment_intent=(_payment_intent); end
    # The ID of the PaymentRecord to attach to the invoice.
    sig { returns(T.nilable(String)) }
    def payment_record; end
    sig { params(_payment_record: T.nilable(String)).returns(T.nilable(String)) }
    def payment_record=(_payment_record); end
    # The PaymentRecord data for attaching an out of band payment to the invoice.
    sig { returns(T.nilable(::Stripe::InvoiceAttachPaymentParams::PaymentRecordData)) }
    def payment_record_data; end
    sig {
      params(_payment_record_data: T.nilable(::Stripe::InvoiceAttachPaymentParams::PaymentRecordData)).returns(T.nilable(::Stripe::InvoiceAttachPaymentParams::PaymentRecordData))
     }
    def payment_record_data=(_payment_record_data); end
    sig {
      params(amount_requested: T.nilable(Integer), expand: T.nilable(T::Array[String]), payment_intent: T.nilable(String), payment_record: T.nilable(String), payment_record_data: T.nilable(::Stripe::InvoiceAttachPaymentParams::PaymentRecordData)).void
     }
    def initialize(
      amount_requested: nil,
      expand: nil,
      payment_intent: nil,
      payment_record: nil,
      payment_record_data: nil
    ); end
  end
end