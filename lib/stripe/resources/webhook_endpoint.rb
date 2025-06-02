# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # You can configure [webhook endpoints](https://docs.stripe.com/webhooks/) via the API to be
  # notified about events that happen in your Stripe account or connected
  # accounts.
  #
  # Most users configure webhooks from [the dashboard](https://dashboard.stripe.com/webhooks), which provides a user interface for registering and testing your webhook endpoints.
  #
  # Related guide: [Setting up webhooks](https://docs.stripe.com/webhooks/configure)
  class WebhookEndpoint < APIResource
    extend Stripe::APIOperations::Create
    include Stripe::APIOperations::Delete
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "webhook_endpoint"
    def self.object_name
      "webhook_endpoint"
    end

    class DeleteParams < Stripe::RequestParams; end

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
    # The API version events are rendered as for this webhook endpoint.
    attr_reader :api_version
    # The ID of the associated Connect application.
    attr_reader :application
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # An optional description of what the webhook is used for.
    attr_reader :description
    # The list of events to enable for this endpoint. `['*']` indicates that all events are enabled, except those that require explicit selection.
    attr_reader :enabled_events
    # Unique identifier for the object.
    attr_reader :id
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The endpoint's secret, used to generate [webhook signatures](https://docs.stripe.com/webhooks/signatures). Only returned at creation.
    attr_reader :secret
    # The status of the webhook. It can be `enabled` or `disabled`.
    attr_reader :status
    # The URL of the webhook endpoint.
    attr_reader :url
    # Always true for a deleted object
    attr_reader :deleted

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
    def self.delete(webhook_endpoint, params = {}, opts = {})
      request_stripe_object(
        method: :delete,
        path: format("/v1/webhook_endpoints/%<webhook_endpoint>s", { webhook_endpoint: CGI.escape(webhook_endpoint) }),
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
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/webhook_endpoints", params: params, opts: opts)
    end

    # Updates the webhook endpoint. You may edit the url, the list of enabled_events, and the status of your endpoint.
    def self.update(webhook_endpoint, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/webhook_endpoints/%<webhook_endpoint>s", { webhook_endpoint: CGI.escape(webhook_endpoint) }),
        params: params,
        opts: opts
      )
    end
  end
end
