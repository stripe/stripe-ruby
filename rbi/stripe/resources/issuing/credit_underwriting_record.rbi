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
        sig { returns(String) }
        attr_reader :application_method
        sig { returns(String) }
        attr_reader :purpose
        sig { returns(Integer) }
        attr_reader :submitted_at
      end
      class CreditUser < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :email
        sig { returns(String) }
        attr_reader :name
      end
      class Decision < Stripe::StripeObject
        class ApplicationRejected < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :reason_other_explanation
          sig { returns(T::Array[String]) }
          attr_reader :reasons
        end
        class CreditLimitApproved < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount
          sig { returns(String) }
          attr_reader :currency
        end
        class CreditLimitDecreased < Stripe::StripeObject
          sig { returns(Integer) }
          attr_reader :amount
          sig { returns(String) }
          attr_reader :currency
          sig { returns(T.nilable(String)) }
          attr_reader :reason_other_explanation
          sig { returns(T::Array[String]) }
          attr_reader :reasons
        end
        class CreditLineClosed < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :reason_other_explanation
          sig { returns(T::Array[String]) }
          attr_reader :reasons
        end
        sig { returns(T.nilable(ApplicationRejected)) }
        attr_reader :application_rejected
        sig { returns(T.nilable(CreditLimitApproved)) }
        attr_reader :credit_limit_approved
        sig { returns(T.nilable(CreditLimitDecreased)) }
        attr_reader :credit_limit_decreased
        sig { returns(T.nilable(CreditLineClosed)) }
        attr_reader :credit_line_closed
        sig { returns(String) }
        attr_reader :type
      end
      class UnderwritingException < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :explanation
        sig { returns(String) }
        attr_reader :original_decision_type
      end
      sig { returns(T.nilable(Application)) }
      # For decisions triggered by an application, details about the submission.
      attr_reader :application
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # The event that triggered the underwriting.
      attr_reader :created_from
      sig { returns(CreditUser) }
      # Attribute for field credit_user
      attr_reader :credit_user
      sig { returns(T.nilable(Integer)) }
      # Date when a decision was made.
      attr_reader :decided_at
      sig { returns(T.nilable(Decision)) }
      # Details about the decision.
      attr_reader :decision
      sig { returns(T.nilable(Integer)) }
      # For underwriting initiated by an application, a decision must be taken 30 days after the submission.
      attr_reader :decision_deadline
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(T::Hash[String, String])) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # File containing regulatory reporting data for the decision. Required if you are subject to this [reporting requirement](https://stripe.com/docs/issuing/credit/report-required-regulatory-data-for-credit-decisions).
      attr_reader :regulatory_reporting_file
      sig { returns(T.nilable(UnderwritingException)) }
      # If an exception to the usual underwriting criteria was made for this application, details about the exception must be provided. Exceptions should only be granted in rare circumstances, in consultation with Stripe Compliance.
      attr_reader :underwriting_exception
    end
  end
end