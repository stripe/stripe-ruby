# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class AlertTriggered < APIResource
      OBJECT_NAME = "billing.alert_triggered"
      def self.object_name
        "billing.alert_triggered"
      end

      class AggregationPeriod < ::Stripe::StripeObject
        # End time of the aggregation period
        attr_reader :ends_at
        # Start time of the aggregation period
        attr_reader :starts_at

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class GroupBy < ::Stripe::StripeObject
        # The billing cadence ID, populated when type is `billing_cadence`
        attr_reader :billing_cadence
        # The pricing plan subscription ID, populated when type is `pricing_plan_subscription`
        attr_reader :pricing_plan_subscription
        # The type of grouping used for this alert notification
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # A billing alert is a resource that notifies you when a certain usage threshold on a meter is crossed. For example, you might create a billing alert to notify you when a certain user made 100 API requests.
      attr_reader :alert
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Currency for the threshold value
      attr_reader :currency
      # Custom pricing unit for the threshold value
      attr_reader :custom_pricing_unit
      # ID of customer for which the alert triggered
      attr_reader :customer
      # External customer ID for the customer for which the alert triggered
      attr_reader :external_customer_id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The value triggering the alert
      attr_reader :value
      # The aggregation period for which this alert triggered
      attr_reader :aggregation_period
      # Populated specifically for spend alerts to notify merchants which group_by entity has the exceeded spend
      attr_reader :group_by
      # Timestamp at which the threshold was crossed
      attr_reader :triggered_at

      def self.inner_class_types
        @inner_class_types = { aggregation_period: AggregationPeriod, group_by: GroupBy }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
