# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # You can configure [webhook endpoints](https://stripe.com/docs/webhooks/) via the API to be
  # notified about events that happen in your Stripe account or connected
  # accounts.
  #
  # Most users configure webhooks from [the dashboard](https://dashboard.stripe.com/webhooks), which provides a user interface for registering and testing your webhook endpoints.
  #
  # Related guide: [Setting up webhooks](https://stripe.com/docs/webhooks/configure)
  class WebhookEndpoint < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "webhook_endpoint"

    # A webhook endpoint must have a url and a list of enabled_events. You may optionally specify the Boolean connect parameter. If set to true, then a Connect webhook endpoint that notifies the specified url about events from all connected accounts is created; otherwise an account webhook endpoint that notifies the specified url only about events from your account is created. You can also create webhook endpoints in the [webhooks settings](https://dashboard.stripe.com/account/webhooks) section of the Dashboard.
    def self.create(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/webhook_endpoints",
        params: params,
        opts: opts
      )
    end

    # You can also delete webhook endpoints via the [webhook endpoint management](https://dashboard.stripe.com/account/webhooks) page of the Stripe dashboard.
    def self.delete(id, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/webhook_endpoints/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # You can also delete webhook endpoints via the [webhook endpoint management](https://dashboard.stripe.com/account/webhooks) page of the Stripe dashboard.
    def delete(params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/webhook_endpoints/%<webhook_endpoint>s", { webhook_endpoint: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Returns a list of your webhook endpoints.
    def self.list(filters = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: "/v1/webhook_endpoints",
        params: filters,
        opts: opts
      )
    end

    # Updates the webhook endpoint. You may edit the url, the list of enabled_events, and the status of your endpoint.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/webhook_endpoints/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
