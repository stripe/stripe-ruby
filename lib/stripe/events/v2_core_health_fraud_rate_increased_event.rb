# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when the fraud rate has increased.
  class V2CoreHealthFraudRateIncreasedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.health.fraud_rate.increased"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
