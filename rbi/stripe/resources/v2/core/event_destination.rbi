# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # Set up an event destination to receive events from Stripe across multiple destination types, including [webhook endpoints](https://docs.stripe.com/webhooks), [Amazon EventBridge](https://docs.stripe.com/event-destinations/eventbridge), and [Azure Event Grid](https://docs.stripe.com/event-destinations/eventgrid). Event destinations support receiving [thin events](https://docs.stripe.com/api/v2/events) and [snapshot events](https://docs.stripe.com/api/events).
      class EventDestination < APIResource
        class AmazonEventbridge < ::Stripe::StripeObject
          # The AWS account ID that owns the event bus receiving events.
          sig { returns(String) }
          def aws_account_id; end
          # The ARN of the Stripe-created partner event source in your AWS account.
          sig { returns(String) }
          def aws_event_source_arn; end
          # The AWS-reported lifecycle state of the partner event source.
          sig { returns(String) }
          def aws_event_source_status; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class AzureEventGrid < ::Stripe::StripeObject
          # The name of the Stripe-created partner topic that receives events.
          sig { returns(String) }
          def azure_partner_topic_name; end
          # The Azure-reported lifecycle state of the partner topic.
          sig { returns(String) }
          def azure_partner_topic_status; end
          # The Azure region where the partner topic is located.
          sig { returns(String) }
          def azure_region; end
          # The Azure resource group containing the partner topic.
          sig { returns(String) }
          def azure_resource_group_name; end
          # The Azure subscription containing the resource group and partner topic.
          sig { returns(String) }
          def azure_subscription_id; end
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
            sig { returns(String) }
            def reason; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Present when the destination was disabled; identifies the cause, time, and provider-side object involved when available.
          sig { returns(T.nilable(Disabled)) }
          def disabled; end
          def self.inner_class_types
            @inner_class_types = {disabled: Disabled}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class WebhookEndpoint < ::Stripe::StripeObject
          # The secret used to verify Stripe signatures on delivered events. Returned only in the create response when explicitly included; public API clients cannot retrieve it later.
          sig { returns(T.nilable(String)) }
          def signing_secret; end
          # The URL where Stripe sends matching events. Live mode requires HTTPS; sandbox mode also supports HTTP. Returned only when explicitly included.
          sig { returns(T.nilable(String)) }
          def url; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Configuration for delivering events through an Amazon EventBridge partner event source.
        sig { returns(T.nilable(AmazonEventbridge)) }
        def amazon_eventbridge; end
        # Configuration for delivering events through an Azure Event Grid partner topic.
        sig { returns(T.nilable(AzureEventGrid)) }
        def azure_event_grid; end
        # The time when the destination was created.
        sig { returns(String) }
        def created; end
        # An optional user-defined description of the destination's purpose.
        sig { returns(String) }
        def description; end
        # The list of event types enabled for delivery to this destination.
        sig { returns(T::Array[String]) }
        def enabled_events; end
        # Whether to deliver as snapshot or thin events.
        sig { returns(String) }
        def event_payload; end
        # Specifies which accounts' events route to this destination.
        # `@self`: Receive events from the account that owns the event destination.
        # `@accounts`: Receive events emitted from other accounts you manage which includes your v1 and v2 accounts.
        # `@organization_members`: Receive events from accounts directly linked to the organization.
        # `@organization_members/@accounts`: Receive events from all accounts connected to any platform accounts in the organization.
        sig { returns(T.nilable(T::Array[String])) }
        def events_from; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # User-defined key/value data for the destination; it has no effect on event matching or delivery.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # A user-defined label for identifying the destination in Stripe.
        sig { returns(String) }
        def name; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # For snapshot events only, the Stripe API version used to render event objects. You can't change this value after you create the event destination. Thin events are not pinned to an API version.
        sig { returns(T.nilable(String)) }
        def snapshot_api_version; end
        # Whether Stripe currently attempts delivery. Stripe attempts delivery to enabled destinations when their provider configuration is active; disabled destinations do not receive delivery attempts.
        sig { returns(String) }
        def status; end
        # Additional lifecycle context for the destination status, when available.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # The delivery transport. Chosen when the destination is created and cannot be changed by update.
        sig { returns(String) }
        def type; end
        # The time when the destination object was last updated.
        sig { returns(String) }
        def updated; end
        # Configuration for delivering events to a webhook endpoint. Live mode requires HTTPS; sandbox mode also supports HTTP.
        sig { returns(T.nilable(WebhookEndpoint)) }
        def webhook_endpoint; end
      end
    end
  end
end