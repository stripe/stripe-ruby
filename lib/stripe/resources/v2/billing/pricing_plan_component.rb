# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanComponent < APIResource
        OBJECT_NAME = "v2.billing.pricing_plan_component"
        def self.object_name
          "v2.billing.pricing_plan_component"
        end

        class LicenseFee < Stripe::StripeObject
          # The ID of the LicenseFee.
          attr_reader :id
          # The version of the LicenseFee.
          attr_reader :version
        end

        class RateCard < Stripe::StripeObject
          # The ID of the RateCard.
          attr_reader :id
          # The version of the RateCard.
          attr_reader :version
        end

        class ServiceAction < Stripe::StripeObject
          # The ID of the ServiceAction.
          attr_reader :id
          # The version of the ServiceAction.
          attr_reader :version
        end
        # Time at which the object was created.
        attr_reader :created
        # Unique identifier for the PricingPlanComponent.
        attr_reader :id
        # An internal key you can use to search for a particular PricingPlanComponent.
        attr_reader :lookup_key
        # Set of key-value pairs that you can attach to an object.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the PricingPlan this component belongs to.
        attr_reader :pricing_plan
        # The ID of the PricingPlanVersion this component belongs to.
        attr_reader :pricing_plan_version
        # The type of the PricingPlanComponent.
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Details if this component is a LicenseFee.
        attr_reader :license_fee
        # Details if this component is a RateCard.
        attr_reader :rate_card
        # Details if this component is a ServiceAction.
        attr_reader :service_action
      end
    end
  end
end
