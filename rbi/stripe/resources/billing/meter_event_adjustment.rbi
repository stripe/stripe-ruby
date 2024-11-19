# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # A billing meter event adjustment is a resource that allows you to cancel a meter event. For example, you might create a billing meter event adjustment to cancel a meter event that was created in error or attached to the wrong customer.
    class MeterEventAdjustment < APIResource
      class Cancel < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :identifier
      end
      sig { returns(T.nilable(Cancel)) }
      # Specifies which event to cancel.
      attr_reader :cancel
      sig { returns(String) }
      # The name of the meter event. Corresponds with the `event_name` field on a meter.
      attr_reader :event_name
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The meter event adjustment's status.
      attr_reader :status
      sig { returns(String) }
      # Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
      attr_reader :type
    end
  end
end