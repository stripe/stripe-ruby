# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Tax
    class TransactionLineItem < APIResource
      class PerformanceLocationDetails < ::Stripe::StripeObject
        class Address < ::Stripe::StripeObject
          # City, district, suburb, town, or village.
          sig { returns(T.nilable(String)) }
          def city; end
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          def country; end
          # Address line 1, such as the street, PO Box, or company name.
          sig { returns(T.nilable(String)) }
          def line1; end
          # Address line 2, such as the apartment, suite, unit, or building.
          sig { returns(T.nilable(String)) }
          def line2; end
          # ZIP or postal code.
          sig { returns(T.nilable(String)) }
          def postal_code; end
          # State/province as an [ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2) subdivision code, without country prefix, such as "NY" or "TX".
          sig { returns(T.nilable(String)) }
          def state; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field address
        sig { returns(Address) }
        def address; end
        def self.inner_class_types
          @inner_class_types = {address: Address}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Reversal < ::Stripe::StripeObject
        # The `id` of the line item to reverse in the original transaction.
        sig { returns(String) }
        def original_line_item; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The line item amount in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units). If `tax_behavior=inclusive`, then this amount includes taxes. Otherwise, taxes were calculated on top of this amount.
      sig { returns(Integer) }
      def amount; end
      # The amount of tax calculated for this line item, in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
      sig { returns(Integer) }
      def amount_tax; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The address of the location where this line item's event or service takes place. Depending on the [tax code](/tax/tax-codes), providing a performance location is required, optional, or not supported. Use this to provide the address inline without pre-creating a [TaxLocation](/api/tax/location) object. Can't be used with `performance_location`.
      sig { returns(T.nilable(PerformanceLocationDetails)) }
      def performance_location_details; end
      # The ID of an existing [Product](https://docs.stripe.com/api/products/object).
      sig { returns(T.nilable(String)) }
      def product; end
      # The number of units of the item being purchased. For reversals, this is the quantity reversed.
      sig { returns(Integer) }
      def quantity; end
      # A custom identifier for this line item in the transaction.
      sig { returns(String) }
      def reference; end
      # If `type=reversal`, contains information about what was reversed.
      sig { returns(T.nilable(Reversal)) }
      def reversal; end
      # Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
      sig { returns(String) }
      def tax_behavior; end
      # The [tax code](https://docs.stripe.com/tax/tax-categories) ID used for this resource.
      sig { returns(String) }
      def tax_code; end
      # If `reversal`, this line item reverses an earlier transaction.
      sig { returns(String) }
      def type; end
    end
  end
end