# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Data
      # The `Report` resource represents a Stripe-defined, parameterized report that provides
      # insights into various aspects of your Stripe integration.
      class Report < APIResource
        OBJECT_NAME = "v2.data.report"
        def self.object_name
          "v2.data.report"
        end

        class Parameters < ::Stripe::StripeObject
          class ArrayDetails < ::Stripe::StripeObject
            class EnumDetails < ::Stripe::StripeObject
              # Allowed values of the enum.
              attr_reader :allowed_values

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The data type of the elements in the array.
            attr_reader :element_type
            # Details about enum elements in the array.
            attr_reader :enum_details

            def self.inner_class_types
              @inner_class_types = { enum_details: EnumDetails }
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class EnumDetails < ::Stripe::StripeObject
            # Allowed values of the enum.
            attr_reader :allowed_values

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # For array parameters, provides details about the array elements.
          attr_reader :array_details
          # Explains the purpose and usage of the parameter.
          attr_reader :description
          # For enum parameters, provides the list of allowed values.
          attr_reader :enum_details
          # Indicates whether the parameter must be provided.
          attr_reader :required
          # The data type of the parameter.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { array_details: ArrayDetails, enum_details: EnumDetails }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Representative SQL generated using common parameter values, or an explanatory message when
        # the report's SQL cannot be exposed. Only present when requested via `include[0]=default_sql`.
        attr_reader :default_sql
        # A human-readable description of what this report contains.
        attr_reader :description
        # The unique identifier of the `Report`.
        attr_reader :id
        # Whether this `Report` is available in live mode.
        attr_reader :livemode
        # The human-readable name of the `Report`.
        attr_reader :name
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Specification of the parameters that the `Report` accepts, keyed by parameter name.
        attr_reader :parameters

        def self.inner_class_types
          @inner_class_types = { parameters: Parameters }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
