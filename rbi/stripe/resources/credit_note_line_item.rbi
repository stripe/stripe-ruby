# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # The credit note line item object
  class CreditNoteLineItem < StripeObject
    class DiscountAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end
    class PretaxCreditAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Billing::CreditBalanceTransaction)) }
      attr_reader :credit_balance_transaction
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
      sig { returns(String) }
      attr_reader :type
    end
    class TaxAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T::Boolean) }
      attr_reader :inclusive
      sig { returns(T.any(String, Stripe::TaxRate)) }
      attr_reader :tax_rate
      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason
      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
    end
    sig { returns(Integer) }
    # The integer amount in cents (or local equivalent) representing the gross amount being credited for this line item, excluding (exclusive) tax and discounts.
    attr_reader :amount
    sig { returns(T.nilable(Integer)) }
    # The integer amount in cents (or local equivalent) representing the amount being credited for this line item, excluding all tax and discounts.
    attr_reader :amount_excluding_tax
    sig { returns(T.nilable(String)) }
    # Description of the item being credited.
    attr_reader :description
    sig { returns(Integer) }
    # The integer amount in cents (or local equivalent) representing the discount being credited for this line item.
    attr_reader :discount_amount
    sig { returns(T::Array[DiscountAmount]) }
    # The amount of discount calculated per discount for this line item
    attr_reader :discount_amounts
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(String) }
    # ID of the invoice line item being credited
    attr_reader :invoice_line_item
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T::Array[PretaxCreditAmount]) }
    # The pretax credit amounts (ex: discount, credit grants, etc) for this line item.
    attr_reader :pretax_credit_amounts
    sig { returns(T.nilable(Integer)) }
    # The number of units of product being credited.
    attr_reader :quantity
    sig { returns(T::Array[TaxAmount]) }
    # The amount of tax calculated per tax rate for this line item
    attr_reader :tax_amounts
    sig { returns(T::Array[Stripe::TaxRate]) }
    # The tax rates which apply to the line item.
    attr_reader :tax_rates
    sig { returns(String) }
    # The type of the credit note line item, one of `invoice_line_item` or `custom_line_item`. When the type is `invoice_line_item` there is an additional `invoice_line_item` property on the resource the value of which is the id of the credited line item on the invoice.
    attr_reader :type
    sig { returns(T.nilable(Integer)) }
    # The cost of each unit of product being credited.
    attr_reader :unit_amount
    sig { returns(T.nilable(String)) }
    # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
    attr_reader :unit_amount_decimal
    sig { returns(T.nilable(String)) }
    # The amount in cents (or local equivalent) representing the unit amount being credited for this line item, excluding all tax and discounts.
    attr_reader :unit_amount_excluding_tax
  end
end