# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when the supported_payment_method_types array on a Financial Connections account changes.
    class V1FinancialConnectionsAccountSupportedPaymentMethodTypesUpdatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v1.financial_connections.account.supported_payment_method_types_updated"
      end

      # Retrieves the related object from the API. Makes an API request on every call.
      def fetch_related_object
        _request(
          method: :get,
          path: related_object.url,
          base_address: :api,
          opts: { stripe_context: context, "Stripe-Request-Trigger": "event=#{id}" }
        )
      end
      attr_reader :related_object
    end

    # Occurs when the supported_payment_method_types array on a Financial Connections account changes.
    class V1FinancialConnectionsAccountSupportedPaymentMethodTypesUpdatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v1.financial_connections.account.supported_payment_method_types_updated"
      end

      attr_reader :related_object

      # Retrieves the Account related to this EventNotification from the Stripe API. Makes an API request on every call.
      def fetch_related_object
        resp = @client.raw_request(
          :get,
          related_object.url,
          opts: { stripe_context: context, "Stripe-Request-Trigger": "event=#{id}" },
          usage: ["fetch_related_object"]
        )
        @client.deserialize(resp.http_body, api_mode: Util.get_api_mode(related_object.url))
      end
    end
  end
end
