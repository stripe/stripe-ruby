# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Represents a synchronous request for authorization, see [Using your integration to handle authorization requests](https://docs.stripe.com/issuing/purchases/authorizations#authorization-handling).
    class V1IssuingAuthorizationRequestEvent < Stripe::V2::Event
      def self.lookup_type
        "v1.issuing_authorization.request"
      end

      # Retrieves the related object from the API. Makes an API request on every call.
      def fetch_related_object
        _request(
          method: :get,
          path: related_object.url,
          base_address: :api,
          opts: { stripe_context: context }
        )
      end
      attr_reader :related_object
    end

    # Represents a synchronous request for authorization, see [Using your integration to handle authorization requests](https://docs.stripe.com/issuing/purchases/authorizations#authorization-handling).
    class V1IssuingAuthorizationRequestEventNotification < Stripe::V2::EventNotification
      def self.lookup_type
        "v1.issuing_authorization.request"
      end

      attr_reader :related_object

      # Retrieves the Authorization related to this EventNotification from the Stripe API. Makes an API request on every call.
      def fetch_related_object
        resp = @client.raw_request(
          :get,
          related_object.url,
          opts: { stripe_context: context },
          usage: ["fetch_related_object"]
        )
        @client.deserialize(resp.http_body, api_mode: Util.get_api_mode(related_object.url))
      end
    end
  end
end
