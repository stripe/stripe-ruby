# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Reporting
      # The Report resource represents a customizable report template that provides insights into various aspects of your Stripe integration.
      class Report < APIResource
        OBJECT_NAME = "v2.reporting.report"
        def self.object_name
          "v2.reporting.report"
        end

        class Parameters < Stripe::StripeObject
          class ArrayDetails < Stripe::StripeObject
            class EnumDetails < Stripe::StripeObject
              # Allowed values of the enum.
              attr_reader :allowed_values
            end
            # Data type of the elements in the array.
            attr_reader :element_type
            # Details about enum elements in the array.
            attr_reader :enum_details
          end

          class EnumDetails < Stripe::StripeObject
            # Allowed values of the enum.
            attr_reader :allowed_values
          end

          class TimestampDetails < Stripe::StripeObject
            # Maximum permitted timestamp which can be requested.
            attr_reader :max
            # Minimum permitted timestamp which can be requested.
            attr_reader :min
          end
          # For array parameters, provides details about the array elements.
          attr_reader :array_details
          # Explains the purpose and usage of the parameter.
          attr_reader :description
          # For enum parameters, provides the list of allowed values.
          attr_reader :enum_details
          # Indicates whether the parameter must be provided.
          attr_reader :required
          # For timestamp parameters, specifies the allowed date range.
          attr_reader :timestamp_details
          # The data type of the parameter.
          attr_reader :type
        end
        # The unique identifier of the `Report` object.
        attr_reader :id
        # The human-readable name of the `Report`.
        attr_reader :name
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Specification of the parameters that the `Report` accepts. It details each parameter's
        # name, description, whether it is required, and any validations performed.
        attr_reader :parameters
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
      end
    end
  end
end
