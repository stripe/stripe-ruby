# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class AlertTriggered < APIResource
      class AggregationPeriod < ::Stripe::StripeObject
        # End time of the aggregation period
        sig { returns(Integer) }
        def ends_at; end
        # Start time of the aggregation period
        sig { returns(Integer) }
        def starts_at; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class GroupBy < ::Stripe::StripeObject
        # The billing cadence ID, populated when type is `billing_cadence`
        sig { returns(T.nilable(String)) }
        def billing_cadence; end
        # The pricing plan subscription ID, populated when type is `pricing_plan_subscription`
        sig { returns(T.nilable(String)) }
        def pricing_plan_subscription; end
        # The type of grouping used for this alert notification
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # A billing alert is a resource that notifies you when a certain usage threshold on a meter is crossed. For example, you might create a billing alert to notify you when a certain user made 100 API requests.
      sig { returns(::Stripe::Billing::Alert) }
      def alert; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Currency for the threshold value
      sig { returns(T.nilable(String)) }
      def currency; end
      # Custom pricing unit for the threshold value
      sig { returns(T.nilable(String)) }
      def custom_pricing_unit; end
      # ID of customer for which the alert triggered
      sig { returns(String) }
      def customer; end
      # External customer ID for the customer for which the alert triggered
      sig { returns(T.nilable(String)) }
      def external_customer_id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The value triggering the alert
      sig { returns(String) }
      def value; end
      # The aggregation period for which this alert triggered
      sig { returns(T.nilable(AggregationPeriod)) }
      def aggregation_period; end
      # Populated specifically for spend alerts to notify merchants which group_by entity has the exceeded spend
      sig { returns(T.nilable(GroupBy)) }
      def group_by; end
      # Timestamp at which the threshold was crossed
      sig { returns(T.nilable(Integer)) }
      def triggered_at; end
    end
  end
end