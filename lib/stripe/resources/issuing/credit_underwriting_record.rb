# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    # Every time an applicant submits an application for a Charge Card product your platform offers, or every time your platform takes a proactive credit decision on an existing account, you must record the decision by creating a new `CreditUnderwritingRecord` object on a connected account.
    #
    # [Follow the guide](https://stripe.com/docs/issuing/credit/report-credit-decisions-and-manage-aans) to learn about your requirements as a platform.
    class CreditUnderwritingRecord < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "issuing.credit_underwriting_record"
      def self.object_name
        "issuing.credit_underwriting_record"
      end

      class Application < Stripe::StripeObject
        attr_reader :application_method, :purpose, :submitted_at
      end

      class CreditUser < Stripe::StripeObject
        attr_reader :email, :name
      end

      class Decision < Stripe::StripeObject
        class ApplicationRejected < Stripe::StripeObject
          attr_reader :reason_other_explanation, :reasons
        end

        class CreditLimitApproved < Stripe::StripeObject
          attr_reader :amount, :currency
        end

        class CreditLimitDecreased < Stripe::StripeObject
          attr_reader :amount, :currency, :reason_other_explanation, :reasons
        end

        class CreditLineClosed < Stripe::StripeObject
          attr_reader :reason_other_explanation, :reasons
        end
        attr_reader :application_rejected, :credit_limit_approved, :credit_limit_decreased, :credit_line_closed, :type
      end

      class UnderwritingException < Stripe::StripeObject
        attr_reader :explanation, :original_decision_type
      end
      # For decisions triggered by an application, details about the submission.
      attr_reader :application
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The event that triggered the underwriting.
      attr_reader :created_from
      # Attribute for field credit_user
      attr_reader :credit_user
      # Date when a decision was made.
      attr_reader :decided_at
      # Details about the decision.
      attr_reader :decision
      # For underwriting initiated by an application, a decision must be taken 30 days after the submission.
      attr_reader :decision_deadline
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # File containing regulatory reporting data for the decision. Required if you are subject to this [reporting requirement](https://stripe.com/docs/issuing/credit/report-required-regulatory-data-for-credit-decisions).
      attr_reader :regulatory_reporting_file
      # If an exception to the usual underwriting criteria was made for this application, details about the exception must be provided. Exceptions should only be granted in rare circumstances, in consultation with Stripe Compliance.
      attr_reader :underwriting_exception

      # Update a CreditUnderwritingRecord object to correct mistakes.
      def correct(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/credit_underwriting_records/%<credit_underwriting_record>s/correct", { credit_underwriting_record: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Update a CreditUnderwritingRecord object to correct mistakes.
      def self.correct(credit_underwriting_record, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/credit_underwriting_records/%<credit_underwriting_record>s/correct", { credit_underwriting_record: CGI.escape(credit_underwriting_record) }),
          params: params,
          opts: opts
        )
      end

      # Creates a CreditUnderwritingRecord object with information about a credit application submission.
      def self.create_from_application(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/issuing/credit_underwriting_records/create_from_application",
          params: params,
          opts: opts
        )
      end

      # Creates a CreditUnderwritingRecord object from an underwriting decision coming from a proactive review of an existing accountholder.
      def self.create_from_proactive_review(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/issuing/credit_underwriting_records/create_from_proactive_review",
          params: params,
          opts: opts
        )
      end

      # Retrieves a list of CreditUnderwritingRecord objects. The objects are sorted in descending order by creation date, with the most-recently-created object appearing first.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/credit_underwriting_records",
          params: filters,
          opts: opts
        )
      end

      # Update a CreditUnderwritingRecord object from a decision made on a credit application.
      def report_decision(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/credit_underwriting_records/%<credit_underwriting_record>s/report_decision", { credit_underwriting_record: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Update a CreditUnderwritingRecord object from a decision made on a credit application.
      def self.report_decision(credit_underwriting_record, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/issuing/credit_underwriting_records/%<credit_underwriting_record>s/report_decision", { credit_underwriting_record: CGI.escape(credit_underwriting_record) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
