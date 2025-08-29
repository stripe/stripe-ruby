# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlan < APIResource
        OBJECT_NAME = "v2.billing.pricing_plan"
        def self.object_name
          "v2.billing.pricing_plan"
        end

        # Whether the PricingPlan is active.
        attr_reader :active
        # Time at which the object was created.
        attr_reader :created
        # The currency of the PricingPlan.
        attr_reader :currency
        # A description for pricing plan subscription.
        # Maximum length of 500 characters.
        attr_reader :description
        # Display name of the PricingPlan.
        attr_reader :display_name
        # Unique identifier for the object.
        attr_reader :id
        # The ID of the latest version of the PricingPlan.
        attr_reader :latest_version
        # The ID of the live version of the PricingPlan.
        attr_reader :live_version
        # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
        attr_reader :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The Stripe Tax tax behavior - whether the PricingPlan is inclusive or exclusive of tax.
        attr_reader :tax_behavior
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
