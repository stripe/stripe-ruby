# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A LicensedItem represents a billable item whose pricing is based on license fees. You can use LicenseFees
      # to specify the pricing and create Subscriptions to these items.
      class LicensedItem < APIResource
        OBJECT_NAME = "v2.billing.licensed_item"
        def self.object_name
          "v2.billing.licensed_item"
        end

        class TaxDetails < Stripe::StripeObject
          # Product tax code (PTC).
          attr_reader :tax_code
        end
        # Timestamp of when the object was created.
        attr_reader :created
        # Description that customers will see in the invoice line item.
        # Maximum length of 250 characters.
        attr_reader :display_name
        # The ID of the LicensedItem.
        attr_reader :id
        # An internal key you can use to search for a particular billable item.
        # Maximum length of 200 characters.
        attr_reader :lookup_key
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Stripe Tax details.
        attr_reader :tax_details
        # The unit to use when displaying prices for this billable item in places like Checkout. For example, set this field
        # to "seat" for Checkout to display "(price) per seat", or "environment" to display "(price) per environment".
        # Maximum length of 100 characters.
        attr_reader :unit_label
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
      end
    end
  end
end
