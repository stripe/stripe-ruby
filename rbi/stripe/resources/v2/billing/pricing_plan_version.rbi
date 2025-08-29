# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class PricingPlanVersion < APIResource
        # Time at which the object was created.
        sig { returns(String) }
        attr_reader :created
        # The timestamp when this version became inactive. Null if it's the latest version.
        sig { returns(T.nilable(String)) }
        attr_reader :end_date
        # Unique identifier for the object.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # The ID of the PricingPlan this version belongs to.
        sig { returns(String) }
        attr_reader :pricing_plan
        # The timestamp when this version became active.
        sig { returns(String) }
        attr_reader :start_date
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end