# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A set of component subscriptions for a Pricing Plan Subscription.
      class PricingPlanSubscriptionComponents < APIResource
        OBJECT_NAME = "v2.billing.pricing_plan_subscription_components"
        def self.object_name
          "v2.billing.pricing_plan_subscription_components"
        end

        class Component < ::Stripe::StripeObject
          # The Pricing Plan Component associated with this component subscription.
          attr_reader :pricing_plan_component
          # The type of subscription.
          attr_reader :type
          # The ID of the License Fee Subscription.
          attr_reader :license_fee_subscription
          # The ID of the Rate Card Subscription.
          attr_reader :rate_card_subscription

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The component subscriptions of the Pricing Plan Subscription.
        attr_reader :components
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { components: Component }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
