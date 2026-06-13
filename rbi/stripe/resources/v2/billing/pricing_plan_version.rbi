# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A Pricing Plan Version represents a specific configuration of a Pricing Plan at a point in time. Versions are created
      # automatically when you update a Pricing Plan, allowing you to track changes and manage which version is active for new
      # subscriptions. Each version has a start date and optionally an end date if it has been superseded.
      class PricingPlanVersion < APIResource
        # Time at which the object was created.
        sig { returns(String) }
        def created; end
        # The timestamp when this version became inactive. null if it's the latest version.
        sig { returns(T.nilable(String)) }
        def end_date; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The ID of the PricingPlan this version belongs to.
        sig { returns(String) }
        def pricing_plan; end
        # The timestamp when this version became active.
        sig { returns(String) }
        def start_date; end
      end
    end
  end
end