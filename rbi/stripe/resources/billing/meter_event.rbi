# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # Meter events represent actions that customers take in your system. You can use meter events to bill a customer based on their usage. Meter events are associated with billing meters, which define both the contents of the event's payload and how to aggregate those events.
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
      class CreateParams < Stripe::RequestParams
        # The name of the meter event. Corresponds with the `event_name` field on a meter.
        sig { returns(String) }
        attr_accessor :event_name
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A unique identifier for the event. If not provided, one is generated. We recommend using UUID-like identifiers. We will enforce uniqueness within a rolling period of at least 24 hours. The enforcement of uniqueness primarily addresses issues arising from accidental retries or other problems occurring within extremely brief time intervals. This approach helps prevent duplicate entries and ensures data integrity in high-frequency operations.
        sig { returns(T.nilable(String)) }
        attr_accessor :identifier
        # The payload of the event. This must contain the fields corresponding to a meter's `customer_mapping.event_payload_key` (default is `stripe_customer_id`) and `value_settings.event_payload_key` (default is `value`). Read more about the [payload](https://docs.stripe.com/billing/subscriptions/usage-based/recording-usage#payload-key-overrides).
        sig { returns(T::Hash[String, String]) }
        attr_accessor :payload
        # The time of the event. Measured in seconds since the Unix epoch. Must be within the past 35 calendar days or up to 5 minutes in the future. Defaults to current timestamp if not specified.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :timestamp
        sig {
          params(event_name: String, expand: T.nilable(T::Array[String]), identifier: T.nilable(String), payload: T::Hash[String, String], timestamp: T.nilable(Integer)).void
         }
        def initialize(
          event_name: nil,
          expand: nil,
          identifier: nil,
          payload: nil,
          timestamp: nil
        ); end
      end
      # Creates a billing meter event.
      sig {
        params(params: T.any(::Stripe::Billing::MeterEvent::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Billing::MeterEvent)
       }
      def self.create(params = {}, opts = {}); end
    end
  end
end