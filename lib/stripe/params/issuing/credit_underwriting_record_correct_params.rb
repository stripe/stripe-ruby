# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class CreditUnderwritingRecordCorrectParams < Stripe::RequestParams
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
  end
end
