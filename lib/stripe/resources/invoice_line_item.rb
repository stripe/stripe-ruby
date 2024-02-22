# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoiceLineItem < StripeObject
    include Stripe::APIOperations::Save

    OBJECT_NAME = "line_item"
    def self.object_name
      "line_item"
    end

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
