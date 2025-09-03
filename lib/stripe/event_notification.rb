# frozen_string_literal: true

module Stripe
  module V2
    class EventReasonRequest
      attr_reader :id, :idempotency_key

      def initialize(event_reason_request_payload = {})
        @id = event_reason_request_payload[:id]
        @idempotency_key = event_reason_request_payload[:idempotency_key]
      end
    end

    class EventReason
      attr_reader :type, :request

      def initialize(event_reason_payload = {})
        @type = event_reason_payload[:type]
        @request = EventReasonRequest.new(event_reason_payload[:request])
      end
    end

    class RelatedObject
      attr_reader :id, :type, :url

      def initialize(related_object)
        @id = related_object[:id]
        @type = related_object[:type]
        @url = related_object[:url]
      end
    end

    class EventNotification
      attr_reader :id, :type, :created, :context, :livemode, :reason

      def initialize(event_payload, client)
        @id = event_payload[:id]
        @type = event_payload[:type]
        @created = event_payload[:created]
        @livemode = event_payload[:livemode]
        @context = event_payload[:context]
        @reason = EventReason.new(event_payload[:reason]) if event_payload[:reason]
        # private unless a child declares an attr_reader
        @related_object = RelatedObject.new(event_payload[:related_object]) if event_payload[:related_object]

        # internal use
        @client = client
      end

      # Retrieves the Event that generated this EventNotification.
      def fetch_event
        resp = @client.raw_request(:get, "/v2/core/events/#{id}", opts: { stripe_context: context },
                                                                  usage: ["fetch_event"])
        @client.deserialize(resp.http_body, api_mode: :v2)
      end
    end

    class UnknownEventNotification < EventNotification
      attr_reader :related_object

      def fetch_related_object
        return nil if @related_object.nil?

        resp = @client.raw_request(:get, related_object.url, opts: { stripe_context: context },
                                                             usage: ["fetch_related_object"])
        @client.deserialize(resp.http_body, api_mode: Util.get_api_mode(related_object.url))
      end
    end
  end
end
