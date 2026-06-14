# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      # A Meter Event Adjustment is used to cancel or modify previously recorded meter events. Meter Event Adjustments allow you to correct billing data by canceling individual events or event ranges, with tracking of adjustment status and creation time.
      class MeterEventAdjustment < APIResource
        OBJECT_NAME = "v2.billing.meter_event_adjustment"
        def self.object_name
          "v2.billing.meter_event_adjustment"
        end

        class Cancel < ::Stripe::StripeObject
          # The identifier that was originally assigned to the meter event. You can only cancel events within 24 hours of Stripe receiving them.
          attr_reader :identifier

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Specifies which event to cancel.
        attr_reader :cancel
        # The time the adjustment was created.
        attr_reader :created
        # The name of the meter event. Corresponds with the `event_name` field on a meter.
        attr_reader :event_name
        # The unique ID of this meter event adjustment.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Open Enum. The meter event adjustment’s status.
        attr_reader :status
        # Open Enum. Specifies the type of cancellation. Currently supports canceling a single event.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { cancel: Cancel }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
