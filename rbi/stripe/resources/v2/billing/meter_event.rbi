# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Billing
      # Fix me empty_doc_string.
      class MeterEvent < APIResource
        sig { returns(String) }
        # The creation time of this meter event.
        attr_reader :created
        sig { returns(String) }
        # The name of the meter event. Corresponds with the `event_name` field on a meter.
        attr_reader :event_name
        sig { returns(String) }
        # A unique identifier for the event. If not provided, one will be generated. We recommend using a globally unique identifier for this. We’ll enforce uniqueness within a rolling 24 hour period.
        attr_reader :identifier
        sig { returns(T::Boolean) }
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        sig { returns(String) }
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        sig { returns(T::Hash[String, String]) }
        # The payload of the event. This must contain the fields corresponding to a meter’s
        # `customer_mapping.event_payload_key` (default is `stripe_customer_id`) and
        # `value_settings.event_payload_key` (default is `value`). Read more about the payload.
        attr_reader :payload
        sig { returns(String) }
        # The time of the event. Must be within the past 35 calendar days or up to
        # 5 minutes in the future. Defaults to current timestamp if not specified.
        attr_reader :timestamp
      end
    end
  end
end