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
              attr_reader :id, :idempotency_key
            end
            attr_reader :api_request, :error_message
          end
          attr_reader :sample_errors
        end
        attr_reader :error_count, :error_types
      end

      class RelatedObject < Stripe::StripeObject
        attr_reader :id, :object, :url
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
