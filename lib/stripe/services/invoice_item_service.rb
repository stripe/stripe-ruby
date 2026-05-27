# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class InvoiceItemService < StripeService
    # Creates an item to be added to a draft invoice (up to 250 items per invoice). If no invoice is specified, the item will be on the next invoice created for the customer specified.
    def create(params = {}, opts = {})
      params = ::Stripe::InvoiceItemCreateParams.coerce_params(params) unless params.is_a?(Stripe::RequestParams)

      request(
        method: :post,
        path: "/v1/invoiceitems",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Deletes an invoice item, removing it from an invoice. Deleting invoice items is only possible when they're not attached to invoices, or if it's attached to a draft invoice.
    def delete(invoiceitem, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/invoiceitems/%<invoiceitem>s", { invoiceitem: CGI.escape(invoiceitem) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of your invoice items. Invoice items are returned sorted by creation date, with the most recently created invoice items appearing first.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/invoiceitems",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the invoice item with the given ID.
    def retrieve(invoiceitem, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/invoiceitems/%<invoiceitem>s", { invoiceitem: CGI.escape(invoiceitem) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Serializes an InvoiceItem create request into a batch job JSONL line.
    def serialize_batch_create(params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end

    # Serializes an InvoiceItem delete request into a batch job JSONL line.
    def serialize_batch_delete(invoiceitem, params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:path_params] = { invoiceitem: invoiceitem }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end

    # Serializes an InvoiceItem update request into a batch job JSONL line.
    def serialize_batch_update(invoiceitem, params = {}, opts = {})
      request_id = SecureRandom.uuid
      stripe_version = opts[:stripe_version] || Stripe.api_version

      request_body = {
        id: request_id,
        params: params,
        stripe_version: stripe_version,
      }
      request_body[:path_params] = { invoiceitem: invoiceitem }
      request_body[:context] = opts[:stripe_context] if opts[:stripe_context]
      JSON.generate(request_body)
    end

    # Updates the amount or description of an invoice item on an upcoming invoice. Updating an invoice item is only possible before the invoice it's attached to is closed.
    def update(invoiceitem, params = {}, opts = {})
      params = ::Stripe::InvoiceItemUpdateParams.coerce_params(params) unless params.is_a?(Stripe::RequestParams)

      request(
        method: :post,
        path: format("/v1/invoiceitems/%<invoiceitem>s", { invoiceitem: CGI.escape(invoiceitem) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
