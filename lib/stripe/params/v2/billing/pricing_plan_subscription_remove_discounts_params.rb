# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanSubscriptionRemoveDiscountsParams < ::Stripe::RequestParams
        # Expand to include additional data such as discount_details.
        attr_accessor :include

        def initialize(include: nil)
          @include = include
        end
      end
    end
  end
end
