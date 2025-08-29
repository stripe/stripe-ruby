# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class LicenseFeeSubscription < APIResource
        OBJECT_NAME = "v2.billing.license_fee_subscription"
        def self.object_name
          "v2.billing.license_fee_subscription"
        end

        # The ID of the Billing Cadence.
        attr_reader :billing_cadence
        # Timestamp of when the object was created.
        attr_reader :created
        # Unique identifier for the object.
        attr_reader :id
        # The ID of the License Fee.
        attr_reader :license_fee
        # The ID of the License Fee Version.
        attr_reader :license_fee_version
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Quantity of the License Fee subscribed to.
        attr_reader :quantity
        # The ID of the Test Clock, if any.
        attr_reader :test_clock
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
