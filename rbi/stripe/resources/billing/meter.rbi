# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # A billing meter is a resource that allows you to track usage of a particular event. For example, you might create a billing meter to track the number of API calls made by a particular user. You can then attach the billing meter to a price and attach the price to a subscription to charge the user for the number of API calls they make.
    #
    # Related guide: [Usage based billing](https://docs.stripe.com/billing/subscriptions/usage-based)
    class Meter < APIResource
      class CustomerMapping < Stripe::StripeObject
        # The key in the meter event payload to use for mapping the event to a customer.
        sig { returns(String) }
        attr_reader :event_payload_key
        # The method for mapping a meter event to a customer.
        sig { returns(String) }
        attr_reader :type
      end
      class DefaultAggregation < Stripe::StripeObject
        # Specifies how events are aggregated.
        sig { returns(String) }
        attr_reader :formula
      end
      class StatusTransitions < Stripe::StripeObject
        # The time the meter was deactivated, if any. Measured in seconds since Unix epoch.
        sig { returns(T.nilable(Integer)) }
        attr_reader :deactivated_at
      end
      class ValueSettings < Stripe::StripeObject
        # The key in the meter event payload to use as the value for this meter.
        sig { returns(String) }
        attr_reader :event_payload_key
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Attribute for field customer_mapping
      sig { returns(CustomerMapping) }
      attr_reader :customer_mapping

      # Attribute for field default_aggregation
      sig { returns(DefaultAggregation) }
      attr_reader :default_aggregation

      # The meter's name.
      sig { returns(String) }
      attr_reader :display_name

      # The name of the meter event to record usage for. Corresponds with the `event_name` field on meter events.
      sig { returns(String) }
      attr_reader :event_name

      # The time window to pre-aggregate meter events for, if any.
      sig { returns(T.nilable(String)) }
      attr_reader :event_time_window

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The meter's status.
      sig { returns(String) }
      attr_reader :status

      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :updated

      # Attribute for field value_settings
      sig { returns(ValueSettings) }
      attr_reader :value_settings
    end
  end
end