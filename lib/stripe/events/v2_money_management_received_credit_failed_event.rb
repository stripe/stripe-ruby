# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a ReceivedCredit is attempted to your balance and fails. See the status_details for more information.
    class V2MoneyManagementReceivedCreditFailedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.money_management.received_credit.failed"
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

    # Occurs when a ReceivedCredit is attempted to your balance and fails. See the status_details for more information.
    class V2MoneyManagementReceivedCreditFailedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.money_management.received_credit.failed"
      end

      attr_reader :related_object

      # Retrieves the ReceivedCredit related to this EventNotification from the Stripe API. Makes an API request on every call.
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
