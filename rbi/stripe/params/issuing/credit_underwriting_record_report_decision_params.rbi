# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class CreditUnderwritingRecordReportDecisionParams < ::Stripe::RequestParams
      class Decision < ::Stripe::RequestParams
        class ApplicationRejected < ::Stripe::RequestParams
          # Details about the `reasons.other` when present.
          sig { returns(T.nilable(String)) }
          def reason_other_explanation; end
          sig { params(_reason_other_explanation: T.nilable(String)).returns(T.nilable(String)) }
          def reason_other_explanation=(_reason_other_explanation); end
          # List of reasons why the application was rejected, up to 4 reasons, in order of importance.
          sig { returns(T::Array[String]) }
          def reasons; end
          sig { params(_reasons: T::Array[String]).returns(T::Array[String]) }
          def reasons=(_reasons); end
          sig {
            params(reason_other_explanation: T.nilable(String), reasons: T::Array[String]).void
           }
          def initialize(reason_other_explanation: nil, reasons: nil); end
        end
        class CreditLimitApproved < ::Stripe::RequestParams
          # The credit approved, in the currency of the account and [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # The currency of the credit approved, will default to the Account's Issuing currency.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          sig { params(amount: Integer, currency: T.nilable(String)).void }
          def initialize(amount: nil, currency: nil); end
        end
        # Details about the application rejection.
        sig {
          returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision::ApplicationRejected))
         }
        def application_rejected; end
        sig {
          params(_application_rejected: T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision::ApplicationRejected)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision::ApplicationRejected))
         }
        def application_rejected=(_application_rejected); end
        # Details about the credit limit approved. An approved credit limit is required before you can set a `credit_limit_amount` in the [CreditPolicy API](https://docs.stripe.com/api/issuing/credit_policy/)
        sig {
          returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision::CreditLimitApproved))
         }
        def credit_limit_approved; end
        sig {
          params(_credit_limit_approved: T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision::CreditLimitApproved)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision::CreditLimitApproved))
         }
        def credit_limit_approved=(_credit_limit_approved); end
        # Outcome of the decision.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(application_rejected: T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision::ApplicationRejected), credit_limit_approved: T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision::CreditLimitApproved), type: String).void
         }
        def initialize(application_rejected: nil, credit_limit_approved: nil, type: nil); end
      end
      class UnderwritingException < ::Stripe::RequestParams
        # Written explanation for the exception.
        sig { returns(String) }
        def explanation; end
        sig { params(_explanation: String).returns(String) }
        def explanation=(_explanation); end
        # The decision before the exception was applied.
        sig { returns(String) }
        def original_decision_type; end
        sig { params(_original_decision_type: String).returns(String) }
        def original_decision_type=(_original_decision_type); end
        sig { params(explanation: String, original_decision_type: String).void }
        def initialize(explanation: nil, original_decision_type: nil); end
      end
      # Date when a decision was made.
      sig { returns(Integer) }
      def decided_at; end
      sig { params(_decided_at: Integer).returns(Integer) }
      def decided_at=(_decided_at); end
      # Details about the decision.
      sig { returns(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision) }
      def decision; end
      sig {
        params(_decision: ::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision).returns(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision)
       }
      def decision=(_decision); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # File containing regulatory reporting data for the decision. Required if you are subject to this [reporting requirement](https://docs.stripe.com/issuing/credit/report-required-regulatory-data-for-credit-decisions).
      sig { returns(T.nilable(String)) }
      def regulatory_reporting_file; end
      sig { params(_regulatory_reporting_file: T.nilable(String)).returns(T.nilable(String)) }
      def regulatory_reporting_file=(_regulatory_reporting_file); end
      # If an exception to the usual underwriting criteria was made for this decision, details about the exception must be provided. Exceptions should only be granted in rare circumstances, in consultation with Stripe Compliance.
      sig {
        returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::UnderwritingException))
       }
      def underwriting_exception; end
      sig {
        params(_underwriting_exception: T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::UnderwritingException)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::UnderwritingException))
       }
      def underwriting_exception=(_underwriting_exception); end
      sig {
        params(decided_at: Integer, decision: ::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::Decision, expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), regulatory_reporting_file: T.nilable(String), underwriting_exception: T.nilable(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams::UnderwritingException)).void
       }
      def initialize(
        decided_at: nil,
        decision: nil,
        expand: nil,
        metadata: nil,
        regulatory_reporting_file: nil,
        underwriting_exception: nil
      ); end
    end
  end
end