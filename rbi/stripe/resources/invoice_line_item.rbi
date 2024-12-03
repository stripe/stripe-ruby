# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Invoice Line Items represent the individual lines within an [invoice](https://stripe.com/docs/api/invoices) and only exist within the context of an invoice.
  #
  # Each line item is backed by either an [invoice item](https://stripe.com/docs/api/invoiceitems) or a [subscription item](https://stripe.com/docs/api/subscription_items).
  class InvoiceLineItem < StripeObject
    class DiscountAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the discount.
      sig { returns(Integer) }
      attr_reader :amount
      # The discount that was applied to get this discount amount.
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end
    class MarginAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the reduction in line item amount.
      sig { returns(Integer) }
      attr_reader :amount
      # The margin that was applied to get this margin amount.
      sig { returns(T.any(String, Stripe::Margin)) }
      attr_reader :margin
    end
    class Period < Stripe::StripeObject
      # The end of the period, which must be greater than or equal to the start. This value is inclusive.
      sig { returns(Integer) }
      attr_reader :end
      # The start of the period. This value is inclusive.
      sig { returns(Integer) }
      attr_reader :start
    end
    class PretaxCreditAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the pretax credit amount.
      sig { returns(Integer) }
      attr_reader :amount
      # The credit balance transaction that was applied to get this pretax credit amount.
      sig { returns(T.nilable(T.any(String, Stripe::Billing::CreditBalanceTransaction))) }
      attr_reader :credit_balance_transaction
      # The discount that was applied to get this pretax credit amount.
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
      # The margin that was applied to get this pretax credit amount.
      sig { returns(T.any(String, Stripe::Margin)) }
      attr_reader :margin
      # Type of the pretax credit amount referenced.
      sig { returns(String) }
      attr_reader :type
    end
    class ProrationDetails < Stripe::StripeObject
      class CreditedItems < Stripe::StripeObject
        # Invoice containing the credited invoice line items
        sig { returns(String) }
        attr_reader :invoice
        # Credited invoice line items
        sig { returns(T::Array[String]) }
        attr_reader :invoice_line_items
      end
      # For a credit proration `line_item`, the original debit line_items to which the credit proration applies.
      sig { returns(T.nilable(CreditedItems)) }
      attr_reader :credited_items
    end
    class TaxAmount < Stripe::StripeObject
      # The amount, in cents (or local equivalent), of the tax.
      sig { returns(Integer) }
      attr_reader :amount
      # Whether this tax amount is inclusive or exclusive.
      sig { returns(T::Boolean) }
      attr_reader :inclusive
      # The tax rate that was applied to get this tax amount.
      sig { returns(T.any(String, Stripe::TaxRate)) }
      attr_reader :tax_rate
      # The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
      sig { returns(T.nilable(String)) }
      attr_reader :taxability_reason
      # The amount on which tax is calculated, in cents (or local equivalent).
      sig { returns(T.nilable(Integer)) }
      attr_reader :taxable_amount
    end
    # The amount, in cents (or local equivalent).
    sig { returns(Integer) }
    attr_reader :amount

    # The integer amount in cents (or local equivalent) representing the amount for this line item, excluding all tax and discounts.
    sig { returns(T.nilable(Integer)) }
    attr_reader :amount_excluding_tax

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description

    # The amount of discount calculated per discount for this line item.
    sig { returns(T.nilable(T::Array[DiscountAmount])) }
    attr_reader :discount_amounts

    # If true, discounts will apply to this line item. Always false for prorations.
    sig { returns(T::Boolean) }
    attr_reader :discountable

    # The discounts applied to the invoice line item. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    attr_reader :discounts

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # The ID of the invoice that contains this line item.
    sig { returns(T.nilable(String)) }
    attr_reader :invoice

    # The ID of the [invoice item](https://stripe.com/docs/api/invoiceitems) associated with this line item if any.
    sig { returns(T.any(String, Stripe::InvoiceItem)) }
    attr_reader :invoice_item

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # The amount of margin calculated per margin for this line item.
    sig { returns(T.nilable(T::Array[MarginAmount])) }
    attr_reader :margin_amounts

    # The margins applied to the line item. When set, the `default_margins` on the invoice do not apply to the line item. Use `expand[]=margins` to expand each margin.
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Margin)])) }
    attr_reader :margins

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Note that for line items with `type=subscription`, `metadata` reflects the current metadata from the subscription associated with the line item, unless the invoice line was directly updated with different metadata after creation.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Attribute for field period
    sig { returns(Period) }
    attr_reader :period

    # The plan of the subscription, if the line item is a subscription or a proration.
    sig { returns(T.nilable(Stripe::Plan)) }
    attr_reader :plan

    # Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this line item.
    sig { returns(T.nilable(T::Array[PretaxCreditAmount])) }
    attr_reader :pretax_credit_amounts

    # The price of the line item.
    sig { returns(T.nilable(Stripe::Price)) }
    attr_reader :price

    # Whether this is a proration.
    sig { returns(T::Boolean) }
    attr_reader :proration

    # Additional details for proration line items
    sig { returns(T.nilable(ProrationDetails)) }
    attr_reader :proration_details

    # The quantity of the subscription, if the line item is a subscription or a proration.
    sig { returns(T.nilable(Integer)) }
    attr_reader :quantity

    # The subscription that the invoice item pertains to, if any.
    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    attr_reader :subscription

    # The subscription item that generated this line item. Left empty if the line item is not an explicit result of a subscription.
    sig { returns(T.any(String, Stripe::SubscriptionItem)) }
    attr_reader :subscription_item

    # The amount of tax calculated per tax rate for this line item
    sig { returns(T::Array[TaxAmount]) }
    attr_reader :tax_amounts

    # The tax rates which apply to the line item.
    sig { returns(T::Array[Stripe::TaxRate]) }
    attr_reader :tax_rates

    # A string identifying the type of the source of this line item, either an `invoiceitem` or a `subscription`.
    sig { returns(String) }
    attr_reader :type

    # The amount in cents (or local equivalent) representing the unit amount for this line item, excluding all tax and discounts.
    sig { returns(T.nilable(String)) }
    attr_reader :unit_amount_excluding_tax
  end
end