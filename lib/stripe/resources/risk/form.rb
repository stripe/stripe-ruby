# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Risk
    # A risk Form represents a request from Stripe for information about a connected account.
    class Form < APIResource
      include Stripe::APIOperations::Save

      OBJECT_NAME = "risk.form"
      def self.object_name
        "risk.form"
      end

      class Appeal < ::Stripe::StripeObject
        # A text explanation for the appeal.
        attr_reader :explanation

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class AuthorizationDocuments < ::Stripe::StripeObject
        # IDs of uploaded files attached as authorization documents.
        attr_reader :files

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
            attr_reader :file
            # The document type: `alt_financial_statements`, `recent_bank_statements`, or `payment_receipt`.
            attr_reader :tag

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Files evidencing payments accepted outside Stripe. Each entry includes a file ID and, when supplied, a document type tag.
          attr_reader :files
          # Whether the connected account accepts payments outside Stripe.
          attr_reader :value

          def self.inner_class_types
            @inner_class_types = { files: File }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field multi_processor
        attr_reader :multi_processor
        # How the connected account uses Stripe.
        attr_reader :purpose
        # Why the connected account chose Stripe.
        attr_reader :stripe_selection_rationale

        def self.inner_class_types
          @inner_class_types = { multi_processor: MultiProcessor }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class ProductRemoval < ::Stripe::StripeObject
        # Time when the prohibited items were removed, measured in seconds since the Unix epoch.
        attr_reader :items_removed_at

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
          attr_reader :attested_at
          # Account field paths covered by this attestation. These are currently returned in v2 Accounts API format, such as `defaults.profile.product_description`.
          attr_reader :fields

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field attestation
        attr_reader :attestation

        def self.inner_class_types
          @inner_class_types = { attestation: Attestation }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class SelfFundingContext < ::Stripe::StripeObject
        class SourceOfWealth < ::Stripe::StripeObject
          # A text explanation of the connected account's source of wealth.
          attr_reader :description
          # IDs of uploaded files evidencing the source of wealth.
          attr_reader :files

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field source_of_wealth
        attr_reader :source_of_wealth

        def self.inner_class_types
          @inner_class_types = { source_of_wealth: SourceOfWealth }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Subject < ::Stripe::StripeObject
        # Account field paths the connected account must review. These are currently returned in v2 Accounts API format, such as `defaults.profile.product_description`. Present for reviewed fields Forms.
        attr_reader :fields_to_review
        # IDs of the transactions this Form is about. Present for transaction context Forms.
        attr_reader :transactions

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
          attr_reader :description
          # IDs of uploaded files evidencing the source of funds.
          attr_reader :files

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # How often the connected account expects transactions like this one. Can be `one_time_payment`, `recurring_subscription`, `repeat_customer`, `split_payment`, or `something_else`. A custom explanation can follow `something_else: `.
        attr_reader :frequency
        # The purpose of the transaction.
        attr_reader :purpose
        # IDs of uploaded files evidencing the purpose of the transaction.
        attr_reader :purpose_files
        # The connected account's relationship to the sender.
        attr_reader :sender_relationship
        # Attribute for field source_of_funds
        attr_reader :source_of_funds
        # How the funds from the transaction will be used.
        attr_reader :use_of_funds

        def self.inner_class_types
          @inner_class_types = { source_of_funds: SourceOfFunds }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Attribute for field appeal
      attr_reader :appeal
      # Attribute for field authorization_documents
      attr_reader :authorization_documents
      # Time at which the Form closed, measured in seconds since the Unix epoch.
      attr_reader :closed_at
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If it exists in a sandbox, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Time at which the Form opened, measured in seconds since the Unix epoch.
      attr_reader :opened_at
      # Attribute for field payment_processing
      attr_reader :payment_processing
      # Attribute for field product_removal
      attr_reader :product_removal
      # Attribute for field reviewed_fields
      attr_reader :reviewed_fields
      # Attribute for field self_funding_context
      attr_reader :self_funding_context
      # The current status of the Form.
      attr_reader :status
      # Attribute for field subject
      attr_reader :subject
      # Attribute for field transaction_context
      attr_reader :transaction_context
      # The type of information requested by Stripe.
      attr_reader :type

      # Updates a risk Form with the connected account's response.
      #
      # Error Codes
      #
      # | Code | HTTP status | Description |
      # | — | — | — |
      # | form_not_found | 400 | No Form matches the supplied ID. |
      # | form_closed | 400 | The Form is closed and cannot accept updates. |
      # | invalid_field_for_form_type | 400 | A submitted field is not supported by this Form type. |
      # | form_field_already_submitted | 400 | A submitted field has already been submitted. |
      # | form_insufficient_fields | 400 | Required fields are missing for this Form type. |
      # | resource_missing | 404 | A submitted file does not exist or is not accessible to the requesting account. |
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/risk/forms/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = {
          appeal: Appeal,
          authorization_documents: AuthorizationDocuments,
          payment_processing: PaymentProcessing,
          product_removal: ProductRemoval,
          reviewed_fields: ReviewedFields,
          self_funding_context: SelfFundingContext,
          subject: Subject,
          transaction_context: TransactionContext,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
