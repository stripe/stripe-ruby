# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A line item.
  class LineItem < APIResource
    OBJECT_NAME = "item"
    def self.object_name
      "item"
    end

    class AdjustableQuantity < Stripe::StripeObject
      attr_reader :enabled, :maximum, :minimum
    end

    class Discount < Stripe::StripeObject
      attr_reader :amount, :discount
    end

    class Display < Stripe::StripeObject
      attr_reader :description, :images, :name
    end

    class Tax < Stripe::StripeObject
      attr_reader :amount, :rate, :taxability_reason, :taxable_amount
    end
    # Attribute for field adjustable_quantity
    attr_reader :adjustable_quantity
    # Total discount amount applied. If no discounts were applied, defaults to 0.
    attr_reader :amount_discount
    # Total before any discounts or taxes are applied.
    attr_reader :amount_subtotal
    # Total tax amount applied. If no tax was applied, defaults to 0.
    attr_reader :amount_tax
    # Total after discounts and taxes.
    attr_reader :amount_total
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # An arbitrary string attached to the object. Often useful for displaying to users. Defaults to product name.
    attr_reader :description
    # The discounts applied to the line item.
    attr_reader :discounts
    # Attribute for field display
    attr_reader :display
    # Unique identifier for the object.
    attr_reader :id
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The price used to generate the line item.
    attr_reader :price
    # The ID of the product for this line item.
    #
    # This will always be the same as `price.product`.
    attr_reader :product
    # The quantity of products being purchased.
    attr_reader :quantity
    # The taxes applied to the line item.
    attr_reader :taxes
  end
end
