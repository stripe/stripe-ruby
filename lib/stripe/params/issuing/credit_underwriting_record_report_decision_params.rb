# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class CreditUnderwritingRecordReportDecisionParams < ::Stripe::RequestParams
      class Decision < ::Stripe::RequestParams
        class ApplicationRejected < ::Stripe::RequestParams
          # Details about the `reasons.other` when present.
          attr_accessor :reason_other_explanation
          # List of reasons why the application was rejected, up to 4 reasons, in order of importance.
          attr_accessor :reasons

          def initialize(reason_other_explanation: nil, reasons: nil)
            @reason_other_explanation = reason_other_explanation
            @reasons = reasons
          end
        end

        class CreditLimitApproved < ::Stripe::RequestParams
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

      class UnderwritingException < ::Stripe::RequestParams
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
  end
end
