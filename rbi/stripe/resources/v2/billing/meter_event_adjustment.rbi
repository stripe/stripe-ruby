# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class MeterEventAdjustment < APIResource
        class Cancel < Stripe::StripeObject
          # Unique identifier for the event. You can only cancel events within 24 hours of Stripe receiving them.
          sig { returns(String) }
          attr_reader :identifier
        end
        # Specifies which event to cancel.
        sig { returns(Cancel) }
        attr_reader :cancel
        # The time the adjustment was created.
        sig { returns(String) }
        attr_reader :created
        # The name of the meter event. Corresponds with the `event_name` field on a meter.
        sig { returns(String) }
        attr_reader :event_name
        # The unique id of this meter event adjustment.
        sig { returns(String) }
        attr_reader :id
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        attr_reader :object
        # Open Enum. The meter event adjustment’s status.
        sig { returns(String) }
        attr_reader :status
        # Open Enum. Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
        sig { returns(String) }
        attr_reader :type
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        attr_reader :livemode
      end
    end
  end
end