# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class EventDestinationCreateParams < ::Stripe::RequestParams
        class AmazonEventbridge < ::Stripe::RequestParams
          # Your AWS account where Stripe creates the partner event source.
          sig { returns(String) }
          def aws_account_id; end
          sig { params(_aws_account_id: String).returns(String) }
          def aws_account_id=(_aws_account_id); end
          # The AWS region where Stripe creates the partner event source.
          sig { returns(String) }
          def aws_region; end
          sig { params(_aws_region: String).returns(String) }
          def aws_region=(_aws_region); end
          sig { params(aws_account_id: String, aws_region: String).void }
          def initialize(aws_account_id: nil, aws_region: nil); end
        end
        class AzureEventGrid < ::Stripe::RequestParams
          # The Azure region where Stripe creates the partner topic.
          sig { returns(String) }
          def azure_region; end
          sig { params(_azure_region: String).returns(String) }
          def azure_region=(_azure_region); end
          # The Azure resource group where Stripe creates the partner topic.
          sig { returns(String) }
          def azure_resource_group_name; end
          sig { params(_azure_resource_group_name: String).returns(String) }
          def azure_resource_group_name=(_azure_resource_group_name); end
          # The Azure subscription where Stripe creates the partner topic.
          sig { returns(String) }
          def azure_subscription_id; end
          sig { params(_azure_subscription_id: String).returns(String) }
          def azure_subscription_id=(_azure_subscription_id); end
          sig {
            params(azure_region: String, azure_resource_group_name: String, azure_subscription_id: String).void
           }
          def initialize(
            azure_region: nil,
            azure_resource_group_name: nil,
            azure_subscription_id: nil
          ); end
        end
        class WebhookEndpoint < ::Stripe::RequestParams
          # The URL where Stripe sends matching events. Live mode requires HTTPS; sandbox mode also supports HTTP.
          sig { returns(String) }
          def url; end
          sig { params(_url: String).returns(String) }
          def url=(_url); end
          sig { params(url: String).void }
          def initialize(url: nil); end
        end
        # AWS account and region where Stripe creates the EventBridge partner event source.
        sig {
          returns(T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::AmazonEventbridge))
         }
        def amazon_eventbridge; end
        sig {
          params(_amazon_eventbridge: T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::AmazonEventbridge)).returns(T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::AmazonEventbridge))
         }
        def amazon_eventbridge=(_amazon_eventbridge); end
        # Azure subscription, resource group, and region where Stripe creates the partner topic.
        sig { returns(T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::AzureEventGrid)) }
        def azure_event_grid; end
        sig {
          params(_azure_event_grid: T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::AzureEventGrid)).returns(T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::AzureEventGrid))
         }
        def azure_event_grid=(_azure_event_grid); end
        # An optional user-defined description of the destination's purpose.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # The list of event types enabled for delivery to this destination.
        sig { returns(T::Array[String]) }
        def enabled_events; end
        sig { params(_enabled_events: T::Array[String]).returns(T::Array[String]) }
        def enabled_events=(_enabled_events); end
        # Whether to deliver as snapshot or thin events.
        sig { returns(String) }
        def event_payload; end
        sig { params(_event_payload: String).returns(String) }
        def event_payload=(_event_payload); end
        # The account or organization scopes that can supply events. Use this with `enabled_events` to define the subscription.
        # `@self`: Receive events from the account that owns the event destination.
        # `@accounts`: Receive events emitted from other accounts you manage, including your v1 and v2 accounts.
        # `@organization_members`: Receive events from accounts directly linked to the organization.
        # `@organization_members/@accounts`: Receive events from all accounts connected to any platform accounts in the organization.
        sig { returns(T.nilable(T::Array[String])) }
        def events_from; end
        sig {
          params(_events_from: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
         }
        def events_from=(_events_from); end
        # Include normally redacted webhook fields in the create response. Public API clients must include `webhook_endpoint.signing_secret` to receive the signing secret.
        sig { returns(T.nilable(T::Array[String])) }
        def include; end
        sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def include=(_include); end
        # User-defined key/value data for the destination.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # A user-defined label for identifying the destination.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # For snapshot events only, the Stripe API version used to render event objects; do not provide this for thin events.
        sig { returns(T.nilable(String)) }
        def snapshot_api_version; end
        sig { params(_snapshot_api_version: T.nilable(String)).returns(T.nilable(String)) }
        def snapshot_api_version=(_snapshot_api_version); end
        # The delivery transport. Chosen when the destination is created and cannot be changed by update.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        # Delivery target for the webhook endpoint. Live mode requires HTTPS; sandbox mode also supports HTTP.
        sig {
          returns(T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::WebhookEndpoint))
         }
        def webhook_endpoint; end
        sig {
          params(_webhook_endpoint: T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::WebhookEndpoint)).returns(T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::WebhookEndpoint))
         }
        def webhook_endpoint=(_webhook_endpoint); end
        sig {
          params(amazon_eventbridge: T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::AmazonEventbridge), azure_event_grid: T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::AzureEventGrid), description: T.nilable(String), enabled_events: T::Array[String], event_payload: String, events_from: T.nilable(T::Array[String]), include: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: String, snapshot_api_version: T.nilable(String), type: String, webhook_endpoint: T.nilable(::Stripe::V2::Core::EventDestinationCreateParams::WebhookEndpoint)).void
         }
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
        ); end
      end
    end
  end
end