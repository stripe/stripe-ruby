# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module OrchestratedCommerce
      # An Orchestrated Commerce Agreement represents a mutual agreement between a seller and an orchestrator/agent on the Stripe network.
      class Agreement < APIResource
        class OrchestratorDetails < ::Stripe::StripeObject
          # The name of the orchestrator. This can be the name of the agent or the name of the business.
          sig { returns(String) }
          def name; end
          # The Network ID of the orchestrator.
          sig { returns(String) }
          def network_business_profile; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class SellerDetails < ::Stripe::StripeObject
          # The Network ID of the seller.
          sig { returns(String) }
          def network_business_profile; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # The time at which the orchestrator confirmed the agreement.
          sig { returns(T.nilable(String)) }
          def orchestrator_confirmed_at; end
          # The time at which the seller confirmed the agreement.
          sig { returns(T.nilable(String)) }
          def seller_confirmed_at; end
          # The time at which the agreement was terminated.
          sig { returns(T.nilable(String)) }
          def terminated_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The time at which the agreement was created.
        sig { returns(String) }
        def created; end
        # The unique identifier for the agreement.
        sig { returns(String) }
        def id; end
        # The party that initiated the agreement.
        sig { returns(String) }
        def initiated_by; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Details about the orchestrator.
        sig { returns(OrchestratorDetails) }
        def orchestrator_details; end
        # Details about the seller.
        sig { returns(SellerDetails) }
        def seller_details; end
        # The current status of the agreement.
        sig { returns(String) }
        def status; end
        # Timestamps of key status transitions for the agreement.
        sig { returns(StatusTransitions) }
        def status_transitions; end
        # The party that terminated the agreement, if applicable.
        sig { returns(T.nilable(String)) }
        def terminated_by; end
      end
    end
  end
end