# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # The credit note line item object
  class CreditNoteLineItem < StripeObject
    class DiscountAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the discount.
      sig { returns(Integer) }
      attr_reader :amount
      # The discount that was applied to get this discount amount.
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end
    class PretaxCreditAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the pretax credit amount.
      sig { returns(Integer) }
      attr_reader :amount
      # The credit balance transaction that was applied to get this pretax credit amount.
      sig { returns(T.any(String, Stripe::Billing::CreditBalanceTransaction)) }
      attr_reader :credit_balance_transaction
      # The discount that was applied to get this pretax credit amount.
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
      # Type of the pretax credit amount referenced.
      sig { returns(String) }
      attr_reader :type
    end
    class Tax < Stripe::StripeObject
      class TaxRateDetails < Stripe::StripeObject
        # Attribute for field tax_rate
        sig { returns(String) }
        attr_reader :tax_rate
      end
      # The amount of the tax, in cents (or local equivalent).
      sig { returns(Integer) }
      attr_reader :amount
      # Whether this tax is inclusive or exclusive.
      sig { returns(String) }
      attr_reader :tax_behavior
      # Additional details about the tax rate. Only present when `type` is `tax_rate_details`.
      sig { returns(T.nilable(TaxRateDetails)) }
      attr_reader :tax_rate_details
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      sig { returns(String) }
      attr_reader :taxability_reason
      # The amount on which tax is calculated, in cents (or local equivalent).
      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
      # The type of tax information.
      sig { returns(String) }
      attr_reader :type
    end
    # The integer amount in cents (or local equivalent) representing the gross amount being credited for this line item, excluding (exclusive) tax and discounts.
    sig { returns(Integer) }
    attr_reader :amount
    # Description of the item being credited.
    sig { returns(T.nilable(String)) }
    attr_reader :description
    # The integer amount in cents (or local equivalent) representing the discount being credited for this line item.
    sig { returns(Integer) }
    attr_reader :discount_amount
    # The amount of discount calculated per discount for this line item
    sig { returns(T::Array[DiscountAmount]) }
    attr_reader :discount_amounts
    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id
    # ID of the invoice line item being credited
    sig { returns(String) }
    attr_reader :invoice_line_item
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object
    # The pretax credit amounts (ex: discount, credit grants, etc) for this line item.
    sig { returns(T::Array[PretaxCreditAmount]) }
    attr_reader :pretax_credit_amounts
    # The number of units of product being credited.
    sig { returns(T.nilable(Integer)) }
    attr_reader :quantity
    # The tax rates which apply to the line item.
    sig { returns(T::Array[Stripe::TaxRate]) }
    attr_reader :tax_rates
    # The tax information of the line item.
    sig { returns(T.nilable(T::Array[Tax])) }
    attr_reader :taxes
    # The type of the credit note line item, one of `invoice_line_item` or `custom_line_item`. When the type is `invoice_line_item` there is an additional `invoice_line_item` property on the resource the value of which is the id of the credited line item on the invoice.
    sig { returns(String) }
    attr_reader :type
    # The cost of each unit of product being credited.
    sig { returns(T.nilable(Integer)) }
    attr_reader :unit_amount
    # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
    sig { returns(T.nilable(String)) }
    attr_reader :unit_amount_decimal
  end
end