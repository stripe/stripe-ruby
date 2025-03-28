# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class MeterEventAdjustmentService < StripeService
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
          # Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
          attr_accessor :type

          def initialize(cancel: nil, event_name: nil, type: nil)
            @cancel = cancel
            @event_name = event_name
            @type = type
          end
        end

        # Creates a meter event adjustment to cancel a previously sent meter event.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/meter_event_adjustments",
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
