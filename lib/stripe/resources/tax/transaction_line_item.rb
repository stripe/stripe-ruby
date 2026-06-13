# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Tax
    class TransactionLineItem < APIResource
      OBJECT_NAME = "tax.transaction_line_item"
      def self.object_name
        "tax.transaction_line_item"
      end

      class PerformanceLocationDetails < ::Stripe::StripeObject
        class Address < ::Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1, such as the street, PO Box, or company name.
          attr_reader :line1
          # Address line 2, such as the apartment, suite, unit, or building.
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix, such as "NY" or "TX".
          attr_reader :state

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field address
        attr_reader :address

        def self.inner_class_types
          @inner_class_types = { address: Address }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Reversal < ::Stripe::StripeObject
        # The `id` of the line item to reverse in the original transaction.
        attr_reader :original_line_item

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The line item amount in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
      attr_reader :amount
      # The amount of tax calculated for this line item, in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
      attr_reader :amount_tax
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The address of the location where this line item's event or service takes place. Depending on the [tax code](/tax/tax-codes), providing a performance location is required, optional, or not supported. Use this to provide the address inline without pre-creating a [TaxLocation](/api/tax/location) object. Can't be used with `performance_location`.
      attr_reader :performance_location_details
      # The ID of an existing [Product](https://docs.stripe.com/api/products/object).
      attr_reader :product
      # The number of units of the item being purchased. For reversals, this is the quantity reversed.
      attr_reader :quantity
      # A custom identifier for this line item in the transaction.
      attr_reader :reference
      # If `type=reversal`, contains information about what was reversed.
      attr_reader :reversal
      # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
      attr_reader :tax_behavior
      # The [tax code](https://docs.stripe.com/tax/tax-categories) ID used for this resource.
      attr_reader :tax_code
      # If `reversal`, this line item reverses an earlier transaction.
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = {
          performance_location_details: PerformanceLocationDetails,
          reversal: Reversal,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
