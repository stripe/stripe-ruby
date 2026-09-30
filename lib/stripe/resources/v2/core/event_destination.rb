# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # Set up an event destination to receive events from Stripe across multiple destination types, including [webhook endpoints](https://docs.stripe.com/webhooks), [Amazon EventBridge](https://docs.stripe.com/event-destinations/eventbridge), and [Azure Event Grid](https://docs.stripe.com/event-destinations/eventgrid). Event destinations support receiving [thin events](https://docs.stripe.com/api/v2/events) and [snapshot events](https://docs.stripe.com/api/events).
      class EventDestination < APIResource
        OBJECT_NAME = "v2.core.event_destination"
        def self.object_name
          "v2.core.event_destination"
        end

        class AmazonEventbridge < ::Stripe::StripeObject
          # The AWS account ID that owns the event bus receiving events.
          attr_reader :aws_account_id
          # The ARN of the Stripe-created partner event source in your AWS account.
          attr_reader :aws_event_source_arn
          # The AWS-reported lifecycle state of the partner event source.
          attr_reader :aws_event_source_status

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class AzureEventGrid < ::Stripe::StripeObject
          # The name of the Stripe-created partner topic that receives events.
          attr_reader :azure_partner_topic_name
          # The Azure-reported lifecycle state of the partner topic.
          attr_reader :azure_partner_topic_status
          # The Azure region where the partner topic is located.
          attr_reader :azure_region
          # The Azure resource group containing the partner topic.
          attr_reader :azure_resource_group_name
          # The Azure subscription containing the resource group and partner topic.
          attr_reader :azure_subscription_id

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusDetails < ::Stripe::StripeObject
          class Disabled < ::Stripe::StripeObject
            # Reason event destination has been disabled.
            attr_reader :reason

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Present when the destination was disabled; identifies the cause, time, and provider-side object involved when available.
          attr_reader :disabled

          def self.inner_class_types
            @inner_class_types = { disabled: Disabled }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class WebhookEndpoint < ::Stripe::StripeObject
          # The secret used to verify Stripe signatures on delivered events. Returned only in the create response when explicitly included; public API clients cannot retrieve it later.
          attr_reader :signing_secret
          # The URL where Stripe sends matching events. Live mode requires HTTPS; sandbox mode also supports HTTP. Returned only when explicitly included.
          attr_reader :url

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Configuration for delivering events through an Amazon EventBridge partner event source.
        attr_reader :amazon_eventbridge
        # Configuration for delivering events through an Azure Event Grid partner topic.
        attr_reader :azure_event_grid
        # The time when the destination was created.
        attr_reader :created
        # An optional user-defined description of the destination's purpose.
        attr_reader :description
        # The list of event types enabled for delivery to this destination.
        attr_reader :enabled_events
        # Whether to deliver as snapshot or thin events.
        attr_reader :event_payload
        # Specifies which accounts' events route to this destination.
        # `@self`: Receive events from the account that owns the event destination.
        # `@accounts`: Receive events emitted from other accounts you manage which includes your v1 and v2 accounts.
        # `@organization_members`: Receive events from accounts directly linked to the organization.
        # `@organization_members/@accounts`: Receive events from all accounts connected to any platform accounts in the organization.
        attr_reader :events_from
        # Unique identifier for the object.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # User-defined key/value data for the destination; it has no effect on event matching or delivery.
        attr_reader :metadata
        # A user-defined label for identifying the destination in Stripe.
        attr_reader :name
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # For snapshot events only, the Stripe API version used to render event objects. You can't change this value after you create the event destination. Thin events are not pinned to an API version.
        attr_reader :snapshot_api_version
        # Whether Stripe currently attempts delivery. Stripe attempts delivery to enabled destinations when their provider configuration is active; disabled destinations do not receive delivery attempts.
        attr_reader :status
        # Additional lifecycle context for the destination status, when available.
        attr_reader :status_details
        # The delivery transport. Chosen when the destination is created and cannot be changed by update.
        attr_reader :type
        # The time when the destination object was last updated.
        attr_reader :updated
        # Configuration for delivering events to a webhook endpoint. Live mode requires HTTPS; sandbox mode also supports HTTP.
        attr_reader :webhook_endpoint

        def self.inner_class_types
          @inner_class_types = {
            amazon_eventbridge: AmazonEventbridge,
            azure_event_grid: AzureEventGrid,
            status_details: StatusDetails,
            webhook_endpoint: WebhookEndpoint,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
