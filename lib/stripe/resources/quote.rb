# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Quote is a way to model prices that you'd like to provide to a customer.
  # Once accepted, it will automatically create an invoice, subscription or subscription schedule.
  class Quote < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save
    extend Stripe::APIOperations::NestedResource

    OBJECT_NAME = "quote"

    nested_resource_class_methods :todo,
                                  operations: %i[list],
                                  resource_plural: "TODO"
    nested_resource_class_methods :todo,
                                  operations: %i[list],
                                  resource_plural: "TODO"

    def accept(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/accept", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/cancel", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def draft_quote(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/mark_draft", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def finalize_quote(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/finalize", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def list_computed_upfront_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/computed_upfront_line_items", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/line_items", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def list_lines(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/lines", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def mark_stale_quote(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/mark_stale", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def pdf(params = {}, opts = {}, &read_body_chunk_block)
      config = opts[:client]&.config || Stripe.config
      opts = { api_base: config.uploads_base }.merge(opts)
      request_stream(
        method: :get,
        path: format("/v1/quotes/%<quote>s/pdf", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts,
        &read_body_chunk_block
      )
    end

    def preview_invoice_lines(preview_invoice, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/preview_invoices/%<preview_invoice>s/lines", { quote: CGI.escape(self["id"]), preview_invoice: CGI.escape(preview_invoice) }),
        params: params,
        opts: opts
      )
    end

    def reestimate(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/reestimate", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.accept(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/accept", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    def self.cancel(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/cancel", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    def self.draft_quote(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/mark_draft", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    def self.finalize_quote(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/finalize", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    def self.list_computed_upfront_line_items(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/computed_upfront_line_items", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    def self.list_line_items(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/line_items", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    def self.list_lines(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/lines", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    def self.mark_stale_quote(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/mark_stale", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    def self.pdf(quote, params = {}, opts = {}, &read_body_chunk_block)
      config = opts[:client]&.config || Stripe.config
      opts = { api_base: config.uploads_base }.merge(opts)
      execute_resource_request_stream(
        :get,
        format("/v1/quotes/%<quote>s/pdf", { quote: CGI.escape(quote) }),
        params,
        opts,
        &read_body_chunk_block
      )
    end

    def self.preview_invoice_lines(
      quote,
      preview_invoice,
      params = {},
      opts = {}
    )
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/preview_invoices/%<preview_invoice>s/lines", { quote: CGI.escape(quote), preview_invoice: CGI.escape(preview_invoice) }),
        params: params,
        opts: opts
      )
    end

    def self.reestimate(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/reestimate", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end
  end
end
