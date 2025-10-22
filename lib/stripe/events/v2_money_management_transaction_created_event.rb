# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Transaction is created.
    class V2MoneyManagementTransactionCreatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.money_management.transaction.created"
      end

      class V2MoneyManagementTransactionCreatedEventData < ::Stripe::StripeObject
        # Id of the v1 Transaction corresponding to this Transaction.
        attr_reader :v1_id

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2MoneyManagementTransactionCreatedEventData }
      end
      attr_reader :data, :related_object

      # Retrieves the related object from the API. Makes an API request on every call.
      def fetch_related_object
        _request(
          method: :get,
          path: related_object.url,
          base_address: :api,
          opts: { stripe_context: context }
        )
      end
    end

    # Occurs when a Transaction is created.
    class V2MoneyManagementTransactionCreatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.money_management.transaction.created"
      end

      attr_reader :related_object

      # Retrieves the Transaction related to this EventNotification from the Stripe API. Makes an API request on every call.
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
