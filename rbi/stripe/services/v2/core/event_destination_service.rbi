# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class EventDestinationService < StripeService
        class ListParams < Stripe::RequestParams
          # Additional fields to include in the response. Currently supports `webhook_endpoint.url`.
          sig { returns(T.nilable(T::Array[String])) }
          def include; end
          sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include=(_include); end
          # The page size.
          sig { returns(T.nilable(Integer)) }
          def limit; end
          sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def limit=(_limit); end
          sig { params(include: T.nilable(T::Array[String]), limit: T.nilable(Integer)).void }
          def initialize(include: nil, limit: nil); end
        end
        class CreateParams < Stripe::RequestParams
          class AmazonEventbridge < Stripe::RequestParams
            # The AWS account ID.
            sig { returns(String) }
            def aws_account_id; end
            sig { params(_aws_account_id: String).returns(String) }
            def aws_account_id=(_aws_account_id); end
            # The region of the AWS event source.
            sig { returns(String) }
            def aws_region; end
            sig { params(_aws_region: String).returns(String) }
            def aws_region=(_aws_region); end
            sig { params(aws_account_id: String, aws_region: String).void }
            def initialize(aws_account_id: nil, aws_region: nil); end
          end
          class WebhookEndpoint < Stripe::RequestParams
            # The URL of the webhook endpoint.
            sig { returns(String) }
            def url; end
            sig { params(_url: String).returns(String) }
            def url=(_url); end
            sig { params(url: String).void }
            def initialize(url: nil); end
          end
          # An optional description of what the event destination is used for.
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # The list of events to enable for this endpoint.
          sig { returns(T::Array[String]) }
          def enabled_events; end
          sig { params(_enabled_events: T::Array[String]).returns(T::Array[String]) }
          def enabled_events=(_enabled_events); end
          # Payload type of events being subscribed to.
          sig { returns(String) }
          def event_payload; end
          sig { params(_event_payload: String).returns(String) }
          def event_payload=(_event_payload); end
          # Where events should be routed from.
          sig { returns(T.nilable(T::Array[String])) }
          def events_from; end
          sig {
            params(_events_from: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def events_from=(_events_from); end
          # Additional fields to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          def include; end
          sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include=(_include); end
          # Metadata.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # Event destination name.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # If using the snapshot event payload, the API version events are rendered as.
          sig { returns(T.nilable(String)) }
          def snapshot_api_version; end
          sig { params(_snapshot_api_version: T.nilable(String)).returns(T.nilable(String)) }
          def snapshot_api_version=(_snapshot_api_version); end
          # Event destination type.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # Amazon EventBridge configuration.
          sig {
            returns(T.nilable(::Stripe::V2::Core::EventDestinationService::CreateParams::AmazonEventbridge))
           }
          def amazon_eventbridge; end
          sig {
            params(_amazon_eventbridge: T.nilable(::Stripe::V2::Core::EventDestinationService::CreateParams::AmazonEventbridge)).returns(T.nilable(::Stripe::V2::Core::EventDestinationService::CreateParams::AmazonEventbridge))
           }
          def amazon_eventbridge=(_amazon_eventbridge); end
          # Webhook endpoint configuration.
          sig {
            returns(T.nilable(::Stripe::V2::Core::EventDestinationService::CreateParams::WebhookEndpoint))
           }
          def webhook_endpoint; end
          sig {
            params(_webhook_endpoint: T.nilable(::Stripe::V2::Core::EventDestinationService::CreateParams::WebhookEndpoint)).returns(T.nilable(::Stripe::V2::Core::EventDestinationService::CreateParams::WebhookEndpoint))
           }
          def webhook_endpoint=(_webhook_endpoint); end
          sig {
            params(description: T.nilable(String), enabled_events: T::Array[String], event_payload: String, events_from: T.nilable(T::Array[String]), include: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: String, snapshot_api_version: T.nilable(String), type: String, amazon_eventbridge: T.nilable(::Stripe::V2::Core::EventDestinationService::CreateParams::AmazonEventbridge), webhook_endpoint: T.nilable(::Stripe::V2::Core::EventDestinationService::CreateParams::WebhookEndpoint)).void
           }
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
          ); end
        end
        class DeleteParams < Stripe::RequestParams; end
        class RetrieveParams < Stripe::RequestParams
          # Additional fields to include in the response.
          sig { returns(T.nilable(T::Array[String])) }
          def include; end
          sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include=(_include); end
          sig { params(include: T.nilable(T::Array[String])).void }
          def initialize(include: nil); end
        end
        class UpdateParams < Stripe::RequestParams
          class WebhookEndpoint < Stripe::RequestParams
            # The URL of the webhook endpoint.
            sig { returns(String) }
            def url; end
            sig { params(_url: String).returns(String) }
            def url=(_url); end
            sig { params(url: String).void }
            def initialize(url: nil); end
          end
          # An optional description of what the event destination is used for.
          sig { returns(T.nilable(String)) }
          def description; end
          sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_description); end
          # The list of events to enable for this endpoint.
          sig { returns(T.nilable(T::Array[String])) }
          def enabled_events; end
          sig {
            params(_enabled_events: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def enabled_events=(_enabled_events); end
          # Additional fields to include in the response. Currently supports `webhook_endpoint.url`.
          sig { returns(T.nilable(T::Array[String])) }
          def include; end
          sig { params(_include: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
          def include=(_include); end
          # Metadata.
          sig { returns(T.nilable(T::Hash[String, T.nilable(String)])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, T.nilable(String)])).returns(T.nilable(T::Hash[String, T.nilable(String)]))
           }
          def metadata=(_metadata); end
          # Event destination name.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Webhook endpoint configuration.
          sig {
            returns(T.nilable(::Stripe::V2::Core::EventDestinationService::UpdateParams::WebhookEndpoint))
           }
          def webhook_endpoint; end
          sig {
            params(_webhook_endpoint: T.nilable(::Stripe::V2::Core::EventDestinationService::UpdateParams::WebhookEndpoint)).returns(T.nilable(::Stripe::V2::Core::EventDestinationService::UpdateParams::WebhookEndpoint))
           }
          def webhook_endpoint=(_webhook_endpoint); end
          sig {
            params(description: T.nilable(String), enabled_events: T.nilable(T::Array[String]), include: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, T.nilable(String)]), name: T.nilable(String), webhook_endpoint: T.nilable(::Stripe::V2::Core::EventDestinationService::UpdateParams::WebhookEndpoint)).void
           }
          def initialize(
            description: nil,
            enabled_events: nil,
            include: nil,
            metadata: nil,
            name: nil,
            webhook_endpoint: nil
          ); end
        end
        class DisableParams < Stripe::RequestParams; end
        class EnableParams < Stripe::RequestParams; end
        class PingParams < Stripe::RequestParams; end
        # Create a new event destination.
        sig {
          params(params: T.any(::Stripe::V2::Core::EventDestinationService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::EventDestination)
         }
        def create(params = {}, opts = {}); end

        # Delete an event destination.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::EventDestinationService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::EventDestination)
         }
        def delete(id, params = {}, opts = {}); end

        # Disable an event destination.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::EventDestinationService::DisableParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::EventDestination)
         }
        def disable(id, params = {}, opts = {}); end

        # Enable an event destination.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::EventDestinationService::EnableParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::EventDestination)
         }
        def enable(id, params = {}, opts = {}); end

        # Lists all event destinations.
        sig {
          params(params: T.any(::Stripe::V2::Core::EventDestinationService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::ListObject)
         }
        def list(params = {}, opts = {}); end

        # Send a `ping` event to an event destination.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::EventDestinationService::PingParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::Event)
         }
        def ping(id, params = {}, opts = {}); end

        # Retrieves the details of an event destination.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::EventDestinationService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::EventDestination)
         }
        def retrieve(id, params = {}, opts = {}); end

        # Update the details of an event destination.
        sig {
          params(id: String, params: T.any(::Stripe::V2::Core::EventDestinationService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::V2::EventDestination)
         }
        def update(id, params = {}, opts = {}); end
      end
    end
  end
end