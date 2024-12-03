# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # A billing alert is a resource that notifies you when a certain usage threshold on a meter is crossed. For example, you might create a billing alert to notify you when a certain user made 100 API requests.
    class Alert < APIResource
      class UsageThreshold < Stripe::StripeObject
        class Filter < Stripe::StripeObject
          # Limit the scope of the alert to this customer ID
          sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
          attr_reader :customer
          # Attribute for field type
          sig { returns(String) }
          attr_reader :type
        end
        # The filters allow limiting the scope of this usage alert. You can only specify up to one filter at this time.
        sig { returns(T.nilable(T::Array[Filter])) }
        attr_reader :filters
        # The value at which this alert will trigger.
        sig { returns(Integer) }
        attr_reader :gte
        # The [Billing Meter](/api/billing/meter) ID whose usage is monitored.
        sig { returns(T.any(String, Stripe::Billing::Meter)) }
        attr_reader :meter
        # Defines how the alert will behave.
        sig { returns(String) }
        attr_reader :recurrence
      end
      # Defines the type of the alert.
      sig { returns(String) }
      attr_reader :alert_type

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Status of the alert. This can be active, inactive or archived.
      sig { returns(T.nilable(String)) }
      attr_reader :status

      # Title of the alert.
      sig { returns(String) }
      attr_reader :title

      # Encapsulates configuration of the alert to monitor usage on a specific [Billing Meter](https://stripe.com/docs/api/billing/meter).
      sig { returns(T.nilable(UsageThreshold)) }
      attr_reader :usage_threshold
    end
  end
end