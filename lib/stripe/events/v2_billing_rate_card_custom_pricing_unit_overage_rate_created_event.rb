# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a RateCardCustomPricingUnitOverageRate is created.
    class V2BillingRateCardCustomPricingUnitOverageRateCreatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.billing.rate_card_custom_pricing_unit_overage_rate.created"
      end

      class V2BillingRateCardCustomPricingUnitOverageRateCreatedEventData < ::Stripe::StripeObject
        # Timestamp of when the object was created.
        attr_reader :created
        # The ID of the custom pricing unit this overage rate applies to.
        attr_reader :custom_pricing_unit
        # The ID of the RateCard which this custom pricing unit overage rate belongs to.
        attr_reader :rate_card
        # The ID of the RateCard Version when the custom pricing unit overage rate was created.
        attr_reader :rate_card_version

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2BillingRateCardCustomPricingUnitOverageRateCreatedEventData }
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

    # Occurs when a RateCardCustomPricingUnitOverageRate is created.
    class V2BillingRateCardCustomPricingUnitOverageRateCreatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.billing.rate_card_custom_pricing_unit_overage_rate.created"
      end

      attr_reader :related_object

      # Retrieves the RateCardCustomPricingUnitOverageRate related to this EventNotification from the Stripe API. Makes an API request on every call.
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
