# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      # The `Schema` resource describes the columns, types, and relationships of a table that
      # can be queried.
      class Schema < APIResource
        OBJECT_NAME = "v2.data.schema"
        def self.object_name
          "v2.data.schema"
        end

        class Column < ::Stripe::StripeObject
          class ForeignKeysFrom < ::Stripe::StripeObject
            # The name of the referenced column.
            attr_reader :column
            # The identifier of the referenced schema.
            attr_reader :schema

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class ForeignKeysTo < ::Stripe::StripeObject
            # The name of the referenced column.
            attr_reader :column
            # The identifier of the referenced schema.
            attr_reader :schema

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A description of what the column represents.
          attr_reader :description
          # Columns in other schemas that reference this column as a foreign key.
          attr_reader :foreign_keys_from
          # Columns in other schemas that this column references as a foreign key.
          attr_reader :foreign_keys_to
          # Whether the column forms part of the table's primary key.
          attr_reader :is_primary_key
          # The name of the column.
          attr_reader :name
          # The data type of the column.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {
              foreign_keys_from: ForeignKeysFrom,
              foreign_keys_to: ForeignKeysTo,
            }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class RelevantReport < ::Stripe::StripeObject
          # A description of the `Report`.
          attr_reader :description
          # The unique identifier of the `Report`.
          attr_reader :id
          # The human-readable name of the `Report`.
          attr_reader :name

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The columns of the table.
        attr_reader :columns
        # The dataset the table belongs to.
        attr_reader :dataset
        # A description of the table.
        attr_reader :description
        # An extended, LLM-friendly description of the table, useful for query generation.
        attr_reader :extended_description
        # The unique identifier of the `Schema`.
        attr_reader :id
        # Whether this `Schema` describes live mode data.
        attr_reader :livemode
        # The human-readable name of the table.
        attr_reader :name
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Time at which the table's schema was last refreshed.
        attr_reader :refreshed_at
        # Reports relevant to this table.
        attr_reader :relevant_reports

        def self.inner_class_types
          @inner_class_types = { columns: Column, relevant_reports: RelevantReport }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
