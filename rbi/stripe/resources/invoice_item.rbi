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
      # The end of the period, which must be greater than or equal to the start. This value is inclusive.
      sig { returns(Integer) }
      attr_reader :end
      # The start of the period. This value is inclusive.
      sig { returns(Integer) }
      attr_reader :start
    end
    # Amount (in the `currency` specified) of the invoice item. This should always be equal to `unit_amount * quantity`.
    sig { returns(Integer) }
    attr_reader :amount

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # The ID of the customer who will be billed when this invoice item is billed.
    sig { returns(T.any(String, Stripe::Customer)) }
    attr_reader :customer

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :date

    # An arbitrary string attached to the object. Often useful for displaying to users.
    sig { returns(T.nilable(String)) }
    attr_reader :description

    # If true, discounts will apply to this invoice item. Always false for prorations.
    sig { returns(T::Boolean) }
    attr_reader :discountable

    # The discounts which apply to the invoice item. Item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Discount)])) }
    attr_reader :discounts

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # The ID of the invoice this invoice item belongs to.
    sig { returns(T.nilable(T.any(String, Stripe::Invoice))) }
    attr_reader :invoice

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # The margins which apply to the invoice item. When set, the `default_margins` on the invoice do not apply to this invoice item.
    sig { returns(T.nilable(T::Array[T.any(String, Stripe::Margin)])) }
    attr_reader :margins

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T.nilable(T::Hash[String, String])) }
    attr_reader :metadata

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Attribute for field period
    sig { returns(Period) }
    attr_reader :period

    # If the invoice item is a proration, the plan of the subscription that the proration was computed for.
    sig { returns(T.nilable(Stripe::Plan)) }
    attr_reader :plan

    # The price of the invoice item.
    sig { returns(T.nilable(Stripe::Price)) }
    attr_reader :price

    # Whether the invoice item was created automatically as a proration adjustment when the customer switched plans.
    sig { returns(T::Boolean) }
    attr_reader :proration

    # Quantity of units for the invoice item. If the invoice item is a proration, the quantity of the subscription that the proration was computed for.
    sig { returns(Integer) }
    attr_reader :quantity

    # The subscription that this invoice item has been created for, if any.
    sig { returns(T.nilable(T.any(String, Stripe::Subscription))) }
    attr_reader :subscription

    # The subscription item that this invoice item has been created for, if any.
    sig { returns(String) }
    attr_reader :subscription_item

    # The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
    sig { returns(T.nilable(T::Array[Stripe::TaxRate])) }
    attr_reader :tax_rates

    # ID of the test clock this invoice item belongs to.
    sig { returns(T.nilable(T.any(String, Stripe::TestHelpers::TestClock))) }
    attr_reader :test_clock

    # Unit amount (in the `currency` specified) of the invoice item.
    sig { returns(T.nilable(Integer)) }
    attr_reader :unit_amount

    # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
    sig { returns(T.nilable(String)) }
    attr_reader :unit_amount_decimal

    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end