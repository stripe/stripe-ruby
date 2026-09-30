# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventDestinationCreateParams < ::Stripe::RequestParams
        class AmazonEventbridge < ::Stripe::RequestParams
          # Your AWS account where Stripe creates the partner event source.
          attr_accessor :aws_account_id
          # The AWS region where Stripe creates the partner event source.
          attr_accessor :aws_region

          def initialize(aws_account_id: nil, aws_region: nil)
            @aws_account_id = aws_account_id
            @aws_region = aws_region
          end
        end

        class AzureEventGrid < ::Stripe::RequestParams
          # The Azure region where Stripe creates the partner topic.
          attr_accessor :azure_region
          # The Azure resource group where Stripe creates the partner topic.
          attr_accessor :azure_resource_group_name
          # The Azure subscription where Stripe creates the partner topic.
          attr_accessor :azure_subscription_id

          def initialize(
            azure_region: nil,
            azure_resource_group_name: nil,
            azure_subscription_id: nil
          )
            @azure_region = azure_region
            @azure_resource_group_name = azure_resource_group_name
            @azure_subscription_id = azure_subscription_id
          end
        end

        class WebhookEndpoint < ::Stripe::RequestParams
          # The URL where Stripe sends matching events. Live mode requires HTTPS; sandbox mode also supports HTTP.
          attr_accessor :url

          def initialize(url: nil)
            @url = url
          end
        end
        # AWS account and region where Stripe creates the EventBridge partner event source.
        attr_accessor :amazon_eventbridge
        # Azure subscription, resource group, and region where Stripe creates the partner topic.
        attr_accessor :azure_event_grid
        # An optional user-defined description of the destination's purpose.
        attr_accessor :description
        # The list of event types enabled for delivery to this destination.
        attr_accessor :enabled_events
        # Whether to deliver as snapshot or thin events.
        attr_accessor :event_payload
        # The account or organization scopes that can supply events. Use this with `enabled_events` to define the subscription.
        # `@self`: Receive events from the account that owns the event destination.
        # `@accounts`: Receive events emitted from other accounts you manage, including your v1 and v2 accounts.
        # `@organization_members`: Receive events from accounts directly linked to the organization.
        # `@organization_members/@accounts`: Receive events from all accounts connected to any platform accounts in the organization.
        attr_accessor :events_from
        # Include normally redacted webhook fields in the create response. Public API clients must include `webhook_endpoint.signing_secret` to receive the signing secret.
        attr_accessor :include
        # User-defined key/value data for the destination.
        attr_accessor :metadata
        # A user-defined label for identifying the destination.
        attr_accessor :name
        # For snapshot events only, the Stripe API version used to render event objects; do not provide this for thin events.
        attr_accessor :snapshot_api_version
        # The delivery transport. Chosen when the destination is created and cannot be changed by update.
        attr_accessor :type
        # Delivery target for the webhook endpoint. Live mode requires HTTPS; sandbox mode also supports HTTP.
        attr_accessor :webhook_endpoint

        def initialize(
          amazon_eventbridge: nil,
          azure_event_grid: nil,
          description: nil,
          enabled_events: nil,
          event_payload: nil,
          events_from: nil,
          include: nil,
          metadata: nil,
          name: nil,
          snapshot_api_version: nil,
          type: nil,
          webhook_endpoint: nil
        )
          @amazon_eventbridge = amazon_eventbridge
          @azure_event_grid = azure_event_grid
          @description = description
          @enabled_events = enabled_events
          @event_payload = event_payload
          @events_from = events_from
          @include = include
          @metadata = metadata
          @name = name
          @snapshot_api_version = snapshot_api_version
          @type = type
          @webhook_endpoint = webhook_endpoint
        end
      end
    end
  end
end
