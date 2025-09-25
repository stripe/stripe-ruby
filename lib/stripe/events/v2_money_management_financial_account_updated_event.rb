# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a FinancialAccount is updated.
    class V2MoneyManagementFinancialAccountUpdatedEvent < Stripe::V2::Event
      def self.lookup_type
        "v2.money_management.financial_account.updated"
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

    # Occurs when a FinancialAccount is updated.
    class V2MoneyManagementFinancialAccountUpdatedEventNotification < Stripe::V2::EventNotification
      def self.lookup_type
        "v2.money_management.financial_account.updated"
      end

      attr_reader :related_object

      # Retrieves the FinancialAccount related to this EventNotification from the Stripe API. Makes an API request on every call.
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
