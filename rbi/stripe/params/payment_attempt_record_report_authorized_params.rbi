# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentAttemptRecordReportAuthorizedParams < ::Stripe::RequestParams
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
        class ThreeDSecure < ::Stripe::RequestParams
          # For authenticated transactions: Indicates how the issuing bank authenticated the customer.
          sig { returns(T.nilable(String)) }
          def authentication_flow; end
          sig { params(_authentication_flow: T.nilable(String)).returns(T.nilable(String)) }
          def authentication_flow=(_authentication_flow); end
          # The Electronic Commerce Indicator (ECI). A protocol-level field indicating what degree of authentication was performed.
          sig { returns(T.nilable(String)) }
          def electronic_commerce_indicator; end
          sig {
            params(_electronic_commerce_indicator: T.nilable(String)).returns(T.nilable(String))
           }
          def electronic_commerce_indicator=(_electronic_commerce_indicator); end
          # The exemption requested via 3DS and accepted by the issuer at authentication time.
          sig { returns(T.nilable(String)) }
          def exemption_indicator; end
          sig { params(_exemption_indicator: T.nilable(String)).returns(T.nilable(String)) }
          def exemption_indicator=(_exemption_indicator); end
          # Indicates the outcome of 3D Secure authentication.
          sig { returns(String) }
          def result; end
          sig { params(_result: String).returns(String) }
          def result=(_result); end
          # Additional information about why 3D Secure succeeded or failed, based on the `result`.
          sig { returns(T.nilable(String)) }
          def result_reason; end
          sig { params(_result_reason: T.nilable(String)).returns(T.nilable(String)) }
          def result_reason=(_result_reason); end
          # The version of 3D Secure that was used.
          sig { returns(String) }
          def version; end
          sig { params(_version: String).returns(String) }
          def version=(_version); end
          sig {
            params(authentication_flow: T.nilable(String), electronic_commerce_indicator: T.nilable(String), exemption_indicator: T.nilable(String), result: String, result_reason: T.nilable(String), version: String).void
           }
          def initialize(
            authentication_flow: nil,
            electronic_commerce_indicator: nil,
            exemption_indicator: nil,
            result: nil,
            result_reason: nil,
            version: nil
          ); end
        end
        # Verification checks performed on the card.
        sig {
          returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card::Checks))
         }
        def checks; end
        sig {
          params(_checks: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card::Checks)).returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card::Checks))
         }
        def checks=(_checks); end
        # Populated if this transaction used 3D Secure authentication.
        sig {
          returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card::ThreeDSecure))
         }
        def three_d_secure; end
        sig {
          params(_three_d_secure: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card::ThreeDSecure)).returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card::ThreeDSecure))
         }
        def three_d_secure=(_three_d_secure); end
        sig {
          params(checks: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card::Checks), three_d_secure: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card::ThreeDSecure)).void
         }
        def initialize(checks: nil, three_d_secure: nil); end
      end
      # Information about the card payment method used to make this payment.
      sig {
        returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card))
       }
      def card; end
      sig {
        params(_card: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card)).returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card))
       }
      def card=(_card); end
      # The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(card: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails::Card), type: String).void
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
        returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::ProcessorDetails::Custom))
       }
      def custom; end
      sig {
        params(_custom: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::ProcessorDetails::Custom)).returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::ProcessorDetails::Custom))
       }
      def custom=(_custom); end
      # The type of the processor details. An additional hash is included on processor_details with a name matching this value. It contains additional information specific to the processor.
      sig { returns(String) }
      def type; end
      sig { params(_type: String).returns(String) }
      def type=(_type); end
      sig {
        params(custom: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::ProcessorDetails::Custom), type: String).void
       }
      def initialize(custom: nil, type: nil); end
    end
    # When the reported payment was authorized. Measured in seconds since the Unix epoch.
    sig { returns(T.nilable(Integer)) }
    def authorized_at; end
    sig { params(_authorized_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
    def authorized_at=(_authorized_at); end
    # Specifies which fields in the response should be expanded.
    sig { returns(T.nilable(T::Array[String])) }
    def expand; end
    sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
    def expand=(_expand); end
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
      returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails))
     }
    def payment_method_details; end
    sig {
      params(_payment_method_details: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails)).returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails))
     }
    def payment_method_details=(_payment_method_details); end
    # Processor information for this payment.
    sig {
      returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::ProcessorDetails))
     }
    def processor_details; end
    sig {
      params(_processor_details: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::ProcessorDetails)).returns(T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::ProcessorDetails))
     }
    def processor_details=(_processor_details); end
    sig {
      params(authorized_at: T.nilable(Integer), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_evaluations: T.nilable(T::Array[String]), payment_method_details: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::PaymentMethodDetails), processor_details: T.nilable(::Stripe::PaymentAttemptRecordReportAuthorizedParams::ProcessorDetails)).void
     }
    def initialize(
      authorized_at: nil,
      expand: nil,
      metadata: nil,
      payment_evaluations: nil,
      payment_method_details: nil,
      processor_details: nil
    ); end
  end
end