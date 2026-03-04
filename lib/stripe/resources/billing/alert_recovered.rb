# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class AlertRecovered < APIResource
      OBJECT_NAME = "billing.alert_recovered"
      def self.object_name
        "billing.alert_recovered"
      end

      # A billing alert is a resource that notifies you when a certain usage threshold on a meter is crossed. For example, you might create a billing alert to notify you when a certain user made 100 API requests.
      attr_reader :alert
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Currency for the threshold value
      attr_reader :currency
      # Custom pricing unit for the threshold value
      attr_reader :custom_pricing_unit
      # ID of customer for which the alert recovered
      attr_reader :customer
      # External customer ID for the customer for which the alert recovered
      attr_reader :external_customer_id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The value at which the alert recovered
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
