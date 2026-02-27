# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Reserve
    # ReserveHolds are used to place a temporary ReserveHold on a merchant's funds.
    class Hold < APIResource
      OBJECT_NAME = "reserve.hold"
      def self.object_name
        "reserve.hold"
      end

      class ReleaseSchedule < ::Stripe::StripeObject
        # The time after which the ReserveHold is requested to be released.
        attr_reader :release_after
        # The time at which the ReserveHold is scheduled to be released, automatically set to midnight UTC of the day after `release_after`.
        attr_reader :scheduled_release

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Amount reserved. A positive integer representing how much is reserved in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
      attr_reader :amount
      # Amount in cents that can be released from this ReserveHold
      attr_reader :amount_releasable
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Indicates which party created this ReserveHold.
      attr_reader :created_by
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Unique identifier for the object.
      attr_reader :id
      # Whether there are any funds available to release on this ReserveHold. Note that if the ReserveHold is in the process of being released, this could be false, even though the funds haven't been fully released yet.
      attr_reader :is_releasable
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The reason for the ReserveHold.
      attr_reader :reason
      # Attribute for field release_schedule
      attr_reader :release_schedule
      # The ReservePlan which produced this ReserveHold (i.e., resplan_123)
      attr_reader :reserve_plan
      # The Charge which funded this ReserveHold (e.g., ch_123)
      attr_reader :source_charge
      # Which source balance type this ReserveHold reserves funds from. One of `bank_account`, `card`, or `fpx`.
      attr_reader :source_type

      def self.inner_class_types
        @inner_class_types = { release_schedule: ReleaseSchedule }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
