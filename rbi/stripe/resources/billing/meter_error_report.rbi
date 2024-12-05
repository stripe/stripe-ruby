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
              sig { returns(String) }
              attr_reader :id
              sig { returns(String) }
              attr_reader :idempotency_key
            end
            sig { returns(T.nilable(ApiRequest)) }
            attr_reader :api_request
            sig { returns(String) }
            attr_reader :error_message
          end
          sig { returns(T::Array[SampleError]) }
          attr_reader :sample_errors
        end
        sig { returns(Integer) }
        attr_reader :error_count
        sig { returns(T::Array[ErrorType]) }
        attr_reader :error_types
      end
      class RelatedObject < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :id
        sig { returns(String) }
        attr_reader :object
        sig { returns(String) }
        attr_reader :url
      end
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(Reason) }
      # Attribute for field reason
      attr_reader :reason
      sig { returns(T.nilable(RelatedObject)) }
      # The related objects about the error
      attr_reader :related_object
      sig { returns(String) }
      # Summary of invalid events
      attr_reader :summary
      sig { returns(Integer) }
      # Time when validation ended. Measured in seconds since the Unix epoch
      attr_reader :validation_end
      sig { returns(Integer) }
      # Time when validation started. Measured in seconds since the Unix epoch
      attr_reader :validation_start
    end
  end
end