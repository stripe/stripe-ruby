# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A payment link is a shareable URL that will take your customers to a hosted payment page. A payment link can be shared and used multiple times.
  #
  # When a customer opens a payment link it will open a new [checkout session](https://stripe.com/docs/api/checkout/sessions) to render the payment page. You can use [checkout session events](https://stripe.com/docs/api/events/types#event_types-checkout.session.completed) to track payments through payment links.
  #
  # Related guide: [Payment Links API](https://stripe.com/docs/payment-links)
  class PaymentLink < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_link"

    # When retrieving a payment link, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/payment_links/%<payment_link>s/line_items", { payment_link: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a payment link, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def self.list_line_items(payment_link, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/payment_links/%<payment_link>s/line_items", { payment_link: CGI.escape(payment_link) }),
        params: params,
        opts: opts
      )
    end

    # Creates a payment link.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/payment_links", params: params, opts: opts)
    end

    # Returns a list of your payment links.
    def self.list(filters = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/payment_links", params: filters, opts: opts)
    end

    # Updates a payment link.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_links/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
