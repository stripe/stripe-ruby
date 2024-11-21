# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class MeterErrorReport < APIResource
      OBJECT_NAME = "billing.meter_error_report"
      def self.object_name
        "billing.meter_error_report"
      end

      class Reason < Stripe::StripeObject
        class ErrorType < Stripe::StripeObject
          class SampleError < Stripe::StripeObject
            class ApiRequest < Stripe::StripeObject
              # Unique identifier for the object.
              attr_reader :id
              # idempotency_key of the request
              attr_reader :idempotency_key
            end
            # Attribute for field api_request
            attr_reader :api_request
            # message of the error
            attr_reader :error_message
          end
          # Attribute for field sample_errors
          attr_reader :sample_errors
        end
        # The number of errors generated
        attr_reader :error_count
        # More information about errors
        attr_reader :error_types
      end

      class RelatedObject < Stripe::StripeObject
        # Unique identifier for the object.
        attr_reader :id
        # The type of meter error related object. Should be 'meter'
        attr_reader :object
        # The url of the meter object
        attr_reader :url
      end
      # Unique identifier for the object.
      attr_reader :id

      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # Attribute for field reason
      attr_reader :reason

      # The related objects about the error
      attr_reader :related_object

      # Summary of invalid events
      attr_reader :summary

      # Time when validation ended. Measured in seconds since the Unix epoch
      attr_reader :validation_end

      # Time when validation started. Measured in seconds since the Unix epoch
      attr_reader :validation_start
    end
  end
end
