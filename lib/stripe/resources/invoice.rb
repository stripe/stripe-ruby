# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class Invoice < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    extend Stripe::APIOperations::Search
    include Stripe::APIOperations::Save

    OBJECT_NAME = "invoice"

    def finalize_invoice(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/finalize", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def mark_uncollectible(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/mark_uncollectible", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def pay(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/pay", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def send_invoice(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/send", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def void_invoice(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/void", { invoice: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def self.finalize_invoice(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/finalize", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    def self.list_upcoming_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/invoices/upcoming/lines",
        params: params,
        opts: opts
      )
    end

    def self.mark_uncollectible(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/mark_uncollectible", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    def self.pay(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/pay", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    def self.send_invoice(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/send", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    def self.upcoming(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/invoices/upcoming",
        params: params,
        opts: opts
      )
    end

    def self.void_invoice(invoice, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/invoices/%<invoice>s/void", { invoice: CGI.escape(invoice) }),
        params: params,
        opts: opts
      )
    end

    def self.search(params = {}, opts = {})
      _search("/v1/invoices/search", params, opts)
    end

    def self.search_auto_paging_each(params = {}, opts = {}, &blk)
      search(params, opts).auto_paging_each(&blk)
    end
  end
end
