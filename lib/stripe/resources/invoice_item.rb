# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Sometimes you want to add a charge or credit to a customer, but actually
  # charge or credit the customer's card only at the end of a regular billing
  # cycle. This is useful for combining several charges (to minimize
  # per-transaction fees), or for having Stripe tabulate your usage-based billing
  # totals.
  #
  # Related guide: [Subscription Invoices](https://stripe.com/docs/billing/invoices/subscription#adding-upcoming-invoice-items).
  class InvoiceItem < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "invoiceitem"
  end
end
