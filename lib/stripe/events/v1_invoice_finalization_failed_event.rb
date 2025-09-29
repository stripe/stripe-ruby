# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs whenever a draft invoice cannot be finalized. See the invoice's [last finalization error](https://docs.stripe.com/api/invoices/object#invoice_object-last_finalization_error) for details.
    class V1InvoiceFinalizationFailedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.invoice.finalization_failed"
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

    # Occurs whenever a draft invoice cannot be finalized. See the invoice's [last finalization error](https://docs.stripe.com/api/invoices/object#invoice_object-last_finalization_error) for details.
    class V1InvoiceFinalizationFailedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.invoice.finalization_failed"
      end

      attr_reader :related_object

      # Retrieves the Invoice related to this EventNotification from the Stripe API. Makes an API request on every call.
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
