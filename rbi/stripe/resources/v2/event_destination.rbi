# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    class EventDestination < APIResource
      class StatusDetails < Stripe::StripeObject
        class Disabled < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :reason
        end
        sig { returns(T.nilable(Disabled)) }
        attr_reader :disabled
      end
      class AmazonEventbridge < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :aws_account_id
        sig { returns(String) }
        attr_reader :aws_event_source_arn
        sig { returns(String) }
        attr_reader :aws_event_source_status
      end
      class WebhookEndpoint < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :signing_secret
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      sig { returns(String) }
      # Time at which the object was created.
      attr_reader :created
      sig { returns(String) }
      # An optional description of what the event destination is used for.
      attr_reader :description
      sig { returns(T::Array[String]) }
      # The list of events to enable for this endpoint.
      attr_reader :enabled_events
      sig { returns(String) }
      # Payload type of events being subscribed to.
      attr_reader :event_payload
      sig { returns(T.nilable(T::Array[String])) }
      # Where events should be routed from.
      attr_reader :events_from
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T.nilable(T::Hash[String, String])) }
      # Metadata.
      attr_reader :metadata
      sig { returns(String) }
      # Event destination name.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value of the object field.
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # If using the snapshot event payload, the API version events are rendered as.
      attr_reader :snapshot_api_version
      sig { returns(String) }
      # Status. It can be set to either enabled or disabled.
      attr_reader :status
      sig { returns(T.nilable(StatusDetails)) }
      # Additional information about event destination status.
      attr_reader :status_details
      sig { returns(String) }
      # Event destination type.
      attr_reader :type
      sig { returns(String) }
      # Time at which the object was last updated.
      attr_reader :updated
      sig { returns(T.nilable(AmazonEventbridge)) }
      # Amazon EventBridge configuration.
      attr_reader :amazon_eventbridge
      sig { returns(T.nilable(WebhookEndpoint)) }
      # Webhook endpoint configuration.
      attr_reader :webhook_endpoint
    end
  end
end