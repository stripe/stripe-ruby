# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class PricingPlanUpdateParams < ::Stripe::RequestParams
        # Whether the PricingPlan is active.
        attr_accessor :active
        # Description of pricing plan subscription.
        attr_accessor :description
        # Display name of the PricingPlan. Maximum 250 characters.
        attr_accessor :display_name
        # The ID of the live version of the PricingPlan.
        attr_accessor :live_version
        # An internal key you can use to search for a particular PricingPlan. Maximum length of 200 characters.
        attr_accessor :lookup_key
        # Set of key-value pairs that you can attach to an object.
        attr_accessor :metadata

        def initialize(
          active: nil,
          description: nil,
          display_name: nil,
          live_version: nil,
          lookup_key: nil,
          metadata: nil
        )
          @active = active
          @description = description
          @display_name = display_name
          @live_version = live_version
          @lookup_key = lookup_key
          @metadata = metadata
        end
      end
    end
  end
end
