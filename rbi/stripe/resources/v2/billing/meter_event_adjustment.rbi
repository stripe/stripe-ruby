# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # A Meter Event Adjustment is used to cancel or modify previously recorded meter events. Meter Event Adjustments allow you to correct billing data by canceling individual events or event ranges, with tracking of adjustment status and creation time.
      class MeterEventAdjustment < APIResource
        class Cancel < ::Stripe::StripeObject
          # The identifier that was originally assigned to the meter event. You can only cancel events within 24 hours of Stripe receiving them.
          sig { returns(String) }
          def identifier; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Specifies which event to cancel.
        sig { returns(Cancel) }
        def cancel; end
        # The time the adjustment was created.
        sig { returns(String) }
        def created; end
        # The name of the meter event. Corresponds with the `event_name` field on a meter.
        sig { returns(String) }
        def event_name; end
        # The unique ID of this meter event adjustment.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Open Enum. The meter event adjustment’s status.
        sig { returns(String) }
        def status; end
        # Open Enum. Specifies the type of cancellation. Currently supports canceling a single event.
        sig { returns(String) }
        def type; end
      end
    end
  end
end