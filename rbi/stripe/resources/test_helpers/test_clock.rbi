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
          sig { returns(Integer) }
          attr_reader :target_frozen_time
        end
        sig { returns(Advancing) }
        attr_reader :advancing
      end
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(Integer) }
      # Time at which this clock is scheduled to auto delete.
      attr_reader :deletes_after
      sig { returns(Integer) }
      # Time at which all objects belonging to this clock are frozen.
      attr_reader :frozen_time
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(String)) }
      # The custom name supplied at creation.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The status of the Test Clock.
      attr_reader :status
      sig { returns(StatusDetails) }
      # Attribute for field status_details
      attr_reader :status_details
      sig { returns(T::Boolean) }
      # Always true for a deleted object
      attr_reader :deleted
    end
  end
end