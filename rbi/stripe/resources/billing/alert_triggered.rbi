# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    class AlertTriggered < APIResource
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
    end
  end
end