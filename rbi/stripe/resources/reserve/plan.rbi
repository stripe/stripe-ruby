# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Reserve
    # ReservePlans are used to automatically place holds on a merchant's funds until the plan expires. It takes a portion of each incoming Charge (including those resulting from a Transfer from a platform account).
    class Plan < APIResource
      class FixedRelease < ::Stripe::StripeObject
        # The time after which all reserved funds are requested for release.
        sig { returns(Integer) }
        def release_after; end
        # The time at which reserved funds are scheduled for release, automatically set to midnight UTC of the day after `release_after`.
        sig { returns(Integer) }
        def scheduled_release; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class RollingRelease < ::Stripe::StripeObject
        # The number of days to reserve funds before releasing.
        sig { returns(Integer) }
        def days_after_charge; end
        # The time at which the ReservePlan expires.
        sig { returns(T.nilable(Integer)) }
        def expires_on; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Indicates which party created this ReservePlan.
      sig { returns(String) }
      def created_by; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). An unset currency indicates that the plan applies to all currencies.
      sig { returns(T.nilable(String)) }
      def currency; end
      # Time at which the ReservePlan was disabled.
      sig { returns(T.nilable(Integer)) }
      def disabled_at; end
      # Attribute for field fixed_release
      sig { returns(T.nilable(FixedRelease)) }
      def fixed_release; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The percent of each Charge to reserve.
      sig { returns(Integer) }
      def percent; end
      # Attribute for field rolling_release
      sig { returns(T.nilable(RollingRelease)) }
      def rolling_release; end
      # The current status of the ReservePlan. The ReservePlan only affects charges if it is `active`.
      sig { returns(String) }
      def status; end
      # The type of the ReservePlan.
      sig { returns(String) }
      def type; end
    end
  end
end