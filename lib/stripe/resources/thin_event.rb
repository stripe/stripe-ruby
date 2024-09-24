# frozen_string_literal: true

module Stripe
  class ThinEvent < APIResource
    OBJECT_NAME = "event"
    def self.object_name
      "event"
    end

    def fetch_object
      return nil if !respond_to?(:related_object) || related_object.nil? || related_object.url.nil?

      _request(
        method: :get,
        path: related_object.url,
        base_address: :api
      )
    end

    def fetch_data(event_data_cls)
      full_event = _request(
        method: :get,
        path: format("/v2/events/%<id>s", { id: CGI.escape(id) }),
        base_address: :api
      )
      data = full_event.data
      raise "Unexpected: fetch_data returned an event without a 'data' field" if data.nil?

      event_data_cls.construct_from(data.to_hash, {}, full_event.last_response, :v2, @requestor)
    end
  end
end
