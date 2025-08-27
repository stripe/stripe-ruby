# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when a traffic volume drop alert is resolved.
  class V2CoreHealthTrafficVolumeDropResolvedEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.health.traffic_volume_drop.resolved"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
