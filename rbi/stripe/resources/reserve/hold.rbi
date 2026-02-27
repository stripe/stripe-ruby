# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Reserve
    # ReserveHolds are used to place a temporary ReserveHold on a merchant's funds.
    class Hold < APIResource
      class ReleaseSchedule < ::Stripe::StripeObject
        # The time after which the ReserveHold is requested to be released.
        sig { returns(T.nilable(Integer)) }
        def release_after; end
        # The time at which the ReserveHold is scheduled to be released, automatically set to midnight UTC of the day after `release_after`.
        sig { returns(T.nilable(Integer)) }
        def scheduled_release; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Amount reserved. A positive integer representing how much is reserved in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
      sig { returns(Integer) }
      def amount; end
      # Amount in cents that can be released from this ReserveHold
      sig { returns(T.nilable(Integer)) }
      def amount_releasable; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Indicates which party created this ReserveHold.
      sig { returns(String) }
      def created_by; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Whether there are any funds available to release on this ReserveHold. Note that if the ReserveHold is in the process of being released, this could be false, even though the funds haven't been fully released yet.
      sig { returns(T.nilable(T::Boolean)) }
      def is_releasable; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The reason for the ReserveHold.
      sig { returns(String) }
      def reason; end
      # Attribute for field release_schedule
      sig { returns(ReleaseSchedule) }
      def release_schedule; end
      # The ReservePlan which produced this ReserveHold (i.e., resplan_123)
      sig { returns(T.nilable(T.any(String, ::Stripe::Reserve::Plan))) }
      def reserve_plan; end
      # The Charge which funded this ReserveHold (e.g., ch_123)
      sig { returns(T.nilable(T.any(String, ::Stripe::Charge))) }
      def source_charge; end
      # Which source balance type this ReserveHold reserves funds from. One of `bank_account`, `card`, or `fpx`.
      sig { returns(String) }
      def source_type; end
    end
  end
end