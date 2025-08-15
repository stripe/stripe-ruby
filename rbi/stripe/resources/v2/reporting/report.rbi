# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Reporting
      # The Report resource represents a customizable report template that provides insights into various aspects of your Stripe integration.
      class Report < APIResource
        class Parameters < Stripe::StripeObject
          class ArrayDetails < Stripe::StripeObject
            class EnumDetails < Stripe::StripeObject
              # Allowed values of the enum.
              sig { returns(T::Array[String]) }
              attr_reader :allowed_values
            end
            # Data type of the elements in the array.
            sig { returns(String) }
            attr_reader :element_type
            # Details about enum elements in the array.
            sig { returns(T.nilable(EnumDetails)) }
            attr_reader :enum_details
          end
          class EnumDetails < Stripe::StripeObject
            # Allowed values of the enum.
            sig { returns(T::Array[String]) }
            attr_reader :allowed_values
          end
          class TimestampDetails < Stripe::StripeObject
            # Maximum permitted timestamp which can be requested.
            sig { returns(String) }
            attr_reader :max
            # Minimum permitted timestamp which can be requested.
            sig { returns(String) }
            attr_reader :min
          end
          # For array parameters, provides details about the array elements.
          sig { returns(T.nilable(ArrayDetails)) }
          attr_reader :array_details
          # Explains the purpose and usage of the parameter.
          sig { returns(String) }
          attr_reader :description
          # For enum parameters, provides the list of allowed values.
          sig { returns(T.nilable(EnumDetails)) }
          attr_reader :enum_details
          # Indicates whether the parameter must be provided.
          sig { returns(T::Boolean) }
          attr_reader :required
          # For timestamp parameters, specifies the allowed date range.
          sig { returns(T.nilable(TimestampDetails)) }
          attr_reader :timestamp_details
          # The data type of the parameter.
          sig { returns(String) }
          attr_reader :type
        end
        # The unique identifier of the `Report` object.
        sig { returns(String) }
        attr_reader :id
        # The human-readable name of the `Report`.
        sig { returns(String) }
        attr_reader :name
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Specification of the parameters that the `Report` accepts. It details each parameter's
        # name, description, whether it is required, and any validations performed.
        sig { returns(T::Hash[String, Parameters]) }
        attr_reader :parameters
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end