# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when an authorization rate drop alert is resolved.
  class V2CoreHealthAuthorizationRateDropResolvedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.health.authorization_rate_drop.resolved"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
