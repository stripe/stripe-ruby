# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A line item.
  class LineItem < APIResource
    class AdjustableQuantity < ::Stripe::StripeObject
      # Attribute for field enabled
      sig { returns(T::Boolean) }
      def enabled; end
      # Attribute for field maximum
      sig { returns(T.nilable(Integer)) }
      def maximum; end
      # Attribute for field minimum
      sig { returns(T.nilable(Integer)) }
      def minimum; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Discount < ::Stripe::StripeObject
      # The amount discounted.
      sig { returns(Integer) }
      def amount; end
      # A discount represents the actual application of a [coupon](https://api.stripe.com#coupons) or [promotion code](https://api.stripe.com#promotion_codes).
      # It contains information about when the discount began, when it will end, and what it is applied to.
      #
      # Related guide: [Applying discounts to subscriptions](https://docs.stripe.com/billing/subscriptions/discounts)
      sig { returns(::Stripe::Discount) }
      def discount; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Display < ::Stripe::StripeObject
      # Attribute for field description
      sig { returns(T.nilable(String)) }
      def description; end
      # Attribute for field images
      sig { returns(T::Array[String]) }
      def images; end
      # Attribute for field name
      sig { returns(String) }
      def name; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class TaxCalculationReference < ::Stripe::StripeObject
      # The calculation identifier for tax calculation response.
      sig { returns(T.nilable(String)) }
      def calculation_id; end
      # The calculation identifier for tax calculation response line item.
      sig { returns(T.nilable(String)) }
      def calculation_item_id; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Tax < ::Stripe::StripeObject
      # Amount of tax applied for this rate.
      sig { returns(Integer) }
      def amount; end
      # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
      #
      # Related guide: [Tax rates](/billing/taxes/tax-rates)
      sig { returns(::Stripe::TaxRate) }
      def rate; end
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      sig { returns(T.nilable(String)) }
      def taxability_reason; end
      # The amount on which tax is calculated, in cents (or local equivalent).
      sig { returns(T.nilable(Integer)) }
      def taxable_amount; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Attribute for field adjustable_quantity
    sig { returns(T.nilable(AdjustableQuantity)) }
    def adjustable_quantity; end
    # Total discount amount applied. If no discounts were applied, defaults to 0.
    sig { returns(Integer) }
    def amount_discount; end
    # Total before any discounts or taxes are applied.
    sig { returns(Integer) }
    def amount_subtotal; end
    # Total tax amount applied. If no tax was applied, defaults to 0.
    sig { returns(Integer) }
    def amount_tax; end
    # Total after discounts and taxes.
    sig { returns(Integer) }
    def amount_total; end
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    def currency; end
    # An arbitrary string attached to the object. Often useful for displaying to users. Defaults to product name.
    sig { returns(T.nilable(String)) }
    def description; end
    # The discounts applied to the line item.
    sig { returns(T.nilable(T::Array[Discount])) }
    def discounts; end
    # Attribute for field display
    sig { returns(T.nilable(Display)) }
    def display; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    def metadata; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The price used to generate the line item.
    sig { returns(T.nilable(::Stripe::Price)) }
    def price; end
    # The ID of the product for this line item.
    #
    # This will always be the same as `price.product`.
    sig { returns(T.nilable(T.any(String, ::Stripe::Product))) }
    def product; end
    # The quantity of products being purchased.
    sig { returns(T.nilable(Integer)) }
    def quantity; end
    # The tax calculation identifiers of the line item.
    sig { returns(T.nilable(TaxCalculationReference)) }
    def tax_calculation_reference; end
    # The taxes applied to the line item.
    sig { returns(T.nilable(T::Array[Tax])) }
    def taxes; end
  end
end