# frozen_string_literal: true

module Stripe
  class ThinEvent
    attr_reader :id, :type, :created, :context, :related_object

    def initialize(event_payload = {})
      @id = event_payload[:id]
      @type = event_payload[:type]
      @created = event_payload[:created]
      @context = event_payload[:context]
      @livemode = event_payload[:livemode]
      @related_object = event_payload[:related_object]
      @reason = event_payload[:reason]
    end
  end
end
