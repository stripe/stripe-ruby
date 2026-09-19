# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoiceLineItemService < StripeService
    # When retrieving an invoice, you'll get a lines property containing the total count of line items and the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list(id, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/invoices/%<id>s/lines", { id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes an InvoiceLineItem update request into a batch job JSONL line.
    def serialize_batch_update(invoice_id, id, params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:path_params] = { invoice_id: invoice_id, id: id }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end

    # Updates an invoice's line item. Some fields, such as tax_amounts, only live on the invoice line item,
    # so they can only be updated through this endpoint. Other fields, such as amount, live on both the invoice
    # item and the invoice line item, so updates on this endpoint will propagate to the invoice item as well.
    # Updating an invoice's line item is only possible before the invoice is finalized.
    def update(invoice_id, id, params = {}, opts = {})
      params = ::Stripe::InvoiceLineItemUpdateParams.coerce_params(params) unless params.is_a?(Stripe::RequestParams)

      request(
        method: :post,
        path: format("/v1/invoices/%<invoice_id>s/lines/%<id>s", { invoice_id: CGI.escape(invoice_id), id: CGI.escape(id) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
