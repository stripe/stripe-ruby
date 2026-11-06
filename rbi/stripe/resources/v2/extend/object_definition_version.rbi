# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Extend
      # Represents an immutable version of an object definition.
      # It defines the fields of the object records created from it.
      class ObjectDefinitionVersion < APIResource
        class ParentDetails < ::Stripe::StripeObject
          # The plural API name used in this definition's object record API paths.
          sig { returns(String) }
          def api_name_plural; end
          # The singular API name used in this definition's object record tags.
          sig { returns(String) }
          def api_name_singular; end
          # The ID of the parent object definition.
          sig { returns(String) }
          def id; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Properties < ::Stripe::StripeObject
          class Items < ::Stripe::StripeObject
            class Items < ::Stripe::StripeObject
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # A required list of values for enum types.
            sig { returns(T.nilable(T::Array[String])) }
            def allowed_values; end
            # An optional default value for the field.
            sig { returns(T.untyped) }
            def default_value; end
            # An optional human-readable description of the field.
            sig { returns(T.nilable(String)) }
            def description; end
            # An optional exclusive maximum value for integer or decimal types.
            sig { returns(T.untyped) }
            def exclusive_maximum; end
            # An optional exclusive minimum value for integer or decimal types.
            sig { returns(T.untyped) }
            def exclusive_minimum; end
            # Whether or not the field is deprecated (default false).
            sig { returns(T.nilable(T::Boolean)) }
            def is_deprecated; end
            # The required scalar schema for each array item. Array values retain their supplied order, and
            # order is significant. Values are never sorted. Empty arrays are valid unless min_items is positive.
            sig { returns(T.nilable(Items)) }
            def items; end
            # An optional maximum number of array items. It defaults to and cannot exceed 100.
            sig { returns(T.nilable(Integer)) }
            def max_items; end
            # An optional maximum length validation for string fields.
            sig { returns(T.nilable(Integer)) }
            def max_length; end
            # An optional maximum value for integer or decimal types.
            sig { returns(T.untyped) }
            def maximum; end
            # An optional minimum number of array items. Empty arrays are valid when this is absent or zero.
            sig { returns(T.nilable(Integer)) }
            def min_items; end
            # An optional minimum length validation for string fields.
            sig { returns(T.nilable(Integer)) }
            def min_length; end
            # An optional minimum value for integer or decimal types.
            sig { returns(T.untyped) }
            def minimum; end
            # The type referenced by object reference fields.
            sig { returns(T.nilable(String)) }
            def referenced_type; end
            # Whether or not the field is required (default false).
            sig { returns(T.nilable(T::Boolean)) }
            def required; end
            # An optional human-readable name for the field.
            sig { returns(T.nilable(String)) }
            def title; end
            # The data type of the field.
            sig { returns(String) }
            def type; end
            # Whether array item values must be unique (default false). Duplicate values are allowed by default.
            sig { returns(T.nilable(T::Boolean)) }
            def unique_items; end
            def self.inner_class_types
              @inner_class_types = {items: Items}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A required list of values for enum types.
          sig { returns(T.nilable(T::Array[String])) }
          def allowed_values; end
          # An optional default value for the field.
          sig { returns(T.untyped) }
          def default_value; end
          # An optional human-readable description of the field.
          sig { returns(T.nilable(String)) }
          def description; end
          # An optional exclusive maximum value for integer or decimal types.
          sig { returns(T.untyped) }
          def exclusive_maximum; end
          # An optional exclusive minimum value for integer or decimal types.
          sig { returns(T.untyped) }
          def exclusive_minimum; end
          # Whether or not the field is deprecated (default false).
          sig { returns(T.nilable(T::Boolean)) }
          def is_deprecated; end
          # The required scalar schema for each array item. Array values retain their supplied order, and
          # order is significant. Values are never sorted. Empty arrays are valid unless min_items is positive.
          sig { returns(T.nilable(Items)) }
          def items; end
          # An optional maximum number of array items. It defaults to and cannot exceed 100.
          sig { returns(T.nilable(Integer)) }
          def max_items; end
          # An optional maximum length validation for string fields.
          sig { returns(T.nilable(Integer)) }
          def max_length; end
          # An optional maximum value for integer or decimal types.
          sig { returns(T.untyped) }
          def maximum; end
          # An optional minimum number of array items. Empty arrays are valid when this is absent or zero.
          sig { returns(T.nilable(Integer)) }
          def min_items; end
          # An optional minimum length validation for string fields.
          sig { returns(T.nilable(Integer)) }
          def min_length; end
          # An optional minimum value for integer or decimal types.
          sig { returns(T.untyped) }
          def minimum; end
          # The type referenced by object reference fields.
          sig { returns(T.nilable(String)) }
          def referenced_type; end
          # Whether or not the field is required (default false).
          sig { returns(T.nilable(T::Boolean)) }
          def required; end
          # An optional human-readable name for the field.
          sig { returns(T.nilable(String)) }
          def title; end
          # The data type of the field.
          sig { returns(String) }
          def type; end
          # Whether array item values must be unique (default false). Duplicate values are allowed by default.
          sig { returns(T.nilable(T::Boolean)) }
          def unique_items; end
          def self.inner_class_types
            @inner_class_types = {items: Items}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the object definition version was created.
        sig { returns(String) }
        def created; end
        # A description of what this version of the object definition represents.
        sig { returns(T.nilable(String)) }
        def description; end
        # The human-readable plural name of this version.
        sig { returns(String) }
        def display_name_plural; end
        # The human-readable singular name of this version.
        sig { returns(String) }
        def display_name_singular; end
        # The complete version ID, consisting of the object definition ID, `@`, and a semantic version.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the parent object definition.
        sig { returns(String) }
        def object_definition; end
        # The stable identity and API names of the parent object definition.
        sig { returns(ParentDetails) }
        def parent_details; end
        # The schema of the object record fields defined by this object definition.
        sig { returns(T::Hash[String, Properties]) }
        def properties; end
        # The semantic version of this object definition version, in `major.minor.patch` format.
        sig { returns(String) }
        def version; end
      end
    end
  end
end