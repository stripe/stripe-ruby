# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class MeterEventAdjustment < APIResource
        class Cancel < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :identifier
        end
        sig { returns(Cancel) }
        # Specifies which event to cancel.
        attr_reader :cancel
        sig { returns(String) }
        # The time the adjustment was created.
        attr_reader :created
        sig { returns(String) }
        # The name of the meter event. Corresponds with the `event_name` field on a meter.
        attr_reader :event_name
        sig { returns(String) }
        # The unique id of this meter event adjustment.
        attr_reader :id
        sig { returns(T::Boolean) }
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        sig { returns(String) }
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        sig { returns(String) }
        # Open Enum. The meter event adjustment’s status.
        attr_reader :status
        sig { returns(String) }
        # Open Enum. Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
        attr_reader :type
      end
    end
  end
end