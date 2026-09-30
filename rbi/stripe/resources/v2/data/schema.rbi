# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Data
      # The `Schema` resource describes the columns, types, and relationships of a table that
      # can be queried.
      class Schema < APIResource
        class Column < ::Stripe::StripeObject
          class ForeignKeysFrom < ::Stripe::StripeObject
            # The name of the referenced column.
            sig { returns(String) }
            def column; end
            # The identifier of the referenced schema.
            sig { returns(String) }
            def schema; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class ForeignKeysTo < ::Stripe::StripeObject
            # The name of the referenced column.
            sig { returns(String) }
            def column; end
            # The identifier of the referenced schema.
            sig { returns(String) }
            def schema; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A description of what the column represents.
          sig { returns(String) }
          def description; end
          # Columns in other schemas that reference this column as a foreign key.
          sig { returns(T::Array[ForeignKeysFrom]) }
          def foreign_keys_from; end
          # Columns in other schemas that this column references as a foreign key.
          sig { returns(T::Array[ForeignKeysTo]) }
          def foreign_keys_to; end
          # Whether the column forms part of the table's primary key.
          sig { returns(T::Boolean) }
          def is_primary_key; end
          # The name of the column.
          sig { returns(String) }
          def name; end
          # The data type of the column.
          sig { returns(String) }
          def type; end
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
          sig { returns(String) }
          def description; end
          # The unique identifier of the `Report`.
          sig { returns(String) }
          def id; end
          # The human-readable name of the `Report`.
          sig { returns(String) }
          def name; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The columns of the table.
        sig { returns(T::Array[Column]) }
        def columns; end
        # The dataset the table belongs to.
        sig { returns(String) }
        def dataset; end
        # A description of the table.
        sig { returns(String) }
        def description; end
        # An extended, LLM-friendly description of the table, useful for query generation.
        sig { returns(T.nilable(String)) }
        def extended_description; end
        # The unique identifier of the `Schema`.
        sig { returns(String) }
        def id; end
        # Whether this `Schema` describes live mode data.
        sig { returns(T::Boolean) }
        def livemode; end
        # The human-readable name of the table.
        sig { returns(String) }
        def name; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Time at which the table's schema was last refreshed.
        sig { returns(String) }
        def refreshed_at; end
        # Reports relevant to this table.
        sig { returns(T::Array[RelevantReport]) }
        def relevant_reports; end
      end
    end
  end
end