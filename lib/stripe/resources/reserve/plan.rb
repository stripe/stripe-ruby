# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reserve
    # ReservePlans are used to automatically place holds on a merchant's funds until the plan expires. It takes a portion of each incoming Charge (including those resulting from a Transfer from a platform account).
    class Plan < APIResource
      OBJECT_NAME = "reserve.plan"
      def self.object_name
        "reserve.plan"
      end

      class FixedRelease < ::Stripe::StripeObject
        # The time after which all reserved funds are requested for release.
        attr_reader :release_after
        # The time at which reserved funds are scheduled for release, automatically set to midnight UTC of the day after `release_after`.
        attr_reader :scheduled_release

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class RollingRelease < ::Stripe::StripeObject
        # The number of days to reserve funds before releasing.
        attr_reader :days_after_charge
        # The time at which the ReservePlan expires.
        attr_reader :expires_on

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Indicates which party created this ReservePlan.
      attr_reader :created_by
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). An unset currency indicates that the plan applies to all currencies.
      attr_reader :currency
      # Time at which the ReservePlan was disabled.
      attr_reader :disabled_at
      # Attribute for field fixed_release
      attr_reader :fixed_release
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The percent of each Charge to reserve.
      attr_reader :percent
      # Attribute for field rolling_release
      attr_reader :rolling_release
      # The current status of the ReservePlan. The ReservePlan only affects charges if it is `active`.
      attr_reader :status
      # The type of the ReservePlan.
      attr_reader :type

      def self.inner_class_types
        @inner_class_types = { fixed_release: FixedRelease, rolling_release: RollingRelease }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
