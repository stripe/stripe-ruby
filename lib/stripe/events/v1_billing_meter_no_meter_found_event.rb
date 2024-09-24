# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # This event occurs when an async usage event is missing a meter.
  class V1BillingMeterNoMeterFoundEvent < Stripe::V2::Event
    def self.lookup_type
      "v1.billing.meter.no_meter_found"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
