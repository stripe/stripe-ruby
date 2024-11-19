# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Invoice Items represent the component lines of an [invoice](https://stripe.com/docs/api/invoices). An invoice item is added to an
  # invoice by creating or updating it with an `invoice` field, at which point it will be included as
  # [an invoice line item](https://stripe.com/docs/api/invoices/line_item) within
  # [invoice.lines](https://stripe.com/docs/api/invoices/object#invoice_object-lines).
  #
  # Invoice Items can be created before you are ready to actually send the invoice. This can be particularly useful when combined
  # with a [subscription](https://stripe.com/docs/api/subscriptions). Sometimes you want to add a charge or credit to a customer, but actually charge
  # or credit the customer's card only at the end of a regular billing cycle. This is useful for combining several charges
  # (to minimize per-transaction fees), or for having Stripe tabulate your usage-based billing totals.
  #
  # Related guides: [Integrate with the Invoicing API](https://stripe.com/docs/invoicing/integration), [Subscription Invoices](https://stripe.com/docs/billing/invoices/subscription#adding-upcoming-invoice-items).
  class InvoiceItem < APIResource
    class Period < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :end
      sig { returns(Integer) }
      attr_reader :start
    end
    sig { returns(Integer) }
    # Amount (in the `currency` specified) of the invoice item. This should always be equal to `unit_amount * quantity`.
    attr_reader :amount
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T.any(String, Stripe::Customer)) }
    # The ID of the customer who will be billed when this invoice item is billed.
    attr_reader :customer
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :date
    sig { returns(T.nilable(String)) }
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    sig { returns(T::Boolean) }
    # If true, discounts will apply to this invoice item. Always false for prorations.
    attr_reader :discountable
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Discount)])) }
    # The discounts which apply to the invoice item. Item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    attr_reader :discounts
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    # The ID of the invoice this invoice item belongs to.
    attr_reader :invoice
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Margin)])) }
    # The margins which apply to the invoice item. When set, the `default_margins` on the invoice do not apply to this invoice item.
    attr_reader :margins
    sig { returns(T.nilable(T::Hash[String, String])) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(Period) }
    # Attribute for field period
    attr_reader :period
    sig { returns(T.nilable(Stripe::Plan)) }
    # If the invoice item is a proration, the plan of the subscription that the proration was computed for.
    attr_reader :plan
    sig { returns(T.nilable(Stripe::Price)) }
    # The price of the invoice item.
    attr_reader :price
    sig { returns(T::Boolean) }
    # Whether the invoice item was created automatically as a proration adjustment when the customer switched plans.
    attr_reader :proration
    sig { returns(Integer) }
    # Quantity of units for the invoice item. If the invoice item is a proration, the quantity of the subscription that the proration was computed for.
    attr_reader :quantity
    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    # The subscription that this invoice item has been created for, if any.
    attr_reader :subscription
    sig { returns(String) }
    # The subscription item that this invoice item has been created for, if any.
    attr_reader :subscription_item
    sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
    # The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
    attr_reader :tax_rates
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    # ID of the test clock this invoice item belongs to.
    attr_reader :test_clock
    sig { returns(T.nilable(Integer)) }
    # Unit amount (in the `currency` specified) of the invoice item.
    attr_reader :unit_amount
    sig { returns(T.nilable(String)) }
    # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
    attr_reader :unit_amount_decimal
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end