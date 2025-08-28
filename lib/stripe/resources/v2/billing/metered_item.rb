# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A Metered Item represents a billable item whose pricing is based on usage, measured by a meter. You can use rate cards
      # to specify the pricing and create subscriptions to these items.
      class MeteredItem < APIResource
        OBJECT_NAME = "v2.billing.metered_item"
        def self.object_name
          "v2.billing.metered_item"
        end

        class MeterSegmentCondition < Stripe::StripeObject
          # A Meter dimension.
          attr_reader :dimension
          # To count usage towards this metered item, the dimension must have this value.
          attr_reader :value

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class TaxDetails < Stripe::StripeObject
          # Product tax code (PTC).
          attr_reader :tax_code

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Timestamp of when the object was created.
        attr_reader :created
        # Description that customers will see in the invoice line item.
        # Maximum length of 250 characters.
        attr_reader :display_name
        # Unique identifier for the object.
        attr_reader :id
        # Optional array of Meter dimensions to group event dimension keys for invoice line items.
        attr_reader :invoice_presentation_dimensions
        # An internal key you can use to search for a particular billable item.
        # Maximum length of 200 characters.
        attr_reader :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # ID of the Meter that measures usage for this Metered Item.
        attr_reader :meter
        # Optional array of Meter segments to filter event dimension keys for billing.
        attr_reader :meter_segment_conditions
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Stripe Tax details.
        attr_reader :tax_details
        # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
        # to "CPU-hour" for Checkout to display "(price) per CPU-hour", or "1 million events" to display "(price) per 1
        # million events".
        # Maximum length of 100 characters.
        attr_reader :unit_label
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = {
            meter_segment_conditions: MeterSegmentCondition,
            tax_details: TaxDetails,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
