# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    # Every time an applicant submits an application for a Charge Card product your platform offers, or every time your platform takes a proactive credit decision on an existing account, you must record the decision by creating a new `CreditUnderwritingRecord` object on a connected account.
    #
    # [Follow the guide](https://stripe.com/docs/issuing/credit/report-credit-decisions-and-manage-aans) to learn about your requirements as a platform.
    class CreditUnderwritingRecord < APIResource
      class Application < Stripe::StripeObject
        # The channel through which the applicant has submitted their application.
        sig { returns(String) }
        def application_method; end
        # Scope of demand made by the applicant.
        sig { returns(String) }
        def purpose; end
        # Date when the applicant submitted their application.
        sig { returns(Integer) }
        def submitted_at; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class CreditUser < Stripe::StripeObject
        # Email of the applicant or accountholder.
        sig { returns(String) }
        def email; end
        # Full name of the company or person.
        sig { returns(String) }
        def name; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Decision < Stripe::StripeObject
        class ApplicationRejected < Stripe::StripeObject
          # Details about the `reasons.other` when present.
          sig { returns(T.nilable(String)) }
          def reason_other_explanation; end
          # List of reasons why the application was rejected up to 4 reasons, in order of importance.
          sig { returns(T::Array[String]) }
          def reasons; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CreditLimitApproved < Stripe::StripeObject
          # Credit amount approved. An approved credit limit is required before you can set a amount in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy).
          sig { returns(Integer) }
          def amount; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CreditLimitDecreased < Stripe::StripeObject
          # Credit amount approved after decrease. An approved credit limit is required before you can set a amount in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy).
          sig { returns(Integer) }
          def amount; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          # Details about the `reasons.other` when present.
          sig { returns(T.nilable(String)) }
          def reason_other_explanation; end
          # List of reasons why the existing credit was decreased, up to 4 reasons, in order of importance.
          sig { returns(T::Array[String]) }
          def reasons; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CreditLineClosed < Stripe::StripeObject
          # Details about the `reasons.other` when present.
          sig { returns(T.nilable(String)) }
          def reason_other_explanation; end
          # List of reasons why the existing account was closed, up to 4 reasons, in order of importance.
          sig { returns(T::Array[String]) }
          def reasons; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Details about a decision application_rejected.
        sig { returns(T.nilable(ApplicationRejected)) }
        def application_rejected; end
        # Details about a decision credit_limit_approved.
        sig { returns(T.nilable(CreditLimitApproved)) }
        def credit_limit_approved; end
        # Details about a decision credit_limit_decreased.
        sig { returns(T.nilable(CreditLimitDecreased)) }
        def credit_limit_decreased; end
        # Details about a decision credit_line_closed.
        sig { returns(T.nilable(CreditLineClosed)) }
        def credit_line_closed; end
        # Outcome of the decision.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {
            application_rejected: ApplicationRejected,
            credit_limit_approved: CreditLimitApproved,
            credit_limit_decreased: CreditLimitDecreased,
            credit_line_closed: CreditLineClosed,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class UnderwritingException < Stripe::StripeObject
        # Written explanation for the exception.
        sig { returns(String) }
        def explanation; end
        # The decision before the exception was applied.
        sig { returns(String) }
        def original_decision_type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # For decisions triggered by an application, details about the submission.
      sig { returns(T.nilable(Application)) }
      def application; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # The event that triggered the underwriting.
      sig { returns(String) }
      def created_from; end
      # Attribute for field credit_user
      sig { returns(CreditUser) }
      def credit_user; end
      # Date when a decision was made.
      sig { returns(T.nilable(Integer)) }
      def decided_at; end
      # Details about the decision.
      sig { returns(T.nilable(Decision)) }
      def decision; end
      # For underwriting initiated by an application, a decision must be taken 30 days after the submission.
      sig { returns(T.nilable(Integer)) }
      def decision_deadline; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # File containing regulatory reporting data for the decision. Required if you are subject to this [reporting requirement](https://stripe.com/docs/issuing/credit/report-required-regulatory-data-for-credit-decisions).
      sig { returns(T.nilable(String)) }
      def regulatory_reporting_file; end
      # If an exception to the usual underwriting criteria was made for this application, details about the exception must be provided. Exceptions should only be granted in rare circumstances, in consultation with Stripe Compliance.
      sig { returns(T.nilable(UnderwritingException)) }
      def underwriting_exception; end
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
      end
      class CorrectParams < Stripe::RequestParams
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
            returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::ApplicationRejected))
           }
          def application_rejected; end
          sig {
            params(_application_rejected: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::ApplicationRejected)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::ApplicationRejected))
           }
          def application_rejected=(_application_rejected); end
          # Details about the credit limit approved. An approved credit limit is required before you can set a `credit_limit_amount` in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy/)
          sig {
            returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLimitApproved))
           }
          def credit_limit_approved; end
          sig {
            params(_credit_limit_approved: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLimitApproved)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLimitApproved))
           }
          def credit_limit_approved=(_credit_limit_approved); end
          # Details about the credit limit decreased.
          sig {
            returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLimitDecreased))
           }
          def credit_limit_decreased; end
          sig {
            params(_credit_limit_decreased: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLimitDecreased)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLimitDecreased))
           }
          def credit_limit_decreased=(_credit_limit_decreased); end
          # Details about the credit line closed.
          sig {
            returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLineClosed))
           }
          def credit_line_closed; end
          sig {
            params(_credit_line_closed: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLineClosed)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLineClosed))
           }
          def credit_line_closed=(_credit_line_closed); end
          # Outcome of the decision.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(application_rejected: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::ApplicationRejected), credit_limit_approved: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLimitApproved), credit_limit_decreased: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLimitDecreased), credit_line_closed: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision::CreditLineClosed), type: String).void
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
        sig {
          returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Application))
         }
        def application; end
        sig {
          params(_application: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Application)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Application))
         }
        def application=(_application); end
        # Information about the company or person applying or holding the account.
        sig {
          returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::CreditUser))
         }
        def credit_user; end
        sig {
          params(_credit_user: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::CreditUser)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::CreditUser))
         }
        def credit_user=(_credit_user); end
        # Date when a decision was made.
        sig { returns(T.nilable(Integer)) }
        def decided_at; end
        sig { params(_decided_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def decided_at=(_decided_at); end
        # Details about the decision.
        sig {
          returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision))
         }
        def decision; end
        sig {
          params(_decision: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision))
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
          returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::UnderwritingException))
         }
        def underwriting_exception; end
        sig {
          params(_underwriting_exception: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::UnderwritingException)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::UnderwritingException))
         }
        def underwriting_exception=(_underwriting_exception); end
        sig {
          params(application: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Application), credit_user: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::CreditUser), decided_at: T.nilable(Integer), decision: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::Decision), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), regulatory_reporting_file: T.nilable(String), underwriting_exception: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams::UnderwritingException)).void
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
      class ReportDecisionParams < Stripe::RequestParams
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
          # Details about the application rejection.
          sig {
            returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision::ApplicationRejected))
           }
          def application_rejected; end
          sig {
            params(_application_rejected: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision::ApplicationRejected)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision::ApplicationRejected))
           }
          def application_rejected=(_application_rejected); end
          # Details about the credit limit approved. An approved credit limit is required before you can set a `credit_limit_amount` in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy/)
          sig {
            returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision::CreditLimitApproved))
           }
          def credit_limit_approved; end
          sig {
            params(_credit_limit_approved: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision::CreditLimitApproved)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision::CreditLimitApproved))
           }
          def credit_limit_approved=(_credit_limit_approved); end
          # Outcome of the decision.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(application_rejected: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision::ApplicationRejected), credit_limit_approved: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision::CreditLimitApproved), type: String).void
           }
          def initialize(application_rejected: nil, credit_limit_approved: nil, type: nil); end
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
        # Date when a decision was made.
        sig { returns(Integer) }
        def decided_at; end
        sig { params(_decided_at: Integer).returns(Integer) }
        def decided_at=(_decided_at); end
        # Details about the decision.
        sig { returns(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision) }
        def decision; end
        sig {
          params(_decision: ::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision).returns(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision)
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
        # File containing regulatory reporting data for the decision. Required if you are subject to this [reporting requirement](https://stripe.com/docs/issuing/credit/report-required-regulatory-data-for-credit-decisions).
        sig { returns(T.nilable(String)) }
        def regulatory_reporting_file; end
        sig { params(_regulatory_reporting_file: T.nilable(String)).returns(T.nilable(String)) }
        def regulatory_reporting_file=(_regulatory_reporting_file); end
        # If an exception to the usual underwriting criteria was made for this decision, details about the exception must be provided. Exceptions should only be granted in rare circumstances, in consultation with Stripe Compliance.
        sig {
          returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::UnderwritingException))
         }
        def underwriting_exception; end
        sig {
          params(_underwriting_exception: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::UnderwritingException)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::UnderwritingException))
         }
        def underwriting_exception=(_underwriting_exception); end
        sig {
          params(decided_at: Integer, decision: ::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::Decision, expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), regulatory_reporting_file: T.nilable(String), underwriting_exception: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams::UnderwritingException)).void
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
      class CreateFromApplicationParams < Stripe::RequestParams
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
        # Details about the application submission.
        sig {
          returns(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromApplicationParams::Application)
         }
        def application; end
        sig {
          params(_application: ::Stripe::Issuing::CreditUnderwritingRecord::CreateFromApplicationParams::Application).returns(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromApplicationParams::Application)
         }
        def application=(_application); end
        # Information about the company or person applying or holding the account.
        sig {
          returns(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromApplicationParams::CreditUser)
         }
        def credit_user; end
        sig {
          params(_credit_user: ::Stripe::Issuing::CreditUnderwritingRecord::CreateFromApplicationParams::CreditUser).returns(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromApplicationParams::CreditUser)
         }
        def credit_user=(_credit_user); end
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
        sig {
          params(application: ::Stripe::Issuing::CreditUnderwritingRecord::CreateFromApplicationParams::Application, credit_user: ::Stripe::Issuing::CreditUnderwritingRecord::CreateFromApplicationParams::CreditUser, expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(application: nil, credit_user: nil, expand: nil, metadata: nil); end
      end
      class CreateFromProactiveReviewParams < Stripe::RequestParams
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
          # Details about the credit limit approved. An approved credit limit is required before you can set a `credit_limit_amount` in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy/)
          sig {
            returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLimitApproved))
           }
          def credit_limit_approved; end
          sig {
            params(_credit_limit_approved: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLimitApproved)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLimitApproved))
           }
          def credit_limit_approved=(_credit_limit_approved); end
          # Details about the credit limit decreased.
          sig {
            returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLimitDecreased))
           }
          def credit_limit_decreased; end
          sig {
            params(_credit_limit_decreased: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLimitDecreased)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLimitDecreased))
           }
          def credit_limit_decreased=(_credit_limit_decreased); end
          # Details about the credit line closed.
          sig {
            returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLineClosed))
           }
          def credit_line_closed; end
          sig {
            params(_credit_line_closed: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLineClosed)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLineClosed))
           }
          def credit_line_closed=(_credit_line_closed); end
          # Outcome of the decision.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig {
            params(credit_limit_approved: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLimitApproved), credit_limit_decreased: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLimitDecreased), credit_line_closed: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision::CreditLineClosed), type: String).void
           }
          def initialize(
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
        # Information about the company or person applying or holding the account.
        sig {
          returns(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::CreditUser)
         }
        def credit_user; end
        sig {
          params(_credit_user: ::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::CreditUser).returns(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::CreditUser)
         }
        def credit_user=(_credit_user); end
        # Date when a decision was made.
        sig { returns(Integer) }
        def decided_at; end
        sig { params(_decided_at: Integer).returns(Integer) }
        def decided_at=(_decided_at); end
        # Details about the decision.
        sig {
          returns(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision)
         }
        def decision; end
        sig {
          params(_decision: ::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision).returns(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision)
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
        # File containing regulatory reporting data for the decision. Required if you are subject to this [reporting requirement](https://stripe.com/docs/issuing/credit/report-required-regulatory-data-for-credit-decisions).
        sig { returns(T.nilable(String)) }
        def regulatory_reporting_file; end
        sig { params(_regulatory_reporting_file: T.nilable(String)).returns(T.nilable(String)) }
        def regulatory_reporting_file=(_regulatory_reporting_file); end
        # If an exception to the usual underwriting criteria was made for this decision, details about the exception must be provided. Exceptions should only be granted in rare circumstances, in consultation with Stripe Compliance.
        sig {
          returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::UnderwritingException))
         }
        def underwriting_exception; end
        sig {
          params(_underwriting_exception: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::UnderwritingException)).returns(T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::UnderwritingException))
         }
        def underwriting_exception=(_underwriting_exception); end
        sig {
          params(credit_user: ::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::CreditUser, decided_at: Integer, decision: ::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::Decision, expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), regulatory_reporting_file: T.nilable(String), underwriting_exception: T.nilable(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams::UnderwritingException)).void
         }
        def initialize(
          credit_user: nil,
          decided_at: nil,
          decision: nil,
          expand: nil,
          metadata: nil,
          regulatory_reporting_file: nil,
          underwriting_exception: nil
        ); end
      end
      # Update a CreditUnderwritingRecord object to correct mistakes.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def correct(params = {}, opts = {}); end

      # Update a CreditUnderwritingRecord object to correct mistakes.
      sig {
        params(credit_underwriting_record: String, params: T.any(::Stripe::Issuing::CreditUnderwritingRecord::CorrectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def self.correct(credit_underwriting_record, params = {}, opts = {}); end

      # Creates a CreditUnderwritingRecord object with information about a credit application submission.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromApplicationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def self.create_from_application(params = {}, opts = {}); end

      # Creates a CreditUnderwritingRecord object from an underwriting decision coming from a proactive review of an existing accountholder.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecord::CreateFromProactiveReviewParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def self.create_from_proactive_review(params = {}, opts = {}); end

      # Retrieves a list of CreditUnderwritingRecord objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecord::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Update a CreditUnderwritingRecord object from a decision made on a credit application.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def report_decision(params = {}, opts = {}); end

      # Update a CreditUnderwritingRecord object from a decision made on a credit application.
      sig {
        params(credit_underwriting_record: String, params: T.any(::Stripe::Issuing::CreditUnderwritingRecord::ReportDecisionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def self.report_decision(credit_underwriting_record, params = {}, opts = {}); end
    end
  end
end