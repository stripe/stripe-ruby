# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Invoice Line Items represent the individual lines within an [invoice](https://stripe.com/docs/api/invoices) and only exist within the context of an invoice.
  #
  # Each line item is backed by either an [invoice item](https://stripe.com/docs/api/invoiceitems) or a [subscription item](https://stripe.com/docs/api/subscription_items).
  class InvoiceLineItem < StripeObject
    include Stripe::APIOperations::Save

    OBJECT_NAME = "line_item"
    def self.object_name
      "line_item"
    end

    class DiscountAmount < Stripe::StripeObject
      attr_reader :amount, :discount
    end

    class MarginAmount < Stripe::StripeObject
      attr_reader :amount, :margin
    end

    class Period < Stripe::StripeObject
      attr_reader :end, :start
    end

    class PretaxCreditAmount < Stripe::StripeObject
      attr_reader :amount, :credit_balance_transaction, :discount, :margin, :type
    end

    class ProrationDetails < Stripe::StripeObject
      class CreditedItems < Stripe::StripeObject
        attr_reader :invoice, :invoice_line_items
      end
      attr_reader :credited_items
    end

    class TaxAmount < Stripe::StripeObject
      attr_reader :amount, :inclusive, :tax_rate, :taxability_reason, :taxable_amount
    end
    # The amount, in cents (or local equivalent).
    attr_reader :amount
    # The integer amount in cents (or local equivalent) representing the amount for this line item, excluding all tax and discounts.
    attr_reader :amount_excluding_tax
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # The amount of discount calculated per discount for this line item.
    attr_reader :discount_amounts
    # If true, discounts will apply to this line item. Always false for prorations.
    attr_reader :discountable
    # The discounts applied to the invoice line item. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    # Unique identifier for the object.
    attr_reader :id
    # The ID of the invoice that contains this line item.
    attr_reader :invoice
    # The ID of the [invoice item](https://stripe.com/docs/api/invoiceitems) associated with this line item if any.
    attr_reader :invoice_item
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # The amount of margin calculated per margin for this line item.
    attr_reader :margin_amounts
    # The margins applied to the line item. When set, the `default_margins` on the invoice do not apply to the line item. Use `expand[]=margins` to expand each margin.
    attr_reader :margins
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Note that for line items with `type=subscription`, `metadata` reflects the current metadata from the subscription associated with the line item, unless the invoice line was directly updated with different metadata after creation.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Attribute for field period
    attr_reader :period
    # The plan of the subscription, if the line item is a subscription or a proration.
    attr_reader :plan
    # Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this line item.
    attr_reader :pretax_credit_amounts
    # The price of the line item.
    attr_reader :price
    # Whether this is a proration.
    attr_reader :proration
    # Additional details for proration line items
    attr_reader :proration_details
    # The quantity of the subscription, if the line item is a subscription or a proration.
    attr_reader :quantity
    # The subscription that the invoice item pertains to, if any.
    attr_reader :subscription
    # The subscription item that generated this line item. Left empty if the line item is not an explicit result of a subscription.
    attr_reader :subscription_item
    # The amount of tax calculated per tax rate for this line item
    attr_reader :tax_amounts
    # The tax rates which apply to the line item.
    attr_reader :tax_rates
    # A string identifying the type of the source of this line item, either an `invoiceitem` or a `subscription`.
    attr_reader :type
    # The amount in cents (or local equivalent) representing the unit amount for this line item, excluding all tax and discounts.
    attr_reader :unit_amount_excluding_tax

    # Updates an invoice's line item. Some fields, such as tax_amounts, only live on the invoice line item,
    # so they can only be updated through this endpoint. Other fields, such as amount, live on both the invoice
    # item and the invoice line item, so updates on this endpoint will propagate to the invoice item as well.
    # Updating an invoice's line item is only possible before the invoice is finalized.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/lines/%<id>s", { invoice: CGI.escape(invoice), id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
