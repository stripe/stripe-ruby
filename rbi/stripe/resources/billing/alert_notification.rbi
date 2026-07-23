# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class AlertNotification < APIResource
      # Whether the alert was triggered or recovered.
      sig { returns(String) }
      def action; end
      # End of the aggregation period for which this notification was sent. Only present for usage threshold alerts.
      sig { returns(T.nilable(Integer)) }
      def aggregation_period_end; end
      # Start of the aggregation period for which this notification was sent. Only present for usage threshold alerts.
      sig { returns(T.nilable(Integer)) }
      def aggregation_period_start; end
      # ID of the billing alert that generated this notification.
      sig { returns(String) }
      def alert; end
      # The type of billing alert that generated this notification.
      sig { returns(String) }
      def alert_type; end
      # The billing cadence associated with this notification. Only present for spend threshold alerts grouped by billing cadence.
      sig { returns(T.nilable(String)) }
      def cadence; end
      # Three-letter ISO currency code for the value, in lowercase. Only present for spend and credit balance threshold alerts.
      sig { returns(T.nilable(String)) }
      def currency; end
      # Custom pricing unit for the threshold value
      sig { returns(T.nilable(String)) }
      def custom_pricing_unit; end
      # ID of the customer for which the alert notification was sent.
      sig { returns(String) }
      def customer; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # ID of the billing meter associated with this notification. Only present for usage threshold alerts.
      sig { returns(T.nilable(String)) }
      def meter; end
      # ID of the event delivered for this notification. Retrievable via the Events API for a limited time; for long-term audit scenarios, capture the full event payload at webhook delivery time.
      sig { returns(String) }
      def notification_event; end
      # Time at which the notification was sent. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def notified_at; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # ID of the subscription associated with this notification. Only present for spend threshold alerts grouped by subscription.
      sig { returns(T.nilable(String)) }
      def subscription; end
      # The value that triggered the alert. This may be a decimal string for custom pricing unit alerts. For usage threshold alerts, this is the meter event count. For credit balance and spend threshold alerts, this is the amount in the smallest currency unit.
      sig { returns(String) }
      def value; end
    end
  end
end