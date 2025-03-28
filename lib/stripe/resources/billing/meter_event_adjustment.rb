# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # A billing meter event adjustment is a resource that allows you to cancel a meter event. For example, you might create a billing meter event adjustment to cancel a meter event that was created in error or attached to the wrong customer.
    class MeterEventAdjustment < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "billing.meter_event_adjustment"
      def self.object_name
        "billing.meter_event_adjustment"
      end

      class Cancel < Stripe::StripeObject
        # Unique identifier for the event.
        attr_reader :identifier
      end

      class CreateParams < Stripe::RequestParams
        class Cancel < Stripe::RequestParams
          # Unique identifier for the event. You can only cancel events within 24 hours of Stripe receiving them.
          attr_accessor :identifier

          def initialize(identifier: nil)
            @identifier = identifier
          end
        end
        # Specifies which event to cancel.
        attr_accessor :cancel
        # The name of the meter event. Corresponds with the `event_name` field on a meter.
        attr_accessor :event_name
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
        attr_accessor :type

        def initialize(cancel: nil, event_name: nil, expand: nil, type: nil)
          @cancel = cancel
          @event_name = event_name
          @expand = expand
          @type = type
        end
      end
      # Specifies which event to cancel.
      attr_reader :cancel
      # The name of the meter event. Corresponds with the `event_name` field on a meter.
      attr_reader :event_name
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The meter event adjustment's status.
      attr_reader :status
      # Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
      attr_reader :type

      # Creates a billing meter event adjustment.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/billing/meter_event_adjustments",
          params: params,
          opts: opts
        )
      end
    end
  end
end
