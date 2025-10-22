# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A set of component subscriptions for a Pricing Plan Subscription.
      class PricingPlanSubscriptionComponents < APIResource
        class Component < ::Stripe::StripeObject
          # The Pricing Plan Component associated with this component subscription.
          sig { returns(String) }
          def pricing_plan_component; end
          # The type of subscription.
          sig { returns(String) }
          def type; end
          # The ID of the License Fee Subscription.
          sig { returns(T.nilable(String)) }
          def license_fee_subscription; end
          # The ID of the Rate Card Subscription.
          sig { returns(T.nilable(String)) }
          def rate_card_subscription; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The component subscriptions of the Pricing Plan Subscription.
        sig { returns(T::Array[Component]) }
        def components; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end