# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class WebhookEndpointService < StripeService
    class DeleteParams < Stripe::RequestParams; end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      # An optional description of what the webhook is used for.
      attr_accessor :description
      # Disable the webhook endpoint if set to true.
      attr_accessor :disabled
      # The list of events to enable for this endpoint. You may specify `['*']` to enable all events, except those that require explicit selection.
      attr_accessor :enabled_events
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The URL of the webhook endpoint.
      attr_accessor :url

      def initialize(
        description: nil,
        disabled: nil,
        enabled_events: nil,
        expand: nil,
        metadata: nil,
        url: nil
      )
        @description = description
        @disabled = disabled
        @enabled_events = enabled_events
        @expand = expand
        @metadata = metadata
        @url = url
      end
    end

    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      # Events sent to this endpoint will be generated with this Stripe Version instead of your account's default Stripe Version.
      attr_accessor :api_version
      # Whether this endpoint should receive events from connected accounts (`true`), or from your account (`false`). Defaults to `false`.
      attr_accessor :connect
      # An optional description of what the webhook is used for.
      attr_accessor :description
      # The list of events to enable for this endpoint. You may specify `['*']` to enable all events, except those that require explicit selection.
      attr_accessor :enabled_events
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The URL of the webhook endpoint.
      attr_accessor :url

      def initialize(
        api_version: nil,
        connect: nil,
        description: nil,
        enabled_events: nil,
        expand: nil,
        metadata: nil,
        url: nil
      )
        @api_version = api_version
        @connect = connect
        @description = description
        @enabled_events = enabled_events
        @expand = expand
        @metadata = metadata
        @url = url
      end
    end

    # A webhook endpoint must have a url and a list of enabled_events. You may optionally specify the Boolean connect parameter. If set to true, then a Connect webhook endpoint that notifies the specified url about events from all connected accounts is created; otherwise an account webhook endpoint that notifies the specified url only about events from your account is created. You can also create webhook endpoints in the [webhooks settings](https://dashboard.stripe.com/account/webhooks) section of the Dashboard.
    def create(params = {}, opts = {})
      request(
        method: :post,
        path: "/v1/webhook_endpoints",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # You can also delete webhook endpoints via the [webhook endpoint management](https://dashboard.stripe.com/account/webhooks) page of the Stripe dashboard.
    def delete(webhook_endpoint, params = {}, opts = {})
      request(
        method: :delete,
        path: format("/v1/webhook_endpoints/%<webhook_endpoint>s", { webhook_endpoint: CGI.escape(webhook_endpoint) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Returns a list of your webhook endpoints.
    def list(params = {}, opts = {})
      request(
        method: :get,
        path: "/v1/webhook_endpoints",
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Retrieves the webhook endpoint with the given ID.
    def retrieve(webhook_endpoint, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/webhook_endpoints/%<webhook_endpoint>s", { webhook_endpoint: CGI.escape(webhook_endpoint) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the webhook endpoint. You may edit the url, the list of enabled_events, and the status of your endpoint.
    def update(webhook_endpoint, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/webhook_endpoints/%<webhook_endpoint>s", { webhook_endpoint: CGI.escape(webhook_endpoint) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
