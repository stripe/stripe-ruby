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

      class Application < ::Stripe::StripeObject
        # The channel through which the applicant has submitted their application.
        attr_reader :application_method
        # Scope of demand made by the applicant.
        attr_reader :purpose
        # Date when the applicant submitted their application.
        attr_reader :submitted_at

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class CreditUser < ::Stripe::StripeObject
        # Email of the applicant or accountholder.
        attr_reader :email
        # Full name of the company or person.
        attr_reader :name

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Decision < ::Stripe::StripeObject
        class ApplicationRejected < ::Stripe::StripeObject
          # Details about the `reasons.other` when present.
          attr_reader :reason_other_explanation
          # List of reasons why the application was rejected up to 4 reasons, in order of importance.
          attr_reader :reasons

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class CreditLimitApproved < ::Stripe::StripeObject
          # Credit amount approved. An approved credit limit is required before you can set a amount in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy).
          attr_reader :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class CreditLimitDecreased < ::Stripe::StripeObject
          # Credit amount approved after decrease. An approved credit limit is required before you can set a amount in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy).
          attr_reader :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency
          # Details about the `reasons.other` when present.
          attr_reader :reason_other_explanation
          # List of reasons why the existing credit was decreased, up to 4 reasons, in order of importance.
          attr_reader :reasons

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class CreditLineClosed < ::Stripe::StripeObject
          # Details about the `reasons.other` when present.
          attr_reader :reason_other_explanation
          # List of reasons why the existing account was closed, up to 4 reasons, in order of importance.
          attr_reader :reasons

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Details about a decision application_rejected.
        attr_reader :application_rejected
        # Details about a decision credit_limit_approved.
        attr_reader :credit_limit_approved
        # Details about a decision credit_limit_decreased.
        attr_reader :credit_limit_decreased
        # Details about a decision credit_line_closed.
        attr_reader :credit_line_closed
        # Outcome of the decision.
        attr_reader :type

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

      class UnderwritingException < ::Stripe::StripeObject
        # Written explanation for the exception.
        attr_reader :explanation
        # The decision before the exception was applied.
        attr_reader :original_decision_type

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
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
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/issuing/credit_underwriting_records",
          params: params,
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

      def self.inner_class_types
        @inner_class_types = {
          application: Application,
          credit_user: CreditUser,
          decision: Decision,
          underwriting_exception: UnderwritingException,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
