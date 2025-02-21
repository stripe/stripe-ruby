# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Invoice Line Items represent the individual lines within an [invoice](https://stripe.com/docs/api/invoices) and only exist within the context of an invoice.
  #
  # Each line item is backed by either an [invoice item](https://stripe.com/docs/api/invoiceitems) or a [subscription item](https://stripe.com/docs/api/subscription_items).
  class InvoiceLineItem < APIResource
    include Stripe::APIOperations::Save

    OBJECT_NAME = "line_item"
    def self.object_name
      "line_item"
    end

    # Updates an invoice's line item. Some fields, such as tax_amounts, only live on the invoice line item,
    # so they can only be updated through this endpoint. Other fields, such as amount, live on both the invoice
    # item and the invoice line item, so updates on this endpoint will propagate to the invoice item as well.
    # Updating an invoice's line item is only possible before the invoice is finalized.
    def self.update(invoice, line_item_id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/lines/%<line_item_id>s", { invoice: CGI.escape(invoice), line_item_id: CGI.escape(line_item_id) }),
        params: params,
        opts: opts
      )
    end
  end
end
