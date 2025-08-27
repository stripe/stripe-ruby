# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Occurs when a traffic volume drop alert is firing.
  class V2CoreHealthTrafficVolumeDropFiringEvent < Stripe::V2::Event
    def self.lookup_type
      "v2.core.health.traffic_volume_drop.firing"
    end
    # There is additional data present for this event, accessible with the `data` property.
    # See the Stripe API docs for more information.
  end
end
