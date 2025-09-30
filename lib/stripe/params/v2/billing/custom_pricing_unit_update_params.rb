# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class CustomPricingUnitUpdateParams < Stripe::RequestParams
        # Whether the Custom Pricing Unit is active.
        attr_accessor :active
        # Description that customers will see in the invoice line item.
        attr_accessor :display_name
        # An internal key you can use to search for a particular CustomPricingUnit item.
        attr_accessor :lookup_key
        # Set of key-value pairs that you can attach to an object.
        attr_accessor :metadata

        def initialize(active: nil, display_name: nil, lookup_key: nil, metadata: nil)
          @active = active
          @display_name = display_name
          @lookup_key = lookup_key
          @metadata = metadata
        end
      end
    end
  end
end
