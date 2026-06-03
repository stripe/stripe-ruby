# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A `payment_location` capability represents a capability for a Stripe account at a payment location.
  class PaymentLocationCapability < APIResource
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_location_capability"
    def self.object_name
      "payment_location_capability"
    end

    class Requirements < ::Stripe::StripeObject
      class Error < ::Stripe::StripeObject
        # The code for the type of error.
        attr_reader :code
        # An informative message that indicates the error type and provides additional details about the error.
        attr_reader :reason
        # The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
        attr_reader :requirement

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Fields that need to be collected to keep the capability enabled.
      attr_reader :currently_due
      # Description of why the capability is disabled.
      attr_reader :disabled_reason
      # Fields that are `currently_due` and need to be collected again because validation or verification failed.
      attr_reader :errors

      def self.inner_class_types
        @inner_class_types = { errors: Error }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The account that the capability enables functionality for.
    attr_reader :account
    # The identifier for the capability.
    attr_reader :capability
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    attr_reader :livemode
    # The payment location that the capability enables functionality for.
    attr_reader :location
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Whether the capability has been requested.
    attr_reader :requested
    # Time when the capability was requested. Measured in seconds since the Unix epoch.
    attr_reader :requested_at
    # Attribute for field requirements
    attr_reader :requirements
    # The status of the capability.
    attr_reader :status

    # List all payment location capabilities associated with the payment location.
    def self.list(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/payment_location_capabilities",
        params: params,
        opts: opts
      )
    end

    # Updates a payment_location capability. Request or remove a payment_location capability by updating its requested parameter.
    def self.update(capability, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_location_capabilities/%<capability>s", { capability: CGI.escape(capability) }),
        params: params,
        opts: opts
      )
    end

    def self.inner_class_types
      @inner_class_types = { requirements: Requirements }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
