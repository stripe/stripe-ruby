# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      class MeterEventStreamService < StripeService
        class CreateParams < Stripe::RequestParams
          class Event < Stripe::RequestParams
            # The name of the meter event. Corresponds with the `event_name` field on a meter.
            sig { returns(String) }
            attr_accessor :event_name
            # A unique identifier for the event. If not provided, one will be generated.
            # We recommend using a globally unique identifier for this. We’ll enforce
            # uniqueness within a rolling 24 hour period.
            sig { returns(T.nilable(String)) }
            attr_accessor :identifier
            # The payload of the event. This must contain the fields corresponding to a meter’s
            # `customer_mapping.event_payload_key` (default is `stripe_customer_id`) and
            # `value_settings.event_payload_key` (default is `value`). Read more about
            # the
            # [payload](https://docs.stripe.com/billing/subscriptions/usage-based/recording-usage#payload-key-overrides).
            sig { returns(T::Hash[String, String]) }
            attr_accessor :payload
            # The time of the event. Must be within the past 35 calendar days or up to
            # 5 minutes in the future. Defaults to current timestamp if not specified.
            sig { returns(T.nilable(String)) }
            attr_accessor :timestamp
            sig {
              params(event_name: String, identifier: T.nilable(String), payload: T::Hash[String, String], timestamp: T.nilable(String)).void
             }
            def initialize(event_name: nil, identifier: nil, payload: nil, timestamp: nil); end
          end
          # List of meter events to include in the request.
          sig {
            returns(T::Array[::Stripe::V2::Billing::MeterEventStreamService::CreateParams::Event])
           }
          attr_accessor :events
          sig {
            params(events: T::Array[::Stripe::V2::Billing::MeterEventStreamService::CreateParams::Event]).void
           }
          def initialize(events: nil); end
        end
        # Creates meter events. Events are processed asynchronously, including validation. Requires a meter event session for authentication. Supports up to 10,000 requests per second in livemode. For even higher rate-limits, contact sales.
        #
        # ** raises TemporarySessionExpiredError
        sig {
          params(params: T.any(::Stripe::V2::Billing::MeterEventStreamService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).void
         }
        def create(params = {}, opts = {}); end
      end
    end
  end
end