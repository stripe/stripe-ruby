# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Contract Term's scheduled-fee service period starts.
    class V2BillingContractTermScheduledFeeServicePeriodStartedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.billing.contract_term.scheduled_fee_service_period_started"
      end

      class V2BillingContractTermScheduledFeeServicePeriodStartedEventData < ::Stripe::StripeObject
        # The Contract containing this term.
        attr_reader :contract

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2BillingContractTermScheduledFeeServicePeriodStartedEventData }
      end
      attr_reader :data, :related_object

      # Retrieves the related object from the API. Makes an API request on every call.
      def fetch_related_object
        _request(
          method: :get,
          path: related_object.url,
          base_address: :api,
          opts: { stripe_context: context, "Stripe-Request-Trigger": "event=#{id}" }
        )
      end
    end

    # Occurs when a Contract Term's scheduled-fee service period starts.
    class V2BillingContractTermScheduledFeeServicePeriodStartedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.billing.contract_term.scheduled_fee_service_period_started"
      end

      attr_reader :related_object

      # Retrieves the ContractTerm related to this EventNotification from the Stripe API. Makes an API request on every call.
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
