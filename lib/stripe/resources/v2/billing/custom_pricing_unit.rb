# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # The Custom Pricing Unit object.
      class CustomPricingUnit < APIResource
        OBJECT_NAME = "v2.billing.custom_pricing_unit"
        def self.object_name
          "v2.billing.custom_pricing_unit"
        end

        # Whether the custom pricing unit is active.
        attr_reader :active
        # Timestamp of when the object was created.
        attr_reader :created
        # Description that customers will see in the invoice line item.
        # Maximum length of 10 characters.
        attr_reader :display_name
        # Unique identifier for the object.
        attr_reader :id
        # An internal key you can use to search for a particular Custom Pricing Unit.
        # Maximum length of 200 characters.
        attr_reader :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
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
