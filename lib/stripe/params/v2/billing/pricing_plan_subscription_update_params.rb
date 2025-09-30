# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanSubscriptionUpdateParams < Stripe::RequestParams
        # When set to true, the `servicing_status_transition.will_cancel_at` field will be cleared.
        attr_accessor :clear_cancel_at
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata

        def initialize(clear_cancel_at: nil, metadata: nil)
          @clear_cancel_at = clear_cancel_at
          @metadata = metadata
        end
      end
    end
  end
end
