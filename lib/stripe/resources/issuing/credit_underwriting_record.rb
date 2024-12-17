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
        # The channel through which the applicant has submitted their application.
        attr_reader :application_method
        # Scope of demand made by the applicant.
        attr_reader :purpose
        # Date when the applicant submitted their application.
        attr_reader :submitted_at
      end

      class CreditUser < Stripe::StripeObject
        # Email of the applicant or accountholder.
        attr_reader :email
        # Full name of the company or person.
        attr_reader :name
      end

      class Decision < Stripe::StripeObject
        class ApplicationRejected < Stripe::StripeObject
          # Details about the `reasons.other` when present.
          attr_reader :reason_other_explanation
          # List of reasons why the application was rejected up to 4 reasons, in order of importance.
          attr_reader :reasons
        end

        class CreditLimitApproved < Stripe::StripeObject
          # Credit amount approved. An approved credit limit is required before you can set a amount in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy).
          attr_reader :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency
        end

        class CreditLimitDecreased < Stripe::StripeObject
          # Credit amount approved after decrease. An approved credit limit is required before you can set a amount in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy).
          attr_reader :amount
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_reader :currency
          # Details about the `reasons.other` when present.
          attr_reader :reason_other_explanation
          # List of reasons why the existing credit was decreased, up to 4 reasons, in order of importance.
          attr_reader :reasons
        end

        class CreditLineClosed < Stripe::StripeObject
          # Details about the `reasons.other` when present.
          attr_reader :reason_other_explanation
          # List of reasons why the existing account was closed, up to 4 reasons, in order of importance.
          attr_reader :reasons
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
      end

      class UnderwritingException < Stripe::StripeObject
        # Written explanation for the exception.
        attr_reader :explanation
        # The decision before the exception was applied.
        attr_reader :original_decision_type
      end

      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class CorrectParams < Stripe::RequestParams
        class Application < Stripe::RequestParams
          # The channel through which the applicant has submitted their application. Defaults to `online`.
          attr_accessor :application_method
          # Scope of demand made by the applicant.
          attr_accessor :purpose
          # Date when the applicant submitted their application.
          attr_accessor :submitted_at

          def initialize(application_method: nil, purpose: nil, submitted_at: nil)
            @application_method = application_method
            @purpose = purpose
            @submitted_at = submitted_at
          end
        end

        class CreditUser < Stripe::RequestParams
          # Email of the applicant or accountholder.
          attr_accessor :email
          # Full name of the company or person.
          attr_accessor :name

          def initialize(email: nil, name: nil)
            @email = email
            @name = name
          end
        end

        class Decision < Stripe::RequestParams
          class ApplicationRejected < Stripe::RequestParams
            # Details about the `reasons.other` when present.
            attr_accessor :reason_other_explanation
            # List of reasons why the application was rejected, up to 4 reasons, in order of importance.
            attr_accessor :reasons

            def initialize(reason_other_explanation: nil, reasons: nil)
              @reason_other_explanation = reason_other_explanation
              @reasons = reasons
            end
          end

          class CreditLimitApproved < Stripe::RequestParams
            # The credit approved, in the currency of the account and [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
            attr_accessor :amount
            # The currency of the credit approved, will default to the Account's Issuing currency.
            attr_accessor :currency

            def initialize(amount: nil, currency: nil)
              @amount = amount
              @currency = currency
            end
          end

          class CreditLimitDecreased < Stripe::RequestParams
            # The credit approved, in the currency of the account and [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
            attr_accessor :amount
            # The currency of the credit approved, will default to the Account's Issuing currency.
            attr_accessor :currency
            # Details about the `reasons.other` when present.
            attr_accessor :reason_other_explanation
            # List of reasons why the existing credit was decreased, up to 4 reasons, in order of importance.
            attr_accessor :reasons

            def initialize(amount: nil, currency: nil, reason_other_explanation: nil, reasons: nil)
              @amount = amount
              @currency = currency
              @reason_other_explanation = reason_other_explanation
              @reasons = reasons
            end
          end

          class CreditLineClosed < Stripe::RequestParams
            # Details about the `reasons.other` when present.
            attr_accessor :reason_other_explanation
            # List of reasons why the credit line was closed, up to 4 reasons, in order of importance.
            attr_accessor :reasons

            def initialize(reason_other_explanation: nil, reasons: nil)
              @reason_other_explanation = reason_other_explanation
              @reasons = reasons
            end
          end
          # Details about the application rejection.
          attr_accessor :application_rejected
          # Details about the credit limit approved. An approved credit limit is required before you can set a `credit_limit_amount` in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy/)
          attr_accessor :credit_limit_approved
          # Details about the credit limit decreased.
          attr_accessor :credit_limit_decreased
          # Details about the credit line closed.
          attr_accessor :credit_line_closed
          # Outcome of the decision.
          attr_accessor :type

          def initialize(
            application_rejected: nil,
            credit_limit_approved: nil,
            credit_limit_decreased: nil,
            credit_line_closed: nil,
            type: nil
          )
            @application_rejected = application_rejected
            @credit_limit_approved = credit_limit_approved
            @credit_limit_decreased = credit_limit_decreased
            @credit_line_closed = credit_line_closed
            @type = type
          end
        end

        class UnderwritingException < Stripe::RequestParams
          # Written explanation for the exception.
          attr_accessor :explanation
          # The decision before the exception was applied.
          attr_accessor :original_decision_type

          def initialize(explanation: nil, original_decision_type: nil)
            @explanation = explanation
            @original_decision_type = original_decision_type
          end
        end
        # Details about the application submission.
        attr_accessor :application
        # Information about the company or person applying or holding the account.
        attr_accessor :credit_user
        # Date when a decision was made.
        attr_accessor :decided_at
        # Details about the decision.
        attr_accessor :decision
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # File containing regulatory reporting data for the decision. Required if you are subject to this [reporting requirement](https://stripe.com/docs/issuing/credit/report-required-regulatory-data-for-credit-decisions). Optional if previously provided and no changes are needed.
        attr_accessor :regulatory_reporting_file
        # If an exception to the usual underwriting criteria was made for this decision, details about the exception must be provided. Exceptions should only be granted in rare circumstances, in consultation with Stripe Compliance.
        attr_accessor :underwriting_exception

        def initialize(
          application: nil,
          credit_user: nil,
          decided_at: nil,
          decision: nil,
          expand: nil,
          metadata: nil,
          regulatory_reporting_file: nil,
          underwriting_exception: nil
        )
          @application = application
          @credit_user = credit_user
          @decided_at = decided_at
          @decision = decision
          @expand = expand
          @metadata = metadata
          @regulatory_reporting_file = regulatory_reporting_file
          @underwriting_exception = underwriting_exception
        end
      end

      class ReportDecisionParams < Stripe::RequestParams
        class Decision < Stripe::RequestParams
          class ApplicationRejected < Stripe::RequestParams
            # Details about the `reasons.other` when present.
            attr_accessor :reason_other_explanation
            # List of reasons why the application was rejected, up to 4 reasons, in order of importance.
            attr_accessor :reasons

            def initialize(reason_other_explanation: nil, reasons: nil)
              @reason_other_explanation = reason_other_explanation
              @reasons = reasons
            end
          end

          class CreditLimitApproved < Stripe::RequestParams
            # The credit approved, in the currency of the account and [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
            attr_accessor :amount
            # The currency of the credit approved, will default to the Account's Issuing currency.
            attr_accessor :currency

            def initialize(amount: nil, currency: nil)
              @amount = amount
              @currency = currency
            end
          end
          # Details about the application rejection.
          attr_accessor :application_rejected
          # Details about the credit limit approved. An approved credit limit is required before you can set a `credit_limit_amount` in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy/)
          attr_accessor :credit_limit_approved
          # Outcome of the decision.
          attr_accessor :type

          def initialize(application_rejected: nil, credit_limit_approved: nil, type: nil)
            @application_rejected = application_rejected
            @credit_limit_approved = credit_limit_approved
            @type = type
          end
        end

        class UnderwritingException < Stripe::RequestParams
          # Written explanation for the exception.
          attr_accessor :explanation
          # The decision before the exception was applied.
          attr_accessor :original_decision_type

          def initialize(explanation: nil, original_decision_type: nil)
            @explanation = explanation
            @original_decision_type = original_decision_type
          end
        end
        # Date when a decision was made.
        attr_accessor :decided_at
        # Details about the decision.
        attr_accessor :decision
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # File containing regulatory reporting data for the decision. Required if you are subject to this [reporting requirement](https://stripe.com/docs/issuing/credit/report-required-regulatory-data-for-credit-decisions).
        attr_accessor :regulatory_reporting_file
        # If an exception to the usual underwriting criteria was made for this decision, details about the exception must be provided. Exceptions should only be granted in rare circumstances, in consultation with Stripe Compliance.
        attr_accessor :underwriting_exception

        def initialize(
          decided_at: nil,
          decision: nil,
          expand: nil,
          metadata: nil,
          regulatory_reporting_file: nil,
          underwriting_exception: nil
        )
          @decided_at = decided_at
          @decision = decision
          @expand = expand
          @metadata = metadata
          @regulatory_reporting_file = regulatory_reporting_file
          @underwriting_exception = underwriting_exception
        end
      end

      class CreateFromApplicationParams < Stripe::RequestParams
        class Application < Stripe::RequestParams
          # The channel through which the applicant has submitted their application. Defaults to `online`.
          attr_accessor :application_method
          # Scope of demand made by the applicant.
          attr_accessor :purpose
          # Date when the applicant submitted their application.
          attr_accessor :submitted_at

          def initialize(application_method: nil, purpose: nil, submitted_at: nil)
            @application_method = application_method
            @purpose = purpose
            @submitted_at = submitted_at
          end
        end

        class CreditUser < Stripe::RequestParams
          # Email of the applicant or accountholder.
          attr_accessor :email
          # Full name of the company or person.
          attr_accessor :name

          def initialize(email: nil, name: nil)
            @email = email
            @name = name
          end
        end
        # Details about the application submission.
        attr_accessor :application
        # Information about the company or person applying or holding the account.
        attr_accessor :credit_user
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(application: nil, credit_user: nil, expand: nil, metadata: nil)
          @application = application
          @credit_user = credit_user
          @expand = expand
          @metadata = metadata
        end
      end

      class CreateFromProactiveReviewParams < Stripe::RequestParams
        class CreditUser < Stripe::RequestParams
          # Email of the applicant or accountholder.
          attr_accessor :email
          # Full name of the company or person.
          attr_accessor :name

          def initialize(email: nil, name: nil)
            @email = email
            @name = name
          end
        end

        class Decision < Stripe::RequestParams
          class CreditLimitApproved < Stripe::RequestParams
            # The credit approved, in the currency of the account and [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
            attr_accessor :amount
            # The currency of the credit approved, will default to the Account's Issuing currency.
            attr_accessor :currency

            def initialize(amount: nil, currency: nil)
              @amount = amount
              @currency = currency
            end
          end

          class CreditLimitDecreased < Stripe::RequestParams
            # The credit approved, in the currency of the account and [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
            attr_accessor :amount
            # The currency of the credit approved, will default to the Account's Issuing currency.
            attr_accessor :currency
            # Details about the `reasons.other` when present.
            attr_accessor :reason_other_explanation
            # List of reasons why the existing credit was decreased, up to 4 reasons, in order of importance.
            attr_accessor :reasons

            def initialize(amount: nil, currency: nil, reason_other_explanation: nil, reasons: nil)
              @amount = amount
              @currency = currency
              @reason_other_explanation = reason_other_explanation
              @reasons = reasons
            end
          end

          class CreditLineClosed < Stripe::RequestParams
            # Details about the `reasons.other` when present.
            attr_accessor :reason_other_explanation
            # List of reasons why the credit line was closed, up to 4 reasons, in order of importance.
            attr_accessor :reasons

            def initialize(reason_other_explanation: nil, reasons: nil)
              @reason_other_explanation = reason_other_explanation
              @reasons = reasons
            end
          end
          # Details about the credit limit approved. An approved credit limit is required before you can set a `credit_limit_amount` in the [CreditPolicy API](https://stripe.com/docs/api/issuing/credit_policy/)
          attr_accessor :credit_limit_approved
          # Details about the credit limit decreased.
          attr_accessor :credit_limit_decreased
          # Details about the credit line closed.
          attr_accessor :credit_line_closed
          # Outcome of the decision.
          attr_accessor :type

          def initialize(
            credit_limit_approved: nil,
            credit_limit_decreased: nil,
            credit_line_closed: nil,
            type: nil
          )
            @credit_limit_approved = credit_limit_approved
            @credit_limit_decreased = credit_limit_decreased
            @credit_line_closed = credit_line_closed
            @type = type
          end
        end

        class UnderwritingException < Stripe::RequestParams
          # Written explanation for the exception.
          attr_accessor :explanation
          # The decision before the exception was applied.
          attr_accessor :original_decision_type

          def initialize(explanation: nil, original_decision_type: nil)
            @explanation = explanation
            @original_decision_type = original_decision_type
          end
        end
        # Information about the company or person applying or holding the account.
        attr_accessor :credit_user
        # Date when a decision was made.
        attr_accessor :decided_at
        # Details about the decision.
        attr_accessor :decision
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # File containing regulatory reporting data for the decision. Required if you are subject to this [reporting requirement](https://stripe.com/docs/issuing/credit/report-required-regulatory-data-for-credit-decisions).
        attr_accessor :regulatory_reporting_file
        # If an exception to the usual underwriting criteria was made for this decision, details about the exception must be provided. Exceptions should only be granted in rare circumstances, in consultation with Stripe Compliance.
        attr_accessor :underwriting_exception

        def initialize(
          credit_user: nil,
          decided_at: nil,
          decision: nil,
          expand: nil,
          metadata: nil,
          regulatory_reporting_file: nil,
          underwriting_exception: nil
        )
          @credit_user = credit_user
          @decided_at = decided_at
          @decision = decision
          @expand = expand
          @metadata = metadata
          @regulatory_reporting_file = regulatory_reporting_file
          @underwriting_exception = underwriting_exception
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
    end
  end
end
