# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a RateCardRate is created.
    class V2BillingRateCardRateCreatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.billing.rate_card_rate.created"
      end

      class V2BillingRateCardRateCreatedEventData < Stripe::StripeObject
        # The ID of the BillableItem which this Rate is associated with.
        attr_reader :billable_item
        # Timestamp of when the object was created.
        attr_reader :created
        # The ID of the latest RateCard Version when the Rate was created.
        attr_reader :rate_card_version
        # The ID of the RateCard which this Rate belongs to.
        attr_reader :rate_card

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2BillingRateCardRateCreatedEventData }
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

    # Occurs when a RateCardRate is created.
    class V2BillingRateCardRateCreatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.billing.rate_card_rate.created"
      end

      attr_reader :related_object

      # Retrieves the RateCardRate related to this EventNotification from the Stripe API. Makes an API request on every call.
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
