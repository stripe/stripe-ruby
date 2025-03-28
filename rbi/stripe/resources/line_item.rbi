# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A line item.
  class LineItem < APIResource
    class Discount < Stripe::StripeObject
      # The amount discounted.
      sig { returns(Integer) }
      attr_reader :amount
      # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes).
      # It contains information about when the discount began, when it will end, and what it is applied to.
      #
      # Related guide: [Applying discounts to subscriptions](https://stripe.com/docs/billing/subscriptions/discounts)
      sig { returns(Stripe::Discount) }
      attr_reader :discount
    end
    class Tax < Stripe::StripeObject
      # Amount of tax applied for this rate.
      sig { returns(Integer) }
      attr_reader :amount
      # Tax rates can be applied to [invoices](/invoicing/taxes/tax-rates), [subscriptions](/billing/taxes/tax-rates) and [Checkout Sessions](/payments/checkout/use-manual-tax-rates) to collect tax.
      #
      # Related guide: [Tax rates](/billing/taxes/tax-rates)
      sig { returns(Stripe::TaxRate) }
      attr_reader :rate
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason
      # The amount on which tax is calculated, in cents (or local equivalent).
      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
    end
    # Total discount amount applied. If no discounts were applied, defaults to 0.
    sig { returns(Integer) }
    attr_reader :amount_discount
    # Total before any discounts or taxes are applied.
    sig { returns(Integer) }
    attr_reader :amount_subtotal
    # Total tax amount applied. If no tax was applied, defaults to 0.
    sig { returns(Integer) }
    attr_reader :amount_tax
    # Total after discounts and taxes.
    sig { returns(Integer) }
    attr_reader :amount_total
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency
    # An arbitrary string attached to the object. Often useful for displaying to users. Defaults to product name.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # The discounts applied to the line item.
    sig { returns(T::Array[Discount]) }
    attr_reader :discounts
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # The price used to generate the line item.
    sig { returns(T.nilable(Stripe::Price)) }
    attr_reader :price
    # The quantity of products being purchased.
    sig { returns(T.nilable(Integer)) }
    attr_reader :quantity
    # The taxes applied to the line item.
    sig { returns(T::Array[Tax]) }
    attr_reader :taxes
  end
end