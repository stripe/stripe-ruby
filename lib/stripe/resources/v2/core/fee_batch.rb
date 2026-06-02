# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # A FeeBatch represents a settlement grouping of fees.
      # It bridges the fee domain with actual money movement, tracking what was settled and how.
      class FeeBatch < APIResource
        OBJECT_NAME = "v2.core.fee_batch"
        def self.object_name
          "v2.core.fee_batch"
        end

        class Adjustments < ::Stripe::StripeObject
          # The amount of tax adjusted for this batch.
          attr_reader :tax_adjustment

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class CollectedBy < ::Stripe::StripeObject
          # The type of entity that collected this batch.
          attr_reader :type

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
            attr_reader :amount

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The fee amount collected via this record.
          attr_reader :amount
          # The ID of the associated v1 balance transaction.
          attr_reader :balance_transaction
          # The ID of the associated credit transaction.
          attr_reader :credit_transaction
          # The ID of the associated v2 money management transaction.
          attr_reader :money_management_transaction
          # The ID of the associated accounts-receivable invoice.
          attr_reader :payable_invoice
          # The tax amount collected via this record.
          attr_reader :tax
          # The type of money movement object.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { tax: Tax }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # Timestamp of when the batch transitioned to BILLED, if applicable.
          attr_reader :billed_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Tax < ::Stripe::StripeObject
          # The tax amount included in this batch.
          attr_reader :amount

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Adjustments applied to this batch.
        attr_reader :adjustments
        # The total fee amount billed in this batch.
        attr_reader :amount
        # The entity that collected this batch.
        attr_reader :collected_by
        # The money movement records associated with collecting this batch.
        attr_reader :collection_records
        # Timestamp of when this batch was created.
        attr_reader :created
        # Unique identifier for the FeeBatch.
        attr_reader :id
        # Has the value `true` if the object exists in live mode, or `false` if in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The current state of this batch.
        attr_reader :status
        # Timestamps for each status transition.
        attr_reader :status_transitions
        # The tax amount included in this batch.
        attr_reader :tax

        def self.inner_class_types
          @inner_class_types = {
            adjustments: Adjustments,
            collected_by: CollectedBy,
            collection_records: CollectionRecord,
            status_transitions: StatusTransitions,
            tax: Tax,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
