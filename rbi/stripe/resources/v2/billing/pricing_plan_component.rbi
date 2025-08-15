# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlanComponent < APIResource
        class LicenseFee < Stripe::StripeObject
          # The ID of the LicenseFee.
          sig { returns(String) }
          attr_reader :id
          # The version of the LicenseFee.
          sig { returns(String) }
          attr_reader :version
        end
        class RateCard < Stripe::StripeObject
          # The ID of the RateCard.
          sig { returns(String) }
          attr_reader :id
          # The version of the RateCard.
          sig { returns(String) }
          attr_reader :version
        end
        class ServiceAction < Stripe::StripeObject
          # The ID of the ServiceAction.
          sig { returns(String) }
          attr_reader :id
          # The version of the ServiceAction.
          sig { returns(String) }
          attr_reader :version
        end
        # Time at which the object was created.
        sig { returns(String) }
        attr_reader :created
        # Unique identifier for the PricingPlanComponent.
        sig { returns(String) }
        attr_reader :id
        # An internal key you can use to search for a particular PricingPlanComponent.
        sig { returns(T.nilable(String)) }
        attr_reader :lookup_key
        # Set of key-value pairs that you can attach to an object.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The ID of the PricingPlan this component belongs to.
        sig { returns(String) }
        attr_reader :pricing_plan
        # The ID of the PricingPlanVersion this component belongs to.
        sig { returns(String) }
        attr_reader :pricing_plan_version
        # The type of the PricingPlanComponent.
        sig { returns(String) }
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
        # Details if this component is a LicenseFee.
        sig { returns(T.nilable(LicenseFee)) }
        attr_reader :license_fee
        # Details if this component is a RateCard.
        sig { returns(T.nilable(RateCard)) }
        attr_reader :rate_card
        # Details if this component is a ServiceAction.
        sig { returns(T.nilable(ServiceAction)) }
        attr_reader :service_action
      end
    end
  end
end