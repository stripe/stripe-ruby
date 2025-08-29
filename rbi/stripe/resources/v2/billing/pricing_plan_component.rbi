# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlanComponent < APIResource
        class LicenseFee < Stripe::StripeObject
          # The ID of the License Fee.
          sig { returns(String) }
          attr_reader :id
          # The version of the LicenseFee. Defaults to 'latest', if not specified.
          sig { returns(T.nilable(String)) }
          attr_reader :version
        end
        class RateCard < Stripe::StripeObject
          # The ID of the Rate Card.
          sig { returns(String) }
          attr_reader :id
          # The version of the RateCard. Defaults to 'latest', if not specified.
          sig { returns(T.nilable(String)) }
          attr_reader :version
        end
        class ServiceAction < Stripe::StripeObject
          # The ID of the service action.
          sig { returns(String) }
          attr_reader :id
        end
        # Time at which the object was created.
        sig { returns(String) }
        attr_reader :created
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # An internal key you can use to search for a particular PricingPlanComponent.
        sig { returns(T.nilable(String)) }
        attr_reader :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The ID of the Pricing Plan this component belongs to.
        sig { returns(String) }
        attr_reader :pricing_plan
        # The ID of the Pricing Plan Version this component belongs to.
        sig { returns(String) }
        attr_reader :pricing_plan_version
        # The type of the PricingPlanComponent.
        sig { returns(String) }
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
        # Details if this component is a License Fee.
        sig { returns(T.nilable(LicenseFee)) }
        attr_reader :license_fee
        # Details if this component is a Rate Card.
        sig { returns(T.nilable(RateCard)) }
        attr_reader :rate_card
        # Details if this component is a Service Action.
        sig { returns(T.nilable(ServiceAction)) }
        attr_reader :service_action
      end
    end
  end
end