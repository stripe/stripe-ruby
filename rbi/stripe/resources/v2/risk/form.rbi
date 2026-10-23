# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Risk
      # A risk Form represents a request from Stripe for information about a connected account.
      class Form < APIResource
        class Appeal < ::Stripe::StripeObject
          # A text explanation for the appeal.
          sig { returns(String) }
          def explanation; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class AuthorizationDocuments < ::Stripe::StripeObject
          # IDs of uploaded files to attach as authorization documents.
          sig { returns(T::Array[String]) }
          def files; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ProductRemoval < ::Stripe::StripeObject
          # The timestamp when the prohibited items were removed.
          sig { returns(String) }
          def items_removed_at; end
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
            sig { returns(String) }
            def description; end
            # IDs of uploaded files evidencing the source of wealth.
            sig { returns(T::Array[String]) }
            def files; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The connected account's source of wealth.
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
          # ID of the transaction this Form is about. Present only for transaction_context
          # Forms. Absent for other Form types.
          sig { returns(T.nilable(String)) }
          def transaction; end
          # IDs of the transactions this inquiry is about.
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
            sig { returns(String) }
            def description; end
            # IDs of uploaded files evidencing the source of funds.
            sig { returns(T::Array[String]) }
            def files; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The purpose of the transaction.
          sig { returns(String) }
          def purpose; end
          # The connected account's relationship to the sender. Optional.
          sig { returns(T.nilable(String)) }
          def sender_relationship; end
          # Where the funds for the transaction came from.
          sig { returns(T.nilable(SourceOfFunds)) }
          def source_of_funds; end
          # How the funds from the transaction will be used.
          sig { returns(String) }
          def use_of_funds; end
          def self.inner_class_types
            @inner_class_types = {source_of_funds: SourceOfFunds}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Data for appeal inquiries. Only present when type is appeal.
        sig { returns(T.nilable(Appeal)) }
        def appeal; end
        # Data for authorization_documents inquiries. Only present when type is authorization_documents.
        sig { returns(T.nilable(AuthorizationDocuments)) }
        def authorization_documents; end
        # Time at which the Form was closed.
        sig { returns(String) }
        def closed_at; end
        # Time at which the Form was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the Form.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Time at which the Form was opened.
        sig { returns(String) }
        def opened_at; end
        # Data for product_removal inquiries. Only present when type is product_removal.
        sig { returns(T.nilable(ProductRemoval)) }
        def product_removal; end
        # Data for self_funding_context inquiries. Only present when type is self_funding_context.
        sig { returns(T.nilable(SelfFundingContext)) }
        def self_funding_context; end
        # The current status of the Form.
        sig { returns(String) }
        def status; end
        # What this Form was raised about, as a typed object. Only present when the Form
        # is scoped to a specific object. Absent when the Form covers the account as a whole.
        sig { returns(T.nilable(Subject)) }
        def subject; end
        # Data for transaction_context inquiries. Only present when type is transaction_context.
        sig { returns(T.nilable(TransactionContext)) }
        def transaction_context; end
        # The type of Form.
        sig { returns(String) }
        def type; end
      end
    end
  end
end