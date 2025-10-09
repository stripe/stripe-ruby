# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class CustomPricingUnitCreateParams < ::Stripe::RequestParams
        # Description that customers will see in the invoice line item.
        # Maximum length of 10 characters.
        attr_accessor :display_name
        # An internal key you can use to search for a particular custom pricing unit item.
        # Must be unique among items.
        # Maximum length of 200 characters.
        attr_accessor :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata

        def initialize(display_name: nil, lookup_key: nil, metadata: nil)
          @display_name = display_name
          @lookup_key = lookup_key
          @metadata = metadata
        end
      end
    end
  end
end
