# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A one-time item represents a product that can be charged as a one-time line item,
      # used for overage charges when custom pricing unit credits are exhausted.
      class OneTimeItem < APIResource
        OBJECT_NAME = "v2.billing.one_time_item"
        def self.object_name
          "v2.billing.one_time_item"
        end

        class TaxDetails < ::Stripe::StripeObject
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
        # An internal key you can use to search for a particular one-time item.
        # Maximum length of 200 characters.
        attr_reader :lookup_key
        # Set of [key-value pairs](/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Stripe Tax details.
        attr_reader :tax_details
        # The unit to use when displaying prices for this one-time item. For example, set this field
        # to "credit" for the display to show "(price) per credit".
        # Maximum length of 100 characters.
        attr_reader :unit_label
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { tax_details: TaxDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
