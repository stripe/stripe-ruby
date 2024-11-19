# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing meter is a resource that allows you to track usage of a particular event. For example, you might create a billing meter to track the number of API calls made by a particular user. You can then attach the billing meter to a price and attach the price to a subscription to charge the user for the number of API calls they make.
    #
    # Related guide: [Usage based billing](https://docs.stripe.com/billing/subscriptions/usage-based)
    class Meter < APIResource
      class CustomerMapping < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :event_payload_key
        sig { returns(String) }
        attr_reader :type
      end
      class DefaultAggregation < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :formula
      end
      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :deactivated_at
      end
      class ValueSettings < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :event_payload_key
      end
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(CustomerMapping) }
      # Attribute for field customer_mapping
      attr_reader :customer_mapping
      sig { returns(DefaultAggregation) }
      # Attribute for field default_aggregation
      attr_reader :default_aggregation
      sig { returns(String) }
      # The meter's name.
      attr_reader :display_name
      sig { returns(String) }
      # The name of the meter event to record usage for. Corresponds with the `event_name` field on meter events.
      attr_reader :event_name
      sig { returns(T.nilable(String)) }
      # The time window to pre-aggregate meter events for, if any.
      attr_reader :event_time_window
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The meter's status.
      attr_reader :status
      sig { returns(StatusTransitions) }
      # Attribute for field status_transitions
      attr_reader :status_transitions
      sig { returns(Integer) }
      # Time at which the object was last updated. Measured in seconds since the Unix epoch.
      attr_reader :updated
      sig { returns(ValueSettings) }
      # Attribute for field value_settings
      attr_reader :value_settings
    end
  end
end