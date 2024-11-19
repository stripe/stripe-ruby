# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A line item.
  class LineItem < APIResource
    class Discount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(Stripe::Discount) }
      attr_reader :discount
    end
    class Tax < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(Stripe::TaxRate) }
      attr_reader :rate
      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason
      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
    end
    sig { returns(Integer) }
    # Total discount amount applied. If no discounts were applied, defaults to 0.
    attr_reader :amount_discount
    sig { returns(Integer) }
    # Total before any discounts or taxes are applied.
    attr_reader :amount_subtotal
    sig { returns(Integer) }
    # Total tax amount applied. If no tax was applied, defaults to 0.
    attr_reader :amount_tax
    sig { returns(Integer) }
    # Total after discounts and taxes.
    attr_reader :amount_total
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(String) }
    # An arbitrary string attached to the object. Often useful for displaying to users. Defaults to product name.
    attr_reader :description
    sig { returns(T::Array[Discount]) }
    # The discounts applied to the line item.
    attr_reader :discounts
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(Stripe::Price)) }
    # The price used to generate the line item.
    attr_reader :price
    sig { returns(T.any(String, Stripe::Product)) }
    # The ID of the product for this line item.
    #
    # This will always be the same as `price.product`.
    attr_reader :product
    sig { returns(T.nilable(Integer)) }
    # The quantity of products being purchased.
    attr_reader :quantity
    sig { returns(T::Array[Tax]) }
    # The taxes applied to the line item.
    attr_reader :taxes
  end
end