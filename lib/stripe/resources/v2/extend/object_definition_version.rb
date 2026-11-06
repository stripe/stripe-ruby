# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Extend
      # Represents an immutable version of an object definition.
      # It defines the fields of the object records created from it.
      class ObjectDefinitionVersion < APIResource
        OBJECT_NAME = "v2.extend.object_definition_version"
        def self.object_name
          "v2.extend.object_definition_version"
        end

        class ParentDetails < ::Stripe::StripeObject
          # The plural API name used in this definition's object record API paths.
          attr_reader :api_name_plural
          # The singular API name used in this definition's object record tags.
          attr_reader :api_name_singular
          # The ID of the parent object definition.
          attr_reader :id

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
            attr_reader :allowed_values
            # An optional default value for the field.
            attr_reader :default_value
            # An optional human-readable description of the field.
            attr_reader :description
            # An optional exclusive maximum value for integer or decimal types.
            attr_reader :exclusive_maximum
            # An optional exclusive minimum value for integer or decimal types.
            attr_reader :exclusive_minimum
            # Whether or not the field is deprecated (default false).
            attr_reader :is_deprecated
            # The required scalar schema for each array item. Array values retain their supplied order, and
            # order is significant. Values are never sorted. Empty arrays are valid unless min_items is positive.
            attr_reader :items
            # An optional maximum number of array items. It defaults to and cannot exceed 100.
            attr_reader :max_items
            # An optional maximum length validation for string fields.
            attr_reader :max_length
            # An optional maximum value for integer or decimal types.
            attr_reader :maximum
            # An optional minimum number of array items. Empty arrays are valid when this is absent or zero.
            attr_reader :min_items
            # An optional minimum length validation for string fields.
            attr_reader :min_length
            # An optional minimum value for integer or decimal types.
            attr_reader :minimum
            # The type referenced by object reference fields.
            attr_reader :referenced_type
            # Whether or not the field is required (default false).
            attr_reader :required
            # An optional human-readable name for the field.
            attr_reader :title
            # The data type of the field.
            attr_reader :type
            # Whether array item values must be unique (default false). Duplicate values are allowed by default.
            attr_reader :unique_items

            def self.inner_class_types
              @inner_class_types = { items: Items }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A required list of values for enum types.
          attr_reader :allowed_values
          # An optional default value for the field.
          attr_reader :default_value
          # An optional human-readable description of the field.
          attr_reader :description
          # An optional exclusive maximum value for integer or decimal types.
          attr_reader :exclusive_maximum
          # An optional exclusive minimum value for integer or decimal types.
          attr_reader :exclusive_minimum
          # Whether or not the field is deprecated (default false).
          attr_reader :is_deprecated
          # The required scalar schema for each array item. Array values retain their supplied order, and
          # order is significant. Values are never sorted. Empty arrays are valid unless min_items is positive.
          attr_reader :items
          # An optional maximum number of array items. It defaults to and cannot exceed 100.
          attr_reader :max_items
          # An optional maximum length validation for string fields.
          attr_reader :max_length
          # An optional maximum value for integer or decimal types.
          attr_reader :maximum
          # An optional minimum number of array items. Empty arrays are valid when this is absent or zero.
          attr_reader :min_items
          # An optional minimum length validation for string fields.
          attr_reader :min_length
          # An optional minimum value for integer or decimal types.
          attr_reader :minimum
          # The type referenced by object reference fields.
          attr_reader :referenced_type
          # Whether or not the field is required (default false).
          attr_reader :required
          # An optional human-readable name for the field.
          attr_reader :title
          # The data type of the field.
          attr_reader :type
          # Whether array item values must be unique (default false). Duplicate values are allowed by default.
          attr_reader :unique_items

          def self.inner_class_types
            @inner_class_types = { items: Items }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the object definition version was created.
        attr_reader :created
        # A description of what this version of the object definition represents.
        attr_reader :description
        # The human-readable plural name of this version.
        attr_reader :display_name_plural
        # The human-readable singular name of this version.
        attr_reader :display_name_singular
        # The complete version ID, consisting of the object definition ID, `@`, and a semantic version.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the parent object definition.
        attr_reader :object_definition
        # The stable identity and API names of the parent object definition.
        attr_reader :parent_details
        # The schema of the object record fields defined by this object definition.
        attr_reader :properties
        # The semantic version of this object definition version, in `major.minor.patch` format.
        attr_reader :version

        def self.inner_class_types
          @inner_class_types = { parent_details: ParentDetails, properties: Properties }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
