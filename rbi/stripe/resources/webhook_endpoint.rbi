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
    # The API version events are rendered as for this webhook endpoint.
    sig { returns(T.nilable(String)) }
    attr_reader :api_version

    # The ID of the associated Connect application.
    sig { returns(T.nilable(String)) }
    attr_reader :application

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # An optional description of what the webhook is used for.
    sig { returns(T.nilable(String)) }
    attr_reader :description

    # The list of events to enable for this endpoint. `['*']` indicates that all events are enabled, except those that require explicit selection.
    sig { returns(T::Array[String]) }
    attr_reader :enabled_events

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The endpoint's secret, used to generate [webhook signatures](https://docs.stripe.com/webhooks/signatures). Only returned at creation.
    sig { returns(String) }
    attr_reader :secret

    # The status of the webhook. It can be `enabled` or `disabled`.
    sig { returns(String) }
    attr_reader :status

    # The URL of the webhook endpoint.
    sig { returns(String) }
    attr_reader :url

    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end