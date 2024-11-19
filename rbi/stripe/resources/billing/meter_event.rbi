# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing meter event represents a customer's usage of a product. Meter events are used to bill a customer based on their usage.
    # Meter events are associated with billing meters, which define the shape of the event's payload and how those events are aggregated for billing.
    class MeterEvent < APIResource
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # The name of the meter event. Corresponds with the `event_name` field on a meter.
      attr_reader :event_name
      sig { returns(String) }
      # A unique identifier for the event.
      attr_reader :identifier
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T::Hash[String, String]) }
      # The payload of the event. This contains the fields corresponding to a meter's `customer_mapping.event_payload_key` (default is `stripe_customer_id`) and `value_settings.event_payload_key` (default is `value`). Read more about the [payload](https://stripe.com/docs/billing/subscriptions/usage-based/recording-usage#payload-key-overrides).
      attr_reader :payload
      sig { returns(Integer) }
      # The timestamp passed in when creating the event. Measured in seconds since the Unix epoch.
      attr_reader :timestamp
    end
  end
end