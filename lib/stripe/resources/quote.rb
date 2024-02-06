# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Quote is a way to model prices that you'd like to provide to a customer.
  # Once accepted, it will automatically create an invoice, subscription or subscription schedule.
  class Quote < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "quote"

    # Accepts the specified quote.
    def accept(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/accept", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Cancels the quote.
    def cancel(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/cancel", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Finalizes the quote.
    def finalize_quote(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/finalize", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    def list_computed_upfront_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/computed_upfront_line_items", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/line_items", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Download the PDF for a finalized quote
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

    # Accepts the specified quote.
    def self.accept(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/accept", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Cancels the quote.
    def self.cancel(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/cancel", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Finalizes the quote.
    def self.finalize_quote(quote, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<quote>s/finalize", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a quote, there is an includable [computed.upfront.line_items](https://stripe.com/docs/api/quotes/object#quote_object-computed-upfront-line_items) property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of upfront line items.
    def self.list_computed_upfront_line_items(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/computed_upfront_line_items", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a quote, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def self.list_line_items(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/line_items", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    # Download the PDF for a finalized quote
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

    # A quote models prices and services for a customer. Default options for header, description, footer, and expires_at can be set in the dashboard via the [quote template](https://dashboard.stripe.com/settings/billing/quote).
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/quotes", params: params, opts: opts)
    end

    # Returns a list of your quotes.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/quotes", params: filters, opts: opts)
    end

    # A quote models prices and services for a customer.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/quotes/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
