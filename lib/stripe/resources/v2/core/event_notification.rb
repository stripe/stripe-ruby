# frozen_string_literal: true

module Stripe
  module V2
    module Core
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

      class RelatedSingletonObject
        attr_reader :type, :url

        def initialize(related_object)
          @type = related_object[:type]
          @url = related_object[:url]
        end
      end

      class EventNotification
        attr_reader :id, :object, :type, :created, :context, :livemode, :reason

        # Overridden by generated subclasses if their related object is a singleton
        private def related_object_class
          RelatedObject
        end

        def initialize(event_payload, client)
          @id = event_payload[:id]
          @object = event_payload[:object]
          @type = event_payload[:type]
          @created = event_payload[:created]
          @livemode = event_payload[:livemode]
          @reason = EventReason.new(event_payload[:reason]) if event_payload[:reason]
          if event_payload[:context] && !event_payload[:context].empty?
            @context = StripeContext.parse(event_payload[:context])
          end
          # private unless a child declares an attr_reader
          @related_object = related_object_class.new(event_payload[:related_object]) if event_payload[:related_object]

          # internal use
          @client = client.with_stripe_context(@context)
        end

        # Retrieves the Event that generated this EventNotification.
        def fetch_event
          # `id` comes from the notification body, so escape it the way generated
          # services do -- otherwise it can inject extra path or query segments.
          path = "/v2/core/events/#{CGI.escape(id)}"
          resp = @client.raw_request(:get, path, opts: { stripe_context: context,
                                                         "Stripe-Request-Trigger" => "event=#{id}", },
                                                 usage: ["fetch_event"])
          @client.deserialize(resp.http_body, api_mode: :v2)
        end

        # The default inspect renders every instance variable, which would
        # include the API key held by @client.
        def inspect
          "#<#{self.class}:0x#{object_id.to_s(16)} id=#{id.inspect} type=#{type.inspect}>"
        end

        # Implements custom encoding for YAML (Psych). Without it, Psych dumps
        # every instance variable, including the API key held by @client.
        def encode_with(coder)
          (instance_variables - [:@client]).each do |ivar|
            coder[ivar.to_s.delete_prefix("@")] = instance_variable_get(ivar)
          end
        end

        # Implements custom decoding for YAML (Psych). A restored notification
        # has no client, so it can't make requests.
        def init_with(coder)
          coder.map.each { |name, value| instance_variable_set("@#{name}", value) }
          @client = DetachedClient.new
        end

        # Stands in for the client on a notification restored from YAML, so
        # requests fail with an actionable error instead of a NoMethodError.
        class DetachedClient
          def raw_request(*)
            raise AuthenticationError,
                  "This EventNotification was restored from a serialized copy and has no client. " \
                  "Parse the original payload with StripeClient#parse_event_notification to make requests."
          end
        end
        private_constant :DetachedClient
      end
    end
  end
end
