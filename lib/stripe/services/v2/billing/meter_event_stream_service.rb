# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Billing
      class MeterEventStreamService < StripeService
        class CreateParams < Stripe::RequestParams
          class Event < Stripe::RequestParams
            # The name of the meter event. Corresponds with the `event_name` field on a meter.
            attr_accessor :event_name
            # A unique identifier for the event. If not provided, one will be generated.
            # We recommend using a globally unique identifier for this. We’ll enforce
            # uniqueness within a rolling 24 hour period.
            attr_accessor :identifier
            # The payload of the event. This must contain the fields corresponding to a meter’s
            # `customer_mapping.event_payload_key` (default is `stripe_customer_id`) and
            # `value_settings.event_payload_key` (default is `value`). Read more about
            # the
            # [payload](https://docs.stripe.com/billing/subscriptions/usage-based/recording-usage#payload-key-overrides).
            attr_accessor :payload
            # The time of the event. Must be within the past 35 calendar days or up to
            # 5 minutes in the future. Defaults to current timestamp if not specified.
            attr_accessor :timestamp

            def initialize(event_name: nil, identifier: nil, payload: nil, timestamp: nil)
              @event_name = event_name
              @identifier = identifier
              @payload = payload
              @timestamp = timestamp
            end
          end
          # List of meter events to include in the request.
          attr_accessor :events

          def initialize(events: nil)
            @events = events
          end
        end

        # Creates meter events. Events are processed asynchronously, including validation. Requires a meter event session for authentication. Supports up to 10,000 requests per second in livemode. For even higher rate-limits, contact sales.
        #
        # ** raises TemporarySessionExpiredError
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/billing/meter_event_stream",
            params: params,
            opts: opts,
            base_address: :meter_events
          )
        end
      end
    end
  end
end
