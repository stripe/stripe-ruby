# frozen_string_literal: true

module Stripe
  module V2
    # A typed object reference with wire shape {type: string, id: string, url: string}.
    # Call #fetch to retrieve the full object from the API.
    class Ref
      attr_reader :type, :id, :url

      def initialize(data, requestor = nil)
        @type = data[:type] || data["type"]
        @id = data[:id] || data["id"]
        @url = data[:url] || data["url"]
        @requestor = requestor
      end

      def self.construct_from(data, opts = {}, last_response = nil, api_mode = :v2, requestor = nil)
        new(Stripe::Util.symbolize_names(data), requestor)
      end

      # Fetches the referenced object from the API. Makes an API request on every call.
      def fetch
        raise ArgumentError, "Cannot fetch a Ref without a requestor" if @requestor.nil?
        unless url.is_a?(String) && url.start_with?("/")
          raise ArgumentError, "Cannot fetch a Ref with an invalid url; expected a String starting with '/'"
        end

        @requestor.execute_request(:get, url, :api, usage: ["ref_fetch"])
      end
    end
  end
end
