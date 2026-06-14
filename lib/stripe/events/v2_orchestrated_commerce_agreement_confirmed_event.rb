# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an Agreement is confirmed by one party.
    class V2OrchestratedCommerceAgreementConfirmedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.orchestrated_commerce.agreement.confirmed"
      end

      class V2OrchestratedCommerceAgreementConfirmedEventData < ::Stripe::StripeObject
        class OrchestratorDetails < ::Stripe::StripeObject
          # The name of the orchestrator. This can be the name of the agent or the name of the business.
          attr_reader :name
          # The Network ID of the orchestrator.
          attr_reader :network_business_profile

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class SellerDetails < ::Stripe::StripeObject
          # The Network ID of the seller.
          attr_reader :network_business_profile

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The time at which the orchestrator confirmed the agreement.
        attr_reader :orchestrator_confirmed_at
        # Details about the orchestrator.
        attr_reader :orchestrator_details
        # The time at which the seller confirmed the agreement.
        attr_reader :seller_confirmed_at
        # Details about the seller.
        attr_reader :seller_details

        def self.inner_class_types
          @inner_class_types = {
            orchestrator_details: OrchestratorDetails,
            seller_details: SellerDetails,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2OrchestratedCommerceAgreementConfirmedEventData }
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

    # Occurs when an Agreement is confirmed by one party.
    class V2OrchestratedCommerceAgreementConfirmedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.orchestrated_commerce.agreement.confirmed"
      end

      attr_reader :related_object

      # Retrieves the Agreement related to this EventNotification from the Stripe API. Makes an API request on every call.
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
