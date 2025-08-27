# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
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
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the PricingPlan this version belongs to.
        attr_reader :pricing_plan
        # The timestamp when this version became active.
        attr_reader :start_date
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
      end
    end
  end
end
