# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # The credit note line item object
  class CreditNoteLineItem < StripeObject
    OBJECT_NAME = "credit_note_line_item"
    def self.object_name
      "credit_note_line_item"
    end

    class DiscountAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the discount.
      attr_reader :amount
      # The discount that was applied to get this discount amount.
      attr_reader :discount
    end

    class PretaxCreditAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the pretax credit amount.
      attr_reader :amount
      # The credit balance transaction that was applied to get this pretax credit amount.
      attr_reader :credit_balance_transaction
      # The discount that was applied to get this pretax credit amount.
      attr_reader :discount
      # Type of the pretax credit amount referenced.
      attr_reader :type
    end

    class TaxAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the tax.
      attr_reader :amount
      # Whether this tax amount is inclusive or exclusive.
      attr_reader :inclusive
      # The tax rate that was applied to get this tax amount.
      attr_reader :tax_rate
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      attr_reader :taxability_reason
      # The amount on which tax is calculated, in cents (or local equivalent).
      attr_reader :taxable_amount
    end
    # The integer amount in cents (or local equivalent) representing the gross amount being credited for this line item, excluding (exclusive) tax and discounts.
    attr_reader :amount

    # The integer amount in cents (or local equivalent) representing the amount being credited for this line item, excluding all tax and discounts.
    attr_reader :amount_excluding_tax

    # Description of the item being credited.
    attr_reader :description

    # The integer amount in cents (or local equivalent) representing the discount being credited for this line item.
    attr_reader :discount_amount

    # The amount of discount calculated per discount for this line item
    attr_reader :discount_amounts

    # Unique identifier for the object.
    attr_reader :id

    # ID of the invoice line item being credited
    attr_reader :invoice_line_item

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode

    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    # The pretax credit amounts (ex: discount, credit grants, etc) for this line item.
    attr_reader :pretax_credit_amounts

    # The number of units of product being credited.
    attr_reader :quantity

    # The amount of tax calculated per tax rate for this line item
    attr_reader :tax_amounts

    # The tax rates which apply to the line item.
    attr_reader :tax_rates

    # The type of the credit note line item, one of `invoice_line_item` or `custom_line_item`. When the type is `invoice_line_item` there is an additional `invoice_line_item` property on the resource the value of which is the id of the credited line item on the invoice.
    attr_reader :type

    # The cost of each unit of product being credited.
    attr_reader :unit_amount

    # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
    attr_reader :unit_amount_decimal

    # The amount in cents (or local equivalent) representing the unit amount being credited for this line item, excluding all tax and discounts.
    attr_reader :unit_amount_excluding_tax
  end
end
