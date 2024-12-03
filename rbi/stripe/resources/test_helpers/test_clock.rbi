# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    # A test clock enables deterministic control over objects in testmode. With a test clock, you can create
    # objects at a frozen time in the past or future, and advance to a specific future time to observe webhooks and state changes. After the clock advances,
    # you can either validate the current state of your scenario (and test your assumptions), change the current state of your scenario (and test more complex scenarios), or keep advancing forward in time.
    class TestClock < APIResource
      class StatusDetails < Stripe::StripeObject
        class Advancing < Stripe::StripeObject
          # The `frozen_time` that the Test Clock is advancing towards.
          sig { returns(Integer) }
          attr_reader :target_frozen_time
        end
        # Attribute for field advancing
        sig { returns(Advancing) }
        attr_reader :advancing
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Time at which this clock is scheduled to auto delete.
      sig { returns(Integer) }
      attr_reader :deletes_after

      # Time at which all objects belonging to this clock are frozen.
      sig { returns(Integer) }
      attr_reader :frozen_time

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # The custom name supplied at creation.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The status of the Test Clock.
      sig { returns(String) }
      attr_reader :status

      # Attribute for field status_details
      sig { returns(StatusDetails) }
      attr_reader :status_details

      # Always true for a deleted object
      sig { returns(T::Boolean) }
      attr_reader :deleted
    end
  end
end