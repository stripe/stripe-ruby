# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A Pricing Plan Version represents a specific configuration of a Pricing Plan at a point in time. Versions are created
      # automatically when you update a Pricing Plan, allowing you to track changes and manage which version is active for new
      # subscriptions. Each version has a start date and optionally an end date if it has been superseded.
      class PricingPlanVersion < APIResource
        OBJECT_NAME = "v2.billing.pricing_plan_version"
        def self.object_name
          "v2.billing.pricing_plan_version"
        end

        # Time at which the object was created.
        attr_reader :created
        # The timestamp when this version became inactive. Null if it's the latest version.
        attr_reader :end_date
        # Unique identifier for the object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the PricingPlan this version belongs to.
        attr_reader :pricing_plan
        # The timestamp when this version became active.
        attr_reader :start_date

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
