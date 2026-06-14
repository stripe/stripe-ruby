# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module OrchestratedCommerce
      # An Orchestrated Commerce Agreement represents a mutual agreement between a seller and an orchestrator/agent on the Stripe network.
      class Agreement < APIResource
        OBJECT_NAME = "v2.orchestrated_commerce.agreement"
        def self.object_name
          "v2.orchestrated_commerce.agreement"
        end

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

        class StatusTransitions < ::Stripe::StripeObject
          # The time at which the orchestrator confirmed the agreement.
          attr_reader :orchestrator_confirmed_at
          # The time at which the seller confirmed the agreement.
          attr_reader :seller_confirmed_at
          # The time at which the agreement was terminated.
          attr_reader :terminated_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The time at which the agreement was created.
        attr_reader :created
        # The unique identifier for the agreement.
        attr_reader :id
        # The party that initiated the agreement.
        attr_reader :initiated_by
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Details about the orchestrator.
        attr_reader :orchestrator_details
        # Details about the seller.
        attr_reader :seller_details
        # The current status of the agreement.
        attr_reader :status
        # Timestamps of key status transitions for the agreement.
        attr_reader :status_transitions
        # The party that terminated the agreement, if applicable.
        attr_reader :terminated_by

        def self.inner_class_types
          @inner_class_types = {
            orchestrator_details: OrchestratorDetails,
            seller_details: SellerDetails,
            status_transitions: StatusTransitions,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
