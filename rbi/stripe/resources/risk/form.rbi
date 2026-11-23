# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Risk
    # A risk Form represents a request from Stripe for information about a connected account.
    class Form < APIResource
      class Appeal < ::Stripe::StripeObject
        # A text explanation for the appeal.
        sig { returns(T.nilable(String)) }
        def explanation; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class AuthorizationDocuments < ::Stripe::StripeObject
        # IDs of uploaded files attached as authorization documents.
        sig { returns(T.nilable(T::Array[String])) }
        def files; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class PaymentProcessing < ::Stripe::StripeObject
        class MultiProcessor < ::Stripe::StripeObject
          class File < ::Stripe::StripeObject
            # ID of the uploaded file.
            sig { returns(T.nilable(String)) }
            def file; end
            # The document type: `alt_financial_statements`, `recent_bank_statements`, or `payment_receipt`.
            sig { returns(T.nilable(String)) }
            def tag; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Files evidencing payments accepted outside Stripe. Each entry includes a file ID and, when supplied, a document type tag.
          sig { returns(T.nilable(T::Array[File])) }
          def files; end
          # Whether the connected account accepts payments outside Stripe.
          sig { returns(T.nilable(String)) }
          def value; end
          def self.inner_class_types
            @inner_class_types = {files: File}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field multi_processor
        sig { returns(T.nilable(MultiProcessor)) }
        def multi_processor; end
        # How the connected account uses Stripe.
        sig { returns(T.nilable(String)) }
        def purpose; end
        # Why the connected account chose Stripe.
        sig { returns(T.nilable(String)) }
        def stripe_selection_rationale; end
        def self.inner_class_types
          @inner_class_types = {multi_processor: MultiProcessor}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class ProductRemoval < ::Stripe::StripeObject
        # Time when the prohibited items were removed, measured in seconds since the Unix epoch.
        sig { returns(T.nilable(Integer)) }
        def items_removed_at; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class ReviewedFields < ::Stripe::StripeObject
        class Attestation < ::Stripe::StripeObject
          # Time when the connected account attested to these fields, measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          def attested_at; end
          # Account field paths covered by this attestation. These are currently returned in v2 Accounts API format, such as `defaults.profile.product_description`.
          sig { returns(T.nilable(T::Array[String])) }
          def fields; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field attestation
        sig { returns(T.nilable(Attestation)) }
        def attestation; end
        def self.inner_class_types
          @inner_class_types = {attestation: Attestation}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class SelfFundingContext < ::Stripe::StripeObject
        class SourceOfWealth < ::Stripe::StripeObject
          # A text explanation of the connected account's source of wealth.
          sig { returns(T.nilable(String)) }
          def description; end
          # IDs of uploaded files evidencing the source of wealth.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field source_of_wealth
        sig { returns(T.nilable(SourceOfWealth)) }
        def source_of_wealth; end
        def self.inner_class_types
          @inner_class_types = {source_of_wealth: SourceOfWealth}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Subject < ::Stripe::StripeObject
        # Account field paths the connected account must review. These are currently returned in v2 Accounts API format, such as `defaults.profile.product_description`. Present for reviewed fields Forms.
        sig { returns(T.nilable(T::Array[String])) }
        def fields_to_review; end
        # IDs of the transactions this Form is about. Present for transaction context Forms.
        sig { returns(T.nilable(T::Array[String])) }
        def transactions; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class TransactionContext < ::Stripe::StripeObject
        class SourceOfFunds < ::Stripe::StripeObject
          # A text explanation of where the funds for the transaction came from.
          sig { returns(T.nilable(String)) }
          def description; end
          # IDs of uploaded files evidencing the source of funds.
          sig { returns(T.nilable(T::Array[String])) }
          def files; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # How often the connected account expects transactions like this one. Can be `one_time_payment`, `recurring_subscription`, `repeat_customer`, `split_payment`, or `something_else`. A custom explanation can follow `something_else: `.
        sig { returns(T.nilable(String)) }
        def frequency; end
        # The purpose of the transaction.
        sig { returns(T.nilable(String)) }
        def purpose; end
        # IDs of uploaded files evidencing the purpose of the transaction.
        sig { returns(T.nilable(T::Array[String])) }
        def purpose_files; end
        # The connected account's relationship to the sender.
        sig { returns(T.nilable(String)) }
        def sender_relationship; end
        # Attribute for field source_of_funds
        sig { returns(T.nilable(SourceOfFunds)) }
        def source_of_funds; end
        # How the funds from the transaction will be used.
        sig { returns(T.nilable(String)) }
        def use_of_funds; end
        def self.inner_class_types
          @inner_class_types = {source_of_funds: SourceOfFunds}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field appeal
      sig { returns(T.nilable(Appeal)) }
      def appeal; end
      # Attribute for field authorization_documents
      sig { returns(T.nilable(AuthorizationDocuments)) }
      def authorization_documents; end
      # Time at which the Form closed, measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      def closed_at; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      def created; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If it exists in a sandbox, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Time at which the Form opened, measured in seconds since the Unix epoch.
      sig { returns(T.nilable(Integer)) }
      def opened_at; end
      # Attribute for field payment_processing
      sig { returns(T.nilable(PaymentProcessing)) }
      def payment_processing; end
      # Attribute for field product_removal
      sig { returns(T.nilable(ProductRemoval)) }
      def product_removal; end
      # Attribute for field reviewed_fields
      sig { returns(T.nilable(ReviewedFields)) }
      def reviewed_fields; end
      # Attribute for field self_funding_context
      sig { returns(T.nilable(SelfFundingContext)) }
      def self_funding_context; end
      # The current status of the Form.
      sig { returns(String) }
      def status; end
      # Attribute for field subject
      sig { returns(T.nilable(Subject)) }
      def subject; end
      # Attribute for field transaction_context
      sig { returns(T.nilable(TransactionContext)) }
      def transaction_context; end
      # The type of information requested by Stripe.
      sig { returns(String) }
      def type; end
      # Updates a risk Form with the connected account's response.
      #
      # Error Codes
      #
      # | Code | HTTP status | Description |
      # | — | — | — |
      # | form_not_found | 400 | No Form matches the supplied ID. |
      # | form_closed | 400 | The Form is closed and cannot accept updates. |
      # | invalid_field_for_form_type | 400 | Submitted fields contain invalid values. |
      # | form_field_already_submitted | 400 | A submitted field has already been submitted. |
      # | form_insufficient_fields | 400 | Required fields are missing for this Form type. |
      # | resource_missing | 404 | A submitted file does not exist or is not accessible to the requesting account. |
      #
      # Validation errors include a summary in message. Missing required properties use
      # form_insufficient_fields and include missing_fields, an array of public dotted paths.
      # Missing required properties take precedence over value violations.
      #
      # Invalid values use invalid_field_for_form_type and include violations. Each violation
      # has a public dotted field path and a reason of missing_value or invalid_value.
      # Reviewed-field violations include a corrective message; corrective messages for other
      # Form types are omitted. For an array member, target identifies the member's field path.
      # For a scalar value, target is explicitly null.
      #
      # For example, a reviewed-fields submission with an out-of-date timestamp and an omitted
      # requested member returns both violations:
      #
      # json
      # {
      #  "error": {
      #  "type": "invalid_request_error",
      #  "code": "invalid_field_for_form_type",
      #  "message": "Submitted fields are invalid for Form type reviewed_fields. See violations for details and corrective actions for these fields: 'reviewed_fields.attestation.attested_at', 'reviewed_fields.attestation.fields'.",
      #  "violations": [
      #  {
      #  "field": "reviewed_fields.attestation.attested_at",
      #  "reason": "invalid_value",
      #  "message": "The attestation timestamp is out of date. Review and attest the requested information again, then provide the new attestation timestamp.",
      #  "target": null
      #  },
      #  {
      #  "field": "reviewed_fields.attestation.fields",
      #  "reason": "missing_value",
      #  "message": "'defaults.profile.product_description' is required by subject.fields_to_review but is missing from reviewed_fields.attestation.fields. Review this information, then include its path in the attestation.",
      #  "target": "defaults.profile.product_description"
      #  }
      #  ]
      #  }
      # }
      #
      #
      # A v1 request with no extracted field submissions is rejected before the Form is loaded,
      # including for reviewed-fields Forms. This early error uses form_insufficient_fields
      # and omits missing_fields,
      # violations, and param. Partially populated reviewed-fields requests use structured
      # missing-property validation.
      sig {
        params(id: String, params: T.any(::Stripe::Risk::FormUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Risk::Form)
       }
      def self.update(id, params = {}, opts = {}); end
    end
  end
end