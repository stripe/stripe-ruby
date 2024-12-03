# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # You can configure [webhook endpoints](https://docs.stripe.com/webhooks/) via the API to be
  # notified about events that happen in your Stripe account or connected
  # accounts.
  #
  # Most users configure webhooks from [the dashboard](https://dashboard.stripe.com/webhooks), which provides a user interface for registering and testing your webhook endpoints.
  #
  # Related guide: [Setting up webhooks](https://docs.stripe.com/webhooks/configure)
  class WebhookEndpoint < APIResource
    sig { returns(T.nilable(String)) }
    # The API version events are rendered as for this webhook endpoint.
    attr_reader :api_version
    sig { returns(T.nilable(String)) }
    # The ID of the associated Connect application.
    attr_reader :application
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(T.nilable(String)) }
    # An optional description of what the webhook is used for.
    attr_reader :description
    sig { returns(T::Array[String]) }
    # The list of events to enable for this endpoint. `['*']` indicates that all events are enabled, except those that require explicit selection.
    attr_reader :enabled_events
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(String) }
    # The endpoint's secret, used to generate [webhook signatures](https://docs.stripe.com/webhooks/signatures). Only returned at creation.
    attr_reader :secret
    sig { returns(String) }
    # The status of the webhook. It can be `enabled` or `disabled`.
    attr_reader :status
    sig { returns(String) }
    # The URL of the webhook endpoint.
    attr_reader :url
    sig { returns(T::Boolean) }
    # Always true for a deleted object
    attr_reader :deleted
  end
end