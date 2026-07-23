# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class AlertNotification < APIResource
      OBJECT_NAME = "billing.alert_notification"
      def self.object_name
        "billing.alert_notification"
      end

      # Whether the alert was triggered or recovered.
      attr_reader :action
      # End of the aggregation period for which this notification was sent. Only present for usage threshold alerts.
      attr_reader :aggregation_period_end
      # Start of the aggregation period for which this notification was sent. Only present for usage threshold alerts.
      attr_reader :aggregation_period_start
      # ID of the billing alert that generated this notification.
      attr_reader :alert
      # The type of billing alert that generated this notification.
      attr_reader :alert_type
      # The billing cadence associated with this notification. Only present for spend threshold alerts grouped by billing cadence.
      attr_reader :cadence
      # Three-letter ISO currency code for the value, in lowercase. Only present for spend and credit balance threshold alerts.
      attr_reader :currency
      # Custom pricing unit for the threshold value
      attr_reader :custom_pricing_unit
      # ID of the customer for which the alert notification was sent.
      attr_reader :customer
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # ID of the billing meter associated with this notification. Only present for usage threshold alerts.
      attr_reader :meter
      # ID of the event delivered for this notification. Retrievable via the Events API for a limited time; for long-term audit scenarios, capture the full event payload at webhook delivery time.
      attr_reader :notification_event
      # Time at which the notification was sent. Measured in seconds since the Unix epoch.
      attr_reader :notified_at
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # ID of the subscription associated with this notification. Only present for spend threshold alerts grouped by subscription.
      attr_reader :subscription
      # The value that triggered the alert. This may be a decimal string for custom pricing unit alerts. For usage threshold alerts, this is the meter event count. For credit balance and spend threshold alerts, this is the amount in the smallest currency unit.
      attr_reader :value

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
