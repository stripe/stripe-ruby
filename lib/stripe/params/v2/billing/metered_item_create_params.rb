# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class MeteredItemCreateParams < ::Stripe::RequestParams
        class MeterSegmentCondition < ::Stripe::RequestParams
          # A Meter dimension.
          attr_accessor :dimension
          # To count usage towards this metered item, the dimension must have this value.
          attr_accessor :value

          def initialize(dimension: nil, value: nil)
            @dimension = dimension
            @value = value
          end
        end

        class TaxDetails < ::Stripe::RequestParams
          # Product tax code (PTC).
          attr_accessor :tax_code

          def initialize(tax_code: nil)
            @tax_code = tax_code
          end
        end
        # Description that customers will see in the invoice line item.
        # Maximum length of 250 characters.
        attr_accessor :display_name
        # Optional array of Meter dimensions to group event dimension keys for invoice line items.
        attr_accessor :invoice_presentation_dimensions
        # An internal key you can use to search for a particular billable item.
        # Must be unique among billable items.
        # Maximum length of 200 characters.
        attr_accessor :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_accessor :metadata
        # ID of the Meter that measures usage for this Metered Item.
        attr_accessor :meter
        # Optional array of Meter segments to filter event dimension keys for billing.
        attr_accessor :meter_segment_conditions
        # Stripe Tax details.
        attr_accessor :tax_details
        # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
        # to "CPU-hour" for Checkout to display "(price) per CPU-hour", or "1 million events" to display "(price) per 1
        # million events".
        # Maximum length of 100 characters.
        attr_accessor :unit_label

        def initialize(
          display_name: nil,
          invoice_presentation_dimensions: nil,
          lookup_key: nil,
          metadata: nil,
          meter: nil,
          meter_segment_conditions: nil,
          tax_details: nil,
          unit_label: nil
        )
          @display_name = display_name
          @invoice_presentation_dimensions = invoice_presentation_dimensions
          @lookup_key = lookup_key
          @metadata = metadata
          @meter = meter
          @meter_segment_conditions = meter_segment_conditions
          @tax_details = tax_details
          @unit_label = unit_label
        end
      end
    end
  end
end
