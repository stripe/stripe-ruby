# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    # Set up an event destination to receive events from Stripe across multiple destination types, including [webhook endpoints](https://docs.stripe.com/webhooks) and [Amazon EventBridge](https://docs.stripe.com/event-destinations/eventbridge). Event destinations support receiving [thin events](https://docs.stripe.com/api/v2/events) and [snapshot events](https://docs.stripe.com/api/events).
    class EventDestination < APIResource
      class StatusDetails < Stripe::StripeObject
        class Disabled < Stripe::StripeObject
          # Reason event destination has been disabled.
          sig { returns(String) }
          attr_reader :reason
        end
        # Details about why the event destination has been disabled.
        sig { returns(T.nilable(Disabled)) }
        attr_reader :disabled
      end
      class AmazonEventbridge < Stripe::StripeObject
        # The AWS account ID.
        sig { returns(String) }
        attr_reader :aws_account_id
        # The ARN of the AWS event source.
        sig { returns(String) }
        attr_reader :aws_event_source_arn
        # The state of the AWS event source.
        sig { returns(String) }
        attr_reader :aws_event_source_status
      end
      class WebhookEndpoint < Stripe::StripeObject
        # The signing secret of the webhook endpoint, only includable on creation.
        sig { returns(T.nilable(String)) }
        attr_reader :signing_secret
        # The URL of the webhook endpoint, includable.
        sig { returns(T.nilable(String)) }
        attr_reader :url
      end
      # Time at which the object was created.
      sig { returns(String) }
      attr_reader :created
      # An optional description of what the event destination is used for.
      sig { returns(String) }
      attr_reader :description
      # The list of events to enable for this endpoint.
      sig { returns(T::Array[String]) }
      attr_reader :enabled_events
      # Payload type of events being subscribed to.
      sig { returns(String) }
      attr_reader :event_payload
      # Where events should be routed from.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :events_from
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # Metadata.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_reader :metadata
      # Event destination name.
      sig { returns(String) }
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value of the object field.
      sig { returns(String) }
      attr_reader :object
      # If using the snapshot event payload, the API version events are rendered as.
      sig { returns(T.nilable(String)) }
      attr_reader :snapshot_api_version
      # Status. It can be set to either enabled or disabled.
      sig { returns(String) }
      attr_reader :status
      # Additional information about event destination status.
      sig { returns(T.nilable(StatusDetails)) }
      attr_reader :status_details
      # Event destination type.
      sig { returns(String) }
      attr_reader :type
      # Time at which the object was last updated.
      sig { returns(String) }
      attr_reader :updated
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Amazon EventBridge configuration.
      sig { returns(T.nilable(AmazonEventbridge)) }
      attr_reader :amazon_eventbridge
      # Webhook endpoint configuration.
      sig { returns(T.nilable(WebhookEndpoint)) }
      attr_reader :webhook_endpoint
    end
  end
end