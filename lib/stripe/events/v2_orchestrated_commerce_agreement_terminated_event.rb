# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when an Agreement is terminated.
    class V2OrchestratedCommerceAgreementTerminatedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.orchestrated_commerce.agreement.terminated"
      end

      class V2OrchestratedCommerceAgreementTerminatedEventData < ::Stripe::StripeObject
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
        # Details about the orchestrator.
        attr_reader :orchestrator_details
        # Details about the seller.
        attr_reader :seller_details
        # The time at which the agreement was terminated.
        attr_reader :terminated_at
        # The party that terminated the agreement.
        attr_reader :terminated_by

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
        @inner_class_types = { data: V2OrchestratedCommerceAgreementTerminatedEventData }
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

    # Occurs when an Agreement is terminated.
    class V2OrchestratedCommerceAgreementTerminatedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.orchestrated_commerce.agreement.terminated"
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
