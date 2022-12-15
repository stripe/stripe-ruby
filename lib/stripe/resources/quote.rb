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
        path: format("/v1/quotes/%<quote>s/draft", { quote: CGI.escape(self["id"]) }),
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

    def preview_invoice_lines(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/preview_invoice_lines", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def preview_invoices(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/preview_invoices", { quote: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    def preview_subscription_schedules(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/preview_subscription_schedules", { quote: CGI.escape(self["id"]) }),
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
        path: format("/v1/quotes/%<quote>s/draft", { quote: CGI.escape(quote) }),
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

    def self.preview_invoice_lines(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/preview_invoice_lines", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    def self.preview_invoices(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/preview_invoices", { quote: CGI.escape(quote) }),
        params: params,
        opts: opts
      )
    end

    def self.preview_subscription_schedules(quote, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/quotes/%<quote>s/preview_subscription_schedules", { quote: CGI.escape(quote) }),
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

    def pdf(params = {}, opts = {}, &read_body_chunk_block)
      unless block_given?
        raise ArgumentError, "A read_body_chunk_block block parameter is required when calling the pdf method."
      end

      config = opts[:client]&.config || Stripe.config

      request_stream(
        method: :get,
        path: resource_url + "/pdf",
        params: params,
        opts: {
          api_base: config.uploads_base,
        }.merge(opts),
        &read_body_chunk_block
      )
    end

    def self.pdf(id, params = {}, opts = {}, &read_body_chunk_block)
      unless id.is_a?(String)
        raise ArgumentError,
              "id should be a string representing the ID of an API resource"
      end

      unless block_given?
        raise ArgumentError, "A read_body_chunk_block block parameter is required when calling the pdf method."
      end

      config = opts[:client]&.config || Stripe.config

      resp = execute_resource_request_stream(
        :get,
        "#{resource_url}/#{CGI.escape(id)}/pdf",
        params,
        {
          api_base: config.uploads_base,
        }.merge(opts),
        &read_body_chunk_block
      )
      resp
    end
  end
end
