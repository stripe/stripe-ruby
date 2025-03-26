# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # Set up an event destination to receive events from Stripe across multiple destination types, including [webhook endpoints](https://docs.stripe.com/webhooks) and [Amazon EventBridge](https://docs.stripe.com/event-destinations/eventbridge). Event destinations support receiving [thin events](https://docs.stripe.com/api/v2/events) and [snapshot events](https://docs.stripe.com/api/events).
      class EventDestination < APIResource
        OBJECT_NAME = "v2.core.event_destination"
        def self.object_name
          "v2.core.event_destination"
        end
      end
    end
  end
end
