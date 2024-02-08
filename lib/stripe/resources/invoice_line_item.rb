# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoiceLineItem < APIResource
    OBJECT_NAME = "line_item"

    def update_line_item(invoice, invoice_line_item, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/lines/%<invoice_line_item>s", { invoice: CGI.escape(invoice), invoice_line_item: CGI.escape(invoice_line_item) }),
        params: params,
        opts: opts
      )
    end
  end
end