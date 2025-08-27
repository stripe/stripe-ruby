# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when a webhook latency alert is firing.
  class V2CoreHealthWebhookLatencyFiringEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.health.webhook_latency.firing"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
