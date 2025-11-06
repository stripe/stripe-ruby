# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Reporting
      # The Report resource represents a customizable report template that provides insights into various aspects of your Stripe integration.
      class Report < APIResource
        class Parameters < ::Stripe::StripeObject
          class ArrayDetails < ::Stripe::StripeObject
            class EnumDetails < ::Stripe::StripeObject
              # Allowed values of the enum.
              sig { returns(T::Array[String]) }
              def allowed_values; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # Data type of the elements in the array.
            sig { returns(String) }
            def element_type; end
            # Details about enum elements in the array.
            sig { returns(T.nilable(EnumDetails)) }
            def enum_details; end
            def self.inner_class_types
              @inner_class_types = {enum_details: EnumDetails}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class EnumDetails < ::Stripe::StripeObject
            # Allowed values of the enum.
            sig { returns(T::Array[String]) }
            def allowed_values; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class TimestampDetails < ::Stripe::StripeObject
            # Maximum permitted timestamp which can be requested.
            sig { returns(String) }
            def max; end
            # Minimum permitted timestamp which can be requested.
            sig { returns(String) }
            def min; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # For array parameters, provides details about the array elements.
          sig { returns(T.nilable(ArrayDetails)) }
          def array_details; end
          # Explains the purpose and usage of the parameter.
          sig { returns(String) }
          def description; end
          # For enum parameters, provides the list of allowed values.
          sig { returns(T.nilable(EnumDetails)) }
          def enum_details; end
          # Indicates whether the parameter must be provided.
          sig { returns(T::Boolean) }
          def required; end
          # For timestamp parameters, specifies the allowed date range.
          sig { returns(T.nilable(TimestampDetails)) }
          def timestamp_details; end
          # The data type of the parameter.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {
              array_details: ArrayDetails,
              enum_details: EnumDetails,
              timestamp_details: TimestampDetails,
            }
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The unique identifier of the `Report` object.
        sig { returns(String) }
        def id; end
        # The human-readable name of the `Report`.
        sig { returns(String) }
        def name; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Specification of the parameters that the `Report` accepts. It details each parameter's
        # name, description, whether it is required, and any validations performed.
        sig { returns(T::Hash[String, Parameters]) }
        def parameters; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end