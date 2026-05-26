# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      class EventDestinationCreateParams < ::Stripe::RequestParams
        class AmazonEventbridge < ::Stripe::RequestParams
          # The AWS account ID.
          attr_accessor :aws_account_id
          # The region of the AWS event source.
          attr_accessor :aws_region

          def initialize(aws_account_id: nil, aws_region: nil)
            @aws_account_id = aws_account_id
            @aws_region = aws_region
          end
        end

        class AzureEventGrid < ::Stripe::RequestParams
          # The Azure region.
          attr_accessor :azure_region
          # The name of the Azure resource group.
          attr_accessor :azure_resource_group_name
          # The Azure subscription ID.
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
          # The URL of the webhook endpoint.
          attr_accessor :url

          def initialize(url: nil)
            @url = url
          end
        end
        # Amazon EventBridge configuration.
        attr_accessor :amazon_eventbridge
        # Azure Event Grid configuration.
        attr_accessor :azure_event_grid
        # An optional description of what the event destination is used for.
        attr_accessor :description
        # The list of events to enable for this endpoint.
        attr_accessor :enabled_events
        # Payload type of events being subscribed to.
        attr_accessor :event_payload
        # Specifies which accounts' events route to this destination.
        # `@self`: Receive events from the account that owns the event destination.
        # `@accounts`: Receive events emitted from other accounts you manage which includes your v1 and v2 accounts.
        # `@organization_members`: Receive events from accounts directly linked to the organization.
        # `@organization_members/@accounts`: Receive events from all accounts connected to any platform accounts in the organization.
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
        # Webhook endpoint configuration.
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
