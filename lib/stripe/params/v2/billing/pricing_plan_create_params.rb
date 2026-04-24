# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanCreateParams < ::Stripe::RequestParams
        # The currency of the PricingPlan.
        attr_accessor :currency
        # Description of the pricing plan. Maximum length of 500 characters.
        attr_accessor :description
        # Display name of the PricingPlan. Maximum 250 characters.
        attr_accessor :display_name
        # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
        attr_accessor :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # The tax behavior for Stripe Tax — whether the pricing plan price includes or excludes tax.
        attr_accessor :tax_behavior

        def initialize(
          currency: nil,
          description: nil,
          display_name: nil,
          lookup_key: nil,
          metadata: nil,
          tax_behavior: nil
        )
          @currency = currency
          @description = description
          @display_name = display_name
          @lookup_key = lookup_key
          @metadata = metadata
          @tax_behavior = tax_behavior
        end
      end
    end
  end
end
