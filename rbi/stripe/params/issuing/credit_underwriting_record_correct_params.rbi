# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class CreditUnderwritingRecordCorrectParams < Stripe::RequestParams
      class Application < Stripe::RequestParams
        # The channel through which the applicant has submitted their application. Defaults to `online`.
        sig { returns(T.nilable(String)) }
        def application_method; end
        sig { params(_application_method: T.nilable(String)).returns(T.nilable(String)) }
        def application_method=(_application_method); end
        # Scope of demand made by the applicant.
        sig { returns(String) }
        def purpose; end
        sig { params(_purpose: String).returns(String) }
        def purpose=(_purpose); end
        # Date when the applicant submitted their application.
        sig { returns(Integer) }
        def submitted_at; end
        sig { params(_submitted_at: Integer).returns(Integer) }
        def submitted_at=(_submitted_at); end
        sig {
          params(application_method: T.nilable(String), purpose: String, submitted_at: Integer).void
         }
        def initialize(application_method: nil, purpose: nil, submitted_at: nil); end
      end
      class CreditUser < Stripe::RequestParams
        # Email of the applicant or accountholder.
        sig { returns(String) }
        def email; end
        sig { params(_email: String).returns(String) }
        def email=(_email); end
        # Full name of the company or person.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        sig { params(email: String, name: String).void }
        def initialize(email: nil, name: nil); end
      end
      class Decision < Stripe::RequestParams
        class ApplicationRejected < Stripe::RequestParams
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
        class CreditLimitApproved < Stripe::RequestParams
          # The credit approved, in the currency of the account and [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
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
        class CreditLimitDecreased < Stripe::RequestParams
          # The credit approved, in the currency of the account and [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # The currency of the credit approved, will default to the Account's Issuing currency.
          sig { returns(T.nilable(String)) }
          def currency; end
          sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_currency); end
          # Details about the `reasons.other` when present.
          sig { returns(T.nilable(String)) }
          def reason_other_explanation; end
          sig { params(_reason_other_explanation: T.nilable(String)).returns(T.nilable(String)) }
          def reason_other_explanation=(_reason_other_explanation); end
          # List of reasons why the existing credit was decreased, up to 4 reasons, in order of importance.
          sig { returns(T::Array[String]) }
          def reasons; end
          sig { params(_reasons: T::Array[String]).returns(T::Array[String]) }
          def reasons=(_reasons); end
          sig {
            params(amount: Integer, currency: T.nilable(String), reason_other_explanation: T.nilable(String), reasons: T::Array[String]).void
           }
          def initialize(
            amount: nil,
            currency: nil,
            reason_other_explanation: nil,
            reasons: nil
          ); end
        end
        class CreditLineClosed < Stripe::RequestParams
          # Details about the `reasons.other` when present.
          sig { returns(T.nilable(String)) }
          def reason_other_explanation; end
          sig { params(_reason_other_explanation: T.nilable(String)).returns(T.nilable(String)) }
          def reason_other_explanation=(_reason_other_explanation); end
          # List of reasons why the credit line was closed, up to 4 reasons, in order of importance.
          sig { returns(T::Array[String]) }
          def reasons; end
          sig { params(_reasons: T::Array[String]).returns(T::Array[String]) }
          def reasons=(_reasons); end
          sig {
            params(reason_other_explanation: T.nilable(String), reasons: T::Array[String]).void
           }
          def initialize(reason_other_explanation: nil, reasons: nil); end
        end
        # Details about the application rejection.
        sig {
          returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::ApplicationRejected))
         }
        def application_rejected; end
        sig {
          params(_application_rejected: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::ApplicationRejected)).returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::ApplicationRejected))
         }
        def application_rejected=(_application_rejected); end
        # Details about the credit limit approved. An approved credit limit is required before you can set a `credit_limit_amount` in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy/)
        sig {
          returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLimitApproved))
         }
        def credit_limit_approved; end
        sig {
          params(_credit_limit_approved: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLimitApproved)).returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLimitApproved))
         }
        def credit_limit_approved=(_credit_limit_approved); end
        # Details about the credit limit decreased.
        sig {
          returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLimitDecreased))
         }
        def credit_limit_decreased; end
        sig {
          params(_credit_limit_decreased: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLimitDecreased)).returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLimitDecreased))
         }
        def credit_limit_decreased=(_credit_limit_decreased); end
        # Details about the credit line closed.
        sig {
          returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLineClosed))
         }
        def credit_line_closed; end
        sig {
          params(_credit_line_closed: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLineClosed)).returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLineClosed))
         }
        def credit_line_closed=(_credit_line_closed); end
        # Outcome of the decision.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(application_rejected: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::ApplicationRejected), credit_limit_approved: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLimitApproved), credit_limit_decreased: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLimitDecreased), credit_line_closed: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision::CreditLineClosed), type: String).void
         }
        def initialize(
          application_rejected: nil,
          credit_limit_approved: nil,
          credit_limit_decreased: nil,
          credit_line_closed: nil,
          type: nil
        ); end
      end
      class UnderwritingException < Stripe::RequestParams
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
      # Details about the application submission.
      sig { returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Application)) }
      def application; end
      sig {
        params(_application: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Application)).returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Application))
       }
      def application=(_application); end
      # Information about the company or person applying or holding the account.
      sig { returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::CreditUser)) }
      def credit_user; end
      sig {
        params(_credit_user: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::CreditUser)).returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::CreditUser))
       }
      def credit_user=(_credit_user); end
      # Date when a decision was made.
      sig { returns(T.nilable(Integer)) }
      def decided_at; end
      sig { params(_decided_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def decided_at=(_decided_at); end
      # Details about the decision.
      sig { returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision)) }
      def decision; end
      sig {
        params(_decision: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision)).returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision))
       }
      def decision=(_decision); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def metadata=(_metadata); end
      # File containing regulatory reporting data for the decision. Required if you are subject to this [reporting requirement](https://stripe.com/docs/issuing/credit/report-required-regulatory-data-for-credit-decisions). Optional if previously provided and no changes are needed.
      sig { returns(T.nilable(String)) }
      def regulatory_reporting_file; end
      sig { params(_regulatory_reporting_file: T.nilable(String)).returns(T.nilable(String)) }
      def regulatory_reporting_file=(_regulatory_reporting_file); end
      # If an exception to the usual underwriting criteria was made for this decision, details about the exception must be provided. Exceptions should only be granted in rare circumstances, in consultation with Stripe Compliance.
      sig {
        returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::UnderwritingException))
       }
      def underwriting_exception; end
      sig {
        params(_underwriting_exception: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::UnderwritingException)).returns(T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::UnderwritingException))
       }
      def underwriting_exception=(_underwriting_exception); end
      sig {
        params(application: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Application), credit_user: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::CreditUser), decided_at: T.nilable(Integer), decision: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::Decision), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), regulatory_reporting_file: T.nilable(String), underwriting_exception: T.nilable(Issuing::CreditUnderwritingRecordCorrectParams::UnderwritingException)).void
       }
      def initialize(
        application: nil,
        credit_user: nil,
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