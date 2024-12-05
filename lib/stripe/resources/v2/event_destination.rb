# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class EventDestination < APIResource
      OBJECT_NAME = "v2.core.event_destination"
      def self.object_name
        "v2.core.event_destination"
      end

      class StatusDetails < Stripe::StripeObject
        class Disabled < Stripe::StripeObject
          attr_reader :reason
        end
        attr_reader :disabled
      end

      class AmazonEventbridge < Stripe::StripeObject
        attr_reader :aws_account_id, :aws_event_source_arn, :aws_event_source_status
      end

      class WebhookEndpoint < Stripe::StripeObject
        attr_reader :signing_secret, :url
      end
      # Time at which the object was created.
      attr_reader :created
      # An optional description of what the event destination is used for.
      attr_reader :description
      # The list of events to enable for this endpoint.
      attr_reader :enabled_events
      # Payload type of events being subscribed to.
      attr_reader :event_payload
      # Where events should be routed from.
      attr_reader :events_from
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Metadata.
      attr_reader :metadata
      # Event destination name.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value of the object field.
      attr_reader :object
      # If using the snapshot event payload, the API version events are rendered as.
      attr_reader :snapshot_api_version
      # Status. It can be set to either enabled or disabled.
      attr_reader :status
      # Additional information about event destination status.
      attr_reader :status_details
      # Event destination type.
      attr_reader :type
      # Time at which the object was last updated.
      attr_reader :updated
      # Amazon EventBridge configuration.
      attr_reader :amazon_eventbridge
      # Webhook endpoint configuration.
      attr_reader :webhook_endpoint
    end
  end
end
