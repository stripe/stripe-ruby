# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when an event generation failure alert is resolved.
  class V2CoreHealthEventGenerationFailureResolvedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.health.event_generation_failure.resolved"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
