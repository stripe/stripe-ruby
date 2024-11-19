# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # A billing alert is a resource that notifies you when a certain usage threshold on a meter is crossed. For example, you might create a billing alert to notify you when a certain user made 100 API requests.
    class Alert < APIResource
      class UsageThreshold < Stripe::StripeObject
        class Filter < Stripe::StripeObject
          sig { returns(T.nilable(T.any(String, Stripe::Customer))) }
          attr_reader :customer
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(T.nilable(T::Array[Filter])) }
        attr_reader :filters
        sig { returns(Integer) }
        attr_reader :gte
        sig { returns(T.any(String, Stripe::Billing::Meter)) }
        attr_reader :meter
        sig { returns(String) }
        attr_reader :recurrence
      end
      sig { returns(String) }
      # Defines the type of the alert.
      attr_reader :alert_type
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # Status of the alert. This can be active, inactive or archived.
      attr_reader :status
      sig { returns(String) }
      # Title of the alert.
      attr_reader :title
      sig { returns(T.nilable(UsageThreshold)) }
      # Encapsulates configuration of the alert to monitor usage on a specific [Billing Meter](https://stripe.com/docs/api/billing/meter).
      attr_reader :usage_threshold
    end
  end
end