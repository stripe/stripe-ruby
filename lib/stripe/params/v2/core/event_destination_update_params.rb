# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventDestinationUpdateParams < ::Stripe::RequestParams
        class WebhookEndpoint < ::Stripe::RequestParams
          # The URL where Stripe sends matching events. Live mode requires HTTPS; sandbox mode also supports HTTP.
          attr_accessor :url

          def initialize(url: nil)
            @url = url
          end
        end
        # An optional user-defined description of the destination's purpose; it does not control routing.
        attr_accessor :description
        # The list of event types enabled for delivery to this destination. Event scopes are configured when the destination is created.
        attr_accessor :enabled_events
        # Include the normally redacted `webhook_endpoint.url` in the response.
        attr_accessor :include
        # Metadata.
        attr_accessor :metadata
        # A user-defined label for identifying the destination; it does not control routing.
        attr_accessor :name
        # New delivery target for the webhook endpoint. Live mode requires HTTPS; sandbox mode also supports HTTP.
        attr_accessor :webhook_endpoint

        def initialize(
          description: nil,
          enabled_events: nil,
          include: nil,
          metadata: nil,
          name: nil,
          webhook_endpoint: nil
        )
          @description = description
          @enabled_events = enabled_events
          @include = include
          @metadata = metadata
          @name = name
          @webhook_endpoint = webhook_endpoint
        end
      end
    end
  end
end
