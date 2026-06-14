# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A `payment_location` capability represents a capability for a Stripe account at a payment location.
  class PaymentLocationCapability < APIResource
    class Requirements < ::Stripe::StripeObject
      class Error < ::Stripe::StripeObject
        # The code for the type of error.
        sig { returns(String) }
        def code; end
        # An informative message that indicates the error type and provides additional details about the error.
        sig { returns(String) }
        def reason; end
        # The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
        sig { returns(String) }
        def requirement; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Fields that need to be collected to keep the capability enabled.
      sig { returns(T::Array[String]) }
      def currently_due; end
      # Description of why the capability is disabled.
      sig { returns(T.nilable(String)) }
      def disabled_reason; end
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      sig { returns(T::Array[Error]) }
      def errors; end
      def self.inner_class_types
        @inner_class_types = {errors: Error}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The account that the capability enables functionality for.
    sig { returns(String) }
    def account; end
    # The identifier for the capability.
    sig { returns(String) }
    def capability; end
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    sig { returns(T::Boolean) }
    def livemode; end
    # The payment location that the capability enables functionality for.
    sig { returns(String) }
    def location; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # Whether the capability has been requested.
    sig { returns(T::Boolean) }
    def requested; end
    # Time when the capability was requested. Measured in seconds since the Unix epoch.
    sig { returns(T.nilable(Integer)) }
    def requested_at; end
    # Attribute for field requirements
    sig { returns(Requirements) }
    def requirements; end
    # The status of the capability.
    sig { returns(String) }
    def status; end
    # List all payment location capabilities associated with the payment location.
    sig {
      params(params: T.any(::Stripe::PaymentLocationCapabilityListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # Updates a payment_location capability. Request or remove a payment_location capability by updating its requested parameter.
    sig {
      params(capability: String, params: T.any(::Stripe::PaymentLocationCapabilityUpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::PaymentLocationCapability)
     }
    def self.update(capability, params = {}, opts = {}); end
  end
end