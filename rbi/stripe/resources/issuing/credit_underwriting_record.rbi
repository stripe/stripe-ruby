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
        attr_reader :application_method
        # Scope of demand made by the applicant.
        sig { returns(String) }
        attr_reader :purpose
        # Date when the applicant submitted their application.
        sig { returns(Integer) }
        attr_reader :submitted_at
      end
      class CreditUser < Stripe::StripeObject
        # Email of the applicant or accountholder.
        sig { returns(String) }
        attr_reader :email
        # Full name of the company or person.
        sig { returns(String) }
        attr_reader :name
      end
      class Decision < Stripe::StripeObject
        class ApplicationRejected < Stripe::StripeObject
          # Details about the `reasons.other` when present.
          sig { returns(T.nilable(String)) }
          attr_reader :reason_other_explanation
          # List of reasons why the application was rejected up to 4 reasons, in order of importance.
          sig { returns(T::Array[String]) }
          attr_reader :reasons
        end
        class CreditLimitApproved < Stripe::StripeObject
          # Credit amount approved. An approved credit limit is required before you can set a amount in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy).
          sig { returns(Integer) }
          attr_reader :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_reader :currency
        end
        class CreditLimitDecreased < Stripe::StripeObject
          # Credit amount approved after decrease. An approved credit limit is required before you can set a amount in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy).
          sig { returns(Integer) }
          attr_reader :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_reader :currency
          # Details about the `reasons.other` when present.
          sig { returns(T.nilable(String)) }
          attr_reader :reason_other_explanation
          # List of reasons why the existing credit was decreased, up to 4 reasons, in order of importance.
          sig { returns(T::Array[String]) }
          attr_reader :reasons
        end
        class CreditLineClosed < Stripe::StripeObject
          # Details about the `reasons.other` when present.
          sig { returns(T.nilable(String)) }
          attr_reader :reason_other_explanation
          # List of reasons why the existing account was closed, up to 4 reasons, in order of importance.
          sig { returns(T::Array[String]) }
          attr_reader :reasons
        end
        # Details about a decision application_rejected.
        sig { returns(T.nilable(ApplicationRejected)) }
        attr_reader :application_rejected
        # Details about a decision credit_limit_approved.
        sig { returns(T.nilable(CreditLimitApproved)) }
        attr_reader :credit_limit_approved
        # Details about a decision credit_limit_decreased.
        sig { returns(T.nilable(CreditLimitDecreased)) }
        attr_reader :credit_limit_decreased
        # Details about a decision credit_line_closed.
        sig { returns(T.nilable(CreditLineClosed)) }
        attr_reader :credit_line_closed
        # Outcome of the decision.
        sig { returns(String) }
        attr_reader :type
      end
      class UnderwritingException < Stripe::StripeObject
        # Written explanation for the exception.
        sig { returns(String) }
        attr_reader :explanation
        # The decision before the exception was applied.
        sig { returns(String) }
        attr_reader :original_decision_type
      end
      # For decisions triggered by an application, details about the submission.
      sig { returns(T.nilable(Application)) }
      attr_reader :application

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # The event that triggered the underwriting.
      sig { returns(String) }
      attr_reader :created_from

      # Attribute for field credit_user
      sig { returns(CreditUser) }
      attr_reader :credit_user

      # Date when a decision was made.
      sig { returns(T.nilable(Integer)) }
      attr_reader :decided_at

      # Details about the decision.
      sig { returns(T.nilable(Decision)) }
      attr_reader :decision

      # For underwriting initiated by an application, a decision must be taken 30 days after the submission.
      sig { returns(T.nilable(Integer)) }
      attr_reader :decision_deadline

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # File containing regulatory reporting data for the decision. Required if you are subject to this [reporting requirement](https://stripe.com/docs/issuing/credit/report-required-regulatory-data-for-credit-decisions).
      sig { returns(T.nilable(String)) }
      attr_reader :regulatory_reporting_file

      # If an exception to the usual underwriting criteria was made for this application, details about the exception must be provided. Exceptions should only be granted in rare circumstances, in consultation with Stripe Compliance.
      sig { returns(T.nilable(UnderwritingException)) }
      attr_reader :underwriting_exception
    end
  end
end