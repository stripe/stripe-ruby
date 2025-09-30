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
      # Update a CreditUnderwritingRecord object to correct mistakes.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecordCorrectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def correct(params = {}, opts = {}); end

      # Update a CreditUnderwritingRecord object to correct mistakes.
      sig {
        params(credit_underwriting_record: String, params: T.any(::Stripe::Issuing::CreditUnderwritingRecordCorrectParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def self.correct(credit_underwriting_record, params = {}, opts = {}); end

      # Creates a CreditUnderwritingRecord object with information about a credit application submission.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecordCreateFromApplicationParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def self.create_from_application(params = {}, opts = {}); end

      # Creates a CreditUnderwritingRecord object from an underwriting decision coming from a proactive review of an existing accountholder.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecordCreateFromProactiveReviewParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def self.create_from_proactive_review(params = {}, opts = {}); end

      # Retrieves a list of CreditUnderwritingRecord objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecordListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Update a CreditUnderwritingRecord object from a decision made on a credit application.
      sig {
        params(params: T.any(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def report_decision(params = {}, opts = {}); end

      # Update a CreditUnderwritingRecord object from a decision made on a credit application.
      sig {
        params(credit_underwriting_record: String, params: T.any(::Stripe::Issuing::CreditUnderwritingRecordReportDecisionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::CreditUnderwritingRecord)
       }
      def self.report_decision(credit_underwriting_record, params = {}, opts = {}); end
    end
  end
end