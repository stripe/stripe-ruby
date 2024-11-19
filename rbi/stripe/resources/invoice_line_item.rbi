# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Invoice Line Items represent the individual lines within an [invoice](https://stripe.com/docs/api/invoices) and only exist within the context of an invoice.
  #
  # Each line item is backed by either an [invoice item](https://stripe.com/docs/api/invoiceitems) or a [subscription item](https://stripe.com/docs/api/subscription_items).
  class InvoiceLineItem < StripeObject
    class DiscountAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
    end
    class MarginAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Margin)) }
      attr_reader :margin
    end
    class Period < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :end
      sig { returns(Integer) }
      attr_reader :start
    end
    class PretaxCreditAmount < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :amount
      sig { returns(T.nilable(T.any(String, Stripe::Billing::CreditBalanceTransaction))) }
      attr_reader :credit_balance_transaction
      sig { returns(T.any(String, Stripe::Discount)) }
      attr_reader :discount
      sig { returns(T.any(String, Stripe::Margin)) }
      attr_reader :margin
      sig { returns(String) }
      attr_reader :type
    end
    class ProrationDetails < Stripe::StripeObject
      class CreditedItems < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :invoice
        sig { returns(T::Array[String]) }
        attr_reader :invoice_line_items
      end
      sig { returns(T.nilable(CreditedItems)) }
      attr_reader :credited_items
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
    # The amount, in cents (or local equivalent).
    attr_reader :amount
    sig { returns(T.nilable(Integer)) }
    # The integer amount in cents (or local equivalent) representing the amount for this line item, excluding all tax and discounts.
    attr_reader :amount_excluding_tax
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(T.nilable(T::Array[DiscountAmount])) }
    # The amount of discount calculated per discount for this line item.
    attr_reader :discount_amounts
    sig { returns(T::Boolean) }
    # If true, discounts will apply to this line item. Always false for prorations.
    attr_reader :discountable
    sig { returns(T::Array[T.any(String, Stripe::Discount)]) }
    # The discounts applied to the invoice line item. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(String)) }
    # The ID of the invoice that contains this line item.
    attr_reader :invoice
    sig { returns(T.any(String, Stripe::InvoiceItem)) }
    # The ID of the [invoice item](https://stripe.com/docs/api/invoiceitems) associated with this line item if any.
    attr_reader :invoice_item
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T::Array[MarginAmount])) }
    # The amount of margin calculated per margin for this line item.
    attr_reader :margin_amounts
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Margin)])) }
    # The margins applied to the line item. When set, the `default_margins` on the invoice do not apply to the line item. Use `expand[]=margins` to expand each margin.
    attr_reader :margins
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Note that for line items with `type=subscription`, `metadata` reflects the current metadata from the subscription associated with the line item, unless the invoice line was directly updated with different metadata after creation.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Period) }
    # Attribute for field period
    attr_reader :period
    sig { returns(T.nilable(Stripe::Plan)) }
    # The plan of the subscription, if the line item is a subscription or a proration.
    attr_reader :plan
    sig { returns(T.nilable(T::Array[PretaxCreditAmount])) }
    # Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this line item.
    attr_reader :pretax_credit_amounts
    sig { returns(T.nilable(Stripe::Price)) }
    # The price of the line item.
    attr_reader :price
    sig { returns(T::Boolean) }
    # Whether this is a proration.
    attr_reader :proration
    sig { returns(T.nilable(ProrationDetails)) }
    # Additional details for proration line items
    attr_reader :proration_details
    sig { returns(T.nilable(Integer)) }
    # The quantity of the subscription, if the line item is a subscription or a proration.
    attr_reader :quantity
    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    # The subscription that the invoice item pertains to, if any.
    attr_reader :subscription
    sig { returns(T.any(String, Stripe::SubscriptionItem)) }
    # The subscription item that generated this line item. Left empty if the line item is not an explicit result of a subscription.
    attr_reader :subscription_item
    sig { returns(T::Array[TaxAmount]) }
    # The amount of tax calculated per tax rate for this line item
    attr_reader :tax_amounts
    sig { returns(T::Array[Stripe::TaxRate]) }
    # The tax rates which apply to the line item.
    attr_reader :tax_rates
    sig { returns(String) }
    # A string identifying the type of the source of this line item, either an `invoiceitem` or a `subscription`.
    attr_reader :type
    sig { returns(T.nilable(String)) }
    # The amount in cents (or local equivalent) representing the unit amount for this line item, excluding all tax and discounts.
    attr_reader :unit_amount_excluding_tax
  end
end