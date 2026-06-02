# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # A FeeBatch represents a settlement grouping of fees.
      # It bridges the fee domain with actual money movement, tracking what was settled and how.
      class FeeBatch < APIResource
        class Adjustments < ::Stripe::StripeObject
          # The amount of tax adjusted for this batch.
          sig { returns(T.nilable(::Stripe::V2::Amount)) }
          def tax_adjustment; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CollectedBy < ::Stripe::StripeObject
          # The type of entity that collected this batch.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class CollectionRecord < ::Stripe::StripeObject
          class Tax < ::Stripe::StripeObject
            # The tax amount collected via this record.
            sig { returns(::Stripe::V2::Amount) }
            def amount; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The fee amount collected via this record.
          sig { returns(::Stripe::V2::Amount) }
          def amount; end
          # The ID of the associated v1 balance transaction.
          sig { returns(T.nilable(String)) }
          def balance_transaction; end
          # The ID of the associated credit transaction.
          sig { returns(T.nilable(String)) }
          def credit_transaction; end
          # The ID of the associated v2 money management transaction.
          sig { returns(T.nilable(String)) }
          def money_management_transaction; end
          # The ID of the associated accounts-receivable invoice.
          sig { returns(T.nilable(String)) }
          def payable_invoice; end
          # The tax amount collected via this record.
          sig { returns(T.nilable(Tax)) }
          def tax; end
          # The type of money movement object.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {tax: Tax}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp of when the batch transitioned to BILLED, if applicable.
          sig { returns(T.nilable(String)) }
          def billed_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Tax < ::Stripe::StripeObject
          # The tax amount included in this batch.
          sig { returns(::Stripe::V2::Amount) }
          def amount; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Adjustments applied to this batch.
        sig { returns(T.nilable(Adjustments)) }
        def adjustments; end
        # The total fee amount billed in this batch.
        sig { returns(::Stripe::V2::Amount) }
        def amount; end
        # The entity that collected this batch.
        sig { returns(CollectedBy) }
        def collected_by; end
        # The money movement records associated with collecting this batch.
        sig { returns(T::Array[CollectionRecord]) }
        def collection_records; end
        # Timestamp of when this batch was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the FeeBatch.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode, or `false` if in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The current state of this batch.
        sig { returns(String) }
        def status; end
        # Timestamps for each status transition.
        sig { returns(StatusTransitions) }
        def status_transitions; end
        # The tax amount included in this batch.
        sig { returns(T.nilable(Tax)) }
        def tax; end
      end
    end
  end
end