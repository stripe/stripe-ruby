# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentRecordReportPaymentAttemptGuaranteedParams < ::Stripe::RequestParams
    class ProcessorDetails < ::Stripe::RequestParams
      class Custom < ::Stripe::RequestParams
        # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
        sig { returns(String) }
        def payment_reference; end
        sig { params(_payment_reference: String).returns(String) }
        def payment_reference=(_payment_reference); end
        sig { params(payment_reference: String).void }
        def initialize(payment_reference: nil); end
      end
      # Information about the custom processor used to make this payment.
      sig {
        returns(T.nilable(::Stripe::PaymentRecordReportPaymentAttemptGuaranteedParams::ProcessorDetails::Custom))
       }
      def custom; end
      sig {
        params(_custom: T.nilable(::Stripe::PaymentRecordReportPaymentAttemptGuaranteedParams::ProcessorDetails::Custom)).returns(T.nilable(::Stripe::PaymentRecordReportPaymentAttemptGuaranteedParams::ProcessorDetails::Custom))
       }
      def custom=(_custom); end
      # The type of the processor details. An additional hash is included on processor_details with a name matching this value. It contains additional information specific to the processor.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(custom: T.nilable(::Stripe::PaymentRecordReportPaymentAttemptGuaranteedParams::ProcessorDetails::Custom), type: String).void
       }
      def initialize(custom: nil, type: nil); end
    end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
    sig { returns(T.nilable(Integer)) }
    def guaranteed_at; end
    sig { params(_guaranteed_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def guaranteed_at=(_guaranteed_at); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
     }
    def metadata=(_metadata); end
    # Processor information for this payment.
    sig {
      returns(T.nilable(::Stripe::PaymentRecordReportPaymentAttemptGuaranteedParams::ProcessorDetails))
     }
    def processor_details; end
    sig {
      params(_processor_details: T.nilable(::Stripe::PaymentRecordReportPaymentAttemptGuaranteedParams::ProcessorDetails)).returns(T.nilable(::Stripe::PaymentRecordReportPaymentAttemptGuaranteedParams::ProcessorDetails))
     }
    def processor_details=(_processor_details); end
    sig {
      params(expand: T.nilable(T::Array[String]), guaranteed_at: T.nilable(Integer), metadata: T.nilable(T.any(String, T::Hash[String, String])), processor_details: T.nilable(::Stripe::PaymentRecordReportPaymentAttemptGuaranteedParams::ProcessorDetails)).void
     }
    def initialize(expand: nil, guaranteed_at: nil, metadata: nil, processor_details: nil); end
  end
end