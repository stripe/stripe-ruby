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

        class LicenseFee < ::Stripe::StripeObject
          # The ID of the License Fee.
          attr_reader :id
          # The version of the LicenseFee. Defaults to 'latest', if not specified.
          attr_reader :version

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class RateCard < ::Stripe::StripeObject
          # The ID of the Rate Card.
          attr_reader :id
          # The version of the RateCard. Defaults to 'latest', if not specified.
          attr_reader :version

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ServiceAction < ::Stripe::StripeObject
          # The ID of the service action.
          attr_reader :id

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Time at which the object was created.
        attr_reader :created
        # Unique identifier for the object.
        attr_reader :id
        # An internal key you can use to search for a particular PricingPlanComponent.
        attr_reader :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The ID of the Pricing Plan this component belongs to.
        attr_reader :pricing_plan
        # The ID of the Pricing Plan Version this component belongs to.
        attr_reader :pricing_plan_version
        # The type of the PricingPlanComponent.
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # Details if this component is a License Fee.
        attr_reader :license_fee
        # Details if this component is a Rate Card.
        attr_reader :rate_card
        # Details if this component is a Service Action.
        attr_reader :service_action

        def self.inner_class_types
          @inner_class_types = {
            license_fee: LicenseFee,
            rate_card: RateCard,
            service_action: ServiceAction,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
