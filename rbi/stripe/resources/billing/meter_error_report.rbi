# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class MeterErrorReport < APIResource
      class Reason < Stripe::StripeObject
        class ErrorType < Stripe::StripeObject
          class SampleError < Stripe::StripeObject
            class ApiRequest < Stripe::StripeObject
              # Unique identifier for the object.
              sig { returns(String) }
              attr_reader :id
              # idempotency_key of the request
              sig { returns(String) }
              attr_reader :idempotency_key
            end
            # Attribute for field api_request
            sig { returns(T.nilable(ApiRequest)) }
            attr_reader :api_request
            # message of the error
            sig { returns(String) }
            attr_reader :error_message
          end
          # Attribute for field sample_errors
          sig { returns(T::Array[SampleError]) }
          attr_reader :sample_errors
        end
        # The number of errors generated
        sig { returns(Integer) }
        attr_reader :error_count
        # More information about errors
        sig { returns(T::Array[ErrorType]) }
        attr_reader :error_types
      end
      class RelatedObject < Stripe::StripeObject
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # The type of meter error related object. Should be 'meter'
        sig { returns(String) }
        attr_reader :object
        # The url of the meter object
        sig { returns(String) }
        attr_reader :url
      end
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Attribute for field reason
      sig { returns(Reason) }
      attr_reader :reason

      # The related objects about the error
      sig { returns(T.nilable(RelatedObject)) }
      attr_reader :related_object

      # Summary of invalid events
      sig { returns(String) }
      attr_reader :summary

      # Time when validation ended. Measured in seconds since the Unix epoch
      sig { returns(Integer) }
      attr_reader :validation_end

      # Time when validation started. Measured in seconds since the Unix epoch
      sig { returns(Integer) }
      attr_reader :validation_start
    end
  end
end