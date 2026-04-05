# frozen_string_literal: true

module Stripe
  module V2
    # A typed object reference with wire shape {type: string, id: string, url: string}.
    # Call #fetch to retrieve the full object from the API.
    class Ref
      attr_reader :type, :id, :url

      def initialize(data, client = nil)
        @type = data[:type] || data["type"]
        @id = data[:id] || data["id"]
        @url = data[:url] || data["url"]
        @client = client
      end

      # Fetches the referenced object from the API. Makes an API request on every call.
      def fetch
        raise ArgumentError, "Cannot fetch a Ref without a client" if @client.nil?
        unless url.is_a?(String) && url.start_with?("/")
          raise ArgumentError, "Cannot fetch a Ref with an invalid url; expected a String starting with '/'"
        end

        resp = @client.raw_request(:get, url, usage: ["ref_fetch"])
        @client.deserialize(resp.http_body, api_mode: Util.get_api_mode(url))
      end
    end
  end
end
