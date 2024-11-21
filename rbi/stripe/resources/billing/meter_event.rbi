# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # A billing meter event represents a customer's usage of a product. Meter events are used to bill a customer based on their usage.
    # Meter events are associated with billing meters, which define the shape of the event's payload and how those events are aggregated for billing.
    class MeterEvent < APIResource
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # The name of the meter event. Corresponds with the `event_name` field on a meter.
      sig { returns(String) }
      attr_reader :event_name

      # A unique identifier for the event.
      sig { returns(String) }
      attr_reader :identifier

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The payload of the event. This contains the fields corresponding to a meter's `customer_mapping.event_payload_key` (default is `stripe_customer_id`) and `value_settings.event_payload_key` (default is `value`). Read more about the [payload](https://stripe.com/docs/billing/subscriptions/usage-based/recording-usage#payload-key-overrides).
      sig { returns(T::Hash[String, String]) }
      attr_reader :payload

      # The timestamp passed in when creating the event. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :timestamp
    end
  end
end