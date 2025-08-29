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
          def id; end
          # The version of the LicenseFee. Defaults to 'latest', if not specified.
          sig { returns(T.nilable(String)) }
          def version; end
        end
        class RateCard < Stripe::StripeObject
          # The ID of the Rate Card.
          sig { returns(String) }
          def id; end
          # The version of the RateCard. Defaults to 'latest', if not specified.
          sig { returns(T.nilable(String)) }
          def version; end
        end
        class ServiceAction < Stripe::StripeObject
          # The ID of the service action.
          sig { returns(String) }
          def id; end
        end
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # An internal key you can use to search for a particular PricingPlanComponent.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the Pricing Plan this component belongs to.
        sig { returns(String) }
        def pricing_plan; end
        # The ID of the Pricing Plan Version this component belongs to.
        sig { returns(String) }
        def pricing_plan_version; end
        # The type of the PricingPlanComponent.
        sig { returns(String) }
        def type; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # Details if this component is a License Fee.
        sig { returns(T.nilable(LicenseFee)) }
        def license_fee; end
        # Details if this component is a Rate Card.
        sig { returns(T.nilable(RateCard)) }
        def rate_card; end
        # Details if this component is a Service Action.
        sig { returns(T.nilable(ServiceAction)) }
        def service_action; end
      end
    end
  end
end