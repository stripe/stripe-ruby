# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentAttemptRecordReportFailedParams < ::Stripe::RequestParams
    class PaymentMethodDetails < ::Stripe::RequestParams
      class Card < ::Stripe::RequestParams
        class Checks < ::Stripe::RequestParams
          # The result of the check on the cardholder's address line 1.
          sig { returns(T.nilable(String)) }
          def address_line1_check; end
          sig { params(_address_line1_check: T.nilable(String)).returns(T.nilable(String)) }
          def address_line1_check=(_address_line1_check); end
          # The result of the check on the cardholder's postal code.
          sig { returns(T.nilable(String)) }
          def address_postal_code_check; end
          sig { params(_address_postal_code_check: T.nilable(String)).returns(T.nilable(String)) }
          def address_postal_code_check=(_address_postal_code_check); end
          # The result of the check on the card's CVC.
          sig { returns(T.nilable(String)) }
          def cvc_check; end
          sig { params(_cvc_check: T.nilable(String)).returns(T.nilable(String)) }
          def cvc_check=(_cvc_check); end
          sig {
            params(address_line1_check: T.nilable(String), address_postal_code_check: T.nilable(String), cvc_check: T.nilable(String)).void
           }
          def initialize(
            address_line1_check: nil,
            address_postal_code_check: nil,
            cvc_check: nil
          ); end
        end
        # Verification checks performed on the card.
        sig {
          returns(T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails::Card::Checks))
         }
        def checks; end
        sig {
          params(_checks: T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails::Card::Checks)).returns(T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails::Card::Checks))
         }
        def checks=(_checks); end
        sig {
          params(checks: T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails::Card::Checks)).void
         }
        def initialize(checks: nil); end
      end
      # Information about the card payment method used to make this payment.
      sig {
        returns(T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails::Card))
       }
      def card; end
      sig {
        params(_card: T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails::Card)).returns(T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails::Card))
       }
      def card=(_card); end
      # The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(card: T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails::Card), type: String).void
       }
      def initialize(card: nil, type: nil); end
    end
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
        returns(T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::ProcessorDetails::Custom))
       }
      def custom; end
      sig {
        params(_custom: T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::ProcessorDetails::Custom)).returns(T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::ProcessorDetails::Custom))
       }
      def custom=(_custom); end
      # The type of the processor details. An additional hash is included on processor_details with a name matching this value. It contains additional information specific to the processor.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(custom: T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::ProcessorDetails::Custom), type: String).void
       }
      def initialize(custom: nil, type: nil); end
    end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
    # When the reported payment failed. Measured in seconds since the Unix epoch.
    sig { returns(T.nilable(Integer)) }
    def failed_at; end
    sig { params(_failed_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def failed_at=(_failed_at); end
    # The failure code for this payment attempt. Must be one of `payment_method_customer_decline` or `payment_method_provider_unknown_outcome`.
    sig { returns(T.nilable(String)) }
    def failure_code; end
    sig { params(_failure_code: T.nilable(String)).returns(T.nilable(String)) }
    def failure_code=(_failure_code); end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
    def metadata; end
    sig {
      params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
     }
    def metadata=(_metadata); end
    # Payment evaluations associated with this reported payment.
    sig { returns(T.nilable(T::Array[String])) }
    def payment_evaluations; end
    sig {
      params(_payment_evaluations: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
     }
    def payment_evaluations=(_payment_evaluations); end
    # Information about the Payment Method debited for this payment.
    sig {
      returns(T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails))
     }
    def payment_method_details; end
    sig {
      params(_payment_method_details: T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails)).returns(T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails))
     }
    def payment_method_details=(_payment_method_details); end
    # Processor information for this payment.
    sig { returns(T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::ProcessorDetails)) }
    def processor_details; end
    sig {
      params(_processor_details: T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::ProcessorDetails)).returns(T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::ProcessorDetails))
     }
    def processor_details=(_processor_details); end
    sig {
      params(expand: T.nilable(T::Array[String]), failed_at: T.nilable(Integer), failure_code: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_evaluations: T.nilable(T::Array[String]), payment_method_details: T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::PaymentMethodDetails), processor_details: T.nilable(::Stripe::PaymentAttemptRecordReportFailedParams::ProcessorDetails)).void
     }
    def initialize(
      expand: nil,
      failed_at: nil,
      failure_code: nil,
      metadata: nil,
      payment_evaluations: nil,
      payment_method_details: nil,
      processor_details: nil
    ); end
  end
end