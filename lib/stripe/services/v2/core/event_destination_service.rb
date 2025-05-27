# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventDestinationService < StripeService
        class CreateParams < Stripe::RequestParams
          class AmazonEventbridge < Stripe::RequestParams
            # The AWS account ID.
            attr_accessor :aws_account_id
            # The region of the AWS event source.
            attr_accessor :aws_region

            def initialize(aws_account_id: nil, aws_region: nil)
              @aws_account_id = aws_account_id
              @aws_region = aws_region
            end
          end

          class WebhookEndpoint < Stripe::RequestParams
            # The URL of the webhook endpoint.
            attr_accessor :url

            def initialize(url: nil)
              @url = url
            end
          end
          # An optional description of what the event destination is used for.
          attr_accessor :description
          # The list of events to enable for this endpoint.
          attr_accessor :enabled_events
          # Payload type of events being subscribed to.
          attr_accessor :event_payload
          # Where events should be routed from.
          attr_accessor :events_from
          # Additional fields to include in the response.
          attr_accessor :include
          # Metadata.
          attr_accessor :metadata
          # Event destination name.
          attr_accessor :name
          # If using the snapshot event payload, the API version events are rendered as.
          attr_accessor :snapshot_api_version
          # Event destination type.
          attr_accessor :type
          # Amazon EventBridge configuration.
          attr_accessor :amazon_eventbridge
          # Webhook endpoint configuration.
          attr_accessor :webhook_endpoint

          def initialize(
            description: nil,
            enabled_events: nil,
            event_payload: nil,
            events_from: nil,
            include: nil,
            metadata: nil,
            name: nil,
            snapshot_api_version: nil,
            type: nil,
            amazon_eventbridge: nil,
            webhook_endpoint: nil
          )
            @description = description
            @enabled_events = enabled_events
            @event_payload = event_payload
            @events_from = events_from
            @include = include
            @metadata = metadata
            @name = name
            @snapshot_api_version = snapshot_api_version
            @type = type
            @amazon_eventbridge = amazon_eventbridge
            @webhook_endpoint = webhook_endpoint
          end
        end

        class DeleteParams < Stripe::RequestParams; end
        class DisableParams < Stripe::RequestParams; end
        class EnableParams < Stripe::RequestParams; end

        class ListParams < Stripe::RequestParams
          # Additional fields to include in the response. Currently supports `webhook_endpoint.url`.
          attr_accessor :include
          # The page size.
          attr_accessor :limit

          def initialize(include: nil, limit: nil)
            @include = include
            @limit = limit
          end
        end

        class PingParams < Stripe::RequestParams; end

        class RetrieveParams < Stripe::RequestParams
          # Additional fields to include in the response.
          attr_accessor :include

          def initialize(include: nil)
            @include = include
          end
        end

        class UpdateParams < Stripe::RequestParams
          class WebhookEndpoint < Stripe::RequestParams
            # The URL of the webhook endpoint.
            attr_accessor :url

            def initialize(url: nil)
              @url = url
            end
          end
          # An optional description of what the event destination is used for.
          attr_accessor :description
          # The list of events to enable for this endpoint.
          attr_accessor :enabled_events
          # Additional fields to include in the response. Currently supports `webhook_endpoint.url`.
          attr_accessor :include
          # Metadata.
          attr_accessor :metadata
          # Event destination name.
          attr_accessor :name
          # Webhook endpoint configuration.
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

        # Create a new event destination.
        def create(params = {}, opts = {})
          request(
            method: :post,
            path: "/v2/core/event_destinations",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Delete an event destination.
        def delete(id, params = {}, opts = {})
          request(
            method: :delete,
            path: format("/v2/core/event_destinations/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Disable an event destination.
        def disable(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/core/event_destinations/%<id>s/disable", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Enable an event destination.
        def enable(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/core/event_destinations/%<id>s/enable", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Lists all event destinations.
        def list(params = {}, opts = {})
          request(
            method: :get,
            path: "/v2/core/event_destinations",
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Send a `ping` event to an event destination.
        def ping(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/core/event_destinations/%<id>s/ping", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Retrieves the details of an event destination.
        def retrieve(id, params = {}, opts = {})
          request(
            method: :get,
            path: format("/v2/core/event_destinations/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end

        # Update the details of an event destination.
        def update(id, params = {}, opts = {})
          request(
            method: :post,
            path: format("/v2/core/event_destinations/%<id>s", { id: CGI.escape(id) }),
            params: params,
            opts: opts,
            base_address: :api
          )
        end
      end
    end
  end
end
