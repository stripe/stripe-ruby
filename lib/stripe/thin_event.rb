# frozen_string_literal: true

module Stripe
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

  class ThinEvent
    attr_reader :id, :type, :created, :context, :related_object, :livemode, :reason

    def initialize(event_payload = {})
      @id = event_payload[:id]
      @type = event_payload[:type]
      @created = event_payload[:created]
      @context = event_payload[:context]
      @livemode = event_payload[:livemode]
      @related_object = event_payload[:related_object]
      return if event_payload[:reason].nil?

      @reason = EventReason.new(event_payload[:reason])
    end
  end
end
