# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Risk
      # A risk Form represents a request from Stripe for information about a connected account.
      class Form < APIResource
        OBJECT_NAME = "v2.risk.form"
        def self.object_name
          "v2.risk.form"
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
          # IDs of uploaded files to attach as authorization documents.
          attr_reader :files

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ProductRemoval < ::Stripe::StripeObject
          # The timestamp when the prohibited items were removed.
          attr_reader :items_removed_at

          def self.inner_class_types
            @inner_class_types = {}
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
          # The connected account's source of wealth.
          attr_reader :source_of_wealth

          def self.inner_class_types
            @inner_class_types = { source_of_wealth: SourceOfWealth }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Subject < ::Stripe::StripeObject
          # ID of the transaction this Form is about. Present only for transaction_context
          # Forms. Absent for other Form types.
          attr_reader :transaction
          # IDs of the transactions this inquiry is about.
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
          # The purpose of the transaction.
          attr_reader :purpose
          # The connected account's relationship to the sender. Optional.
          attr_reader :sender_relationship
          # Where the funds for the transaction came from.
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
        # Data for appeal inquiries. Only present when type is appeal.
        attr_reader :appeal
        # Data for authorization_documents inquiries. Only present when type is authorization_documents.
        attr_reader :authorization_documents
        # Time at which the Form was closed.
        attr_reader :closed_at
        # Time at which the Form was created.
        attr_reader :created
        # Unique identifier for the Form.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Time at which the Form was opened.
        attr_reader :opened_at
        # Data for product_removal inquiries. Only present when type is product_removal.
        attr_reader :product_removal
        # Data for self_funding_context inquiries. Only present when type is self_funding_context.
        attr_reader :self_funding_context
        # The current status of the Form.
        attr_reader :status
        # What this Form was raised about, as a typed object. Only present when the Form
        # is scoped to a specific object. Absent when the Form covers the account as a whole.
        attr_reader :subject
        # Data for transaction_context inquiries. Only present when type is transaction_context.
        attr_reader :transaction_context
        # The type of Form.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {
            appeal: Appeal,
            authorization_documents: AuthorizationDocuments,
            product_removal: ProductRemoval,
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
end
