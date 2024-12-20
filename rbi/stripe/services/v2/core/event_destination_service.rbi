# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      class EventDestinationService < StripeService
        class CreateParams < Stripe::RequestParams
          class AmazonEventbridge < Stripe::RequestParams
            # The AWS account ID.
            sig { returns(String) }
            attr_accessor :aws_account_id

            # The region of the AWS event source.
            sig { returns(String) }
            attr_accessor :aws_region

            sig { params(aws_account_id: String, aws_region: String).void }
            def initialize(aws_account_id: nil, aws_region: nil); end
          end
          class WebhookEndpoint < Stripe::RequestParams
            # The URL of the webhook endpoint.
            sig { returns(String) }
            attr_accessor :url

            sig { params(url: String).void }
            def initialize(url: nil); end
          end
          # An optional description of what the event destination is used for.
          sig { returns(String) }
          attr_accessor :description

          # The list of events to enable for this endpoint.
          sig { returns(T::Array[String]) }
          attr_accessor :enabled_events

          # Payload type of events being subscribed to.
          sig { returns(String) }
          attr_accessor :event_payload

          # Where events should be routed from.
          sig { returns(T::Array[String]) }
          attr_accessor :events_from

          # Additional fields to include in the response.
          sig { returns(T::Array[String]) }
          attr_accessor :include

          # Metadata.
          sig { returns(T::Hash[String, String]) }
          attr_accessor :metadata

          # Event destination name.
          sig { returns(String) }
          attr_accessor :name

          # If using the snapshot event payload, the API version events are rendered as.
          sig { returns(String) }
          attr_accessor :snapshot_api_version

          # Event destination type.
          sig { returns(String) }
          attr_accessor :type

          # Amazon EventBridge configuration.
          sig {
            returns(::Stripe::V2::Core::EventDestinationService::CreateParams::AmazonEventbridge)
           }
          attr_accessor :amazon_eventbridge

          # Webhook endpoint configuration.
          sig {
            returns(::Stripe::V2::Core::EventDestinationService::CreateParams::WebhookEndpoint)
           }
          attr_accessor :webhook_endpoint

          sig {
            params(description: String, enabled_events: T::Array[String], event_payload: String, events_from: T::Array[String], include: T::Array[String], metadata: T::Hash[String, String], name: String, snapshot_api_version: String, type: String, amazon_eventbridge: ::Stripe::V2::Core::EventDestinationService::CreateParams::AmazonEventbridge, webhook_endpoint: ::Stripe::V2::Core::EventDestinationService::CreateParams::WebhookEndpoint).void
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
        class DeleteParams < Stripe::RequestParams

        end
        class DisableParams < Stripe::RequestParams

        end
        class EnableParams < Stripe::RequestParams

        end
        class ListParams < Stripe::RequestParams
          # Additional fields to include in the response. Currently supports `webhook_endpoint.url`.
          sig { returns(T::Array[String]) }
          attr_accessor :include

          # The page size.
          sig { returns(Integer) }
          attr_accessor :limit

          # The requested page.
          sig { returns(String) }
          attr_accessor :page

          sig { params(include: T::Array[String], limit: Integer, page: String).void }
          def initialize(include: nil, limit: nil, page: nil); end
        end
        class PingParams < Stripe::RequestParams

        end
        class RetrieveParams < Stripe::RequestParams
          # Additional fields to include in the response.
          sig { returns(T::Array[String]) }
          attr_accessor :include

          sig { params(include: T::Array[String]).void }
          def initialize(include: nil); end
        end
        class UpdateParams < Stripe::RequestParams
          class WebhookEndpoint < Stripe::RequestParams
            # The URL of the webhook endpoint.
            sig { returns(String) }
            attr_accessor :url

            sig { params(url: String).void }
            def initialize(url: nil); end
          end
          # An optional description of what the event destination is used for.
          sig { returns(String) }
          attr_accessor :description

          # The list of events to enable for this endpoint.
          sig { returns(T::Array[String]) }
          attr_accessor :enabled_events

          # Additional fields to include in the response. Currently supports `webhook_endpoint.url`.
          sig { returns(T::Array[String]) }
          attr_accessor :include

          # Metadata.
          sig { returns(T::Hash[String, T.nilable(String)]) }
          attr_accessor :metadata

          # Event destination name.
          sig { returns(String) }
          attr_accessor :name

          # Webhook endpoint configuration.
          sig {
            returns(::Stripe::V2::Core::EventDestinationService::UpdateParams::WebhookEndpoint)
           }
          attr_accessor :webhook_endpoint

          sig {
            params(description: String, enabled_events: T::Array[String], include: T::Array[String], metadata: T::Hash[String, T.nilable(String)], name: String, webhook_endpoint: ::Stripe::V2::Core::EventDestinationService::UpdateParams::WebhookEndpoint).void
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