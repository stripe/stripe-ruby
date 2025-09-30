# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class MeteredItemUpdateParams < Stripe::RequestParams
        class TaxDetails < Stripe::RequestParams
          # Product tax code (PTC).
          attr_accessor :tax_code

          def initialize(tax_code: nil)
            @tax_code = tax_code
          end
        end
        # Description that customers will see in the invoice line item.
        # Maximum length of 250 characters.
        attr_accessor :display_name
        # An internal key you can use to search for a particular billable item.
        # Maximum length of 200 characters.
        # To remove the lookup_key from the object, set it to null in the request.
        attr_accessor :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # Stripe Tax details.
        attr_accessor :tax_details
        # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
        # to "CPU-hour" for Checkout to display "(price) per CPU-hour", or "1 million events" to display "(price) per 1
        # million events".
        # Maximum length of 100 characters.
        # To remove the unit_label from the object, set it to null in the request.
        attr_accessor :unit_label

        def initialize(
          display_name: nil,
          lookup_key: nil,
          metadata: nil,
          tax_details: nil,
          unit_label: nil
        )
          @display_name = display_name
          @lookup_key = lookup_key
          @metadata = metadata
          @tax_details = tax_details
          @unit_label = unit_label
        end
      end
    end
  end
end
