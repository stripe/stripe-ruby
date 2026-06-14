# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Extend
      # An execution of a Workflow in response to a triggering event.
      class WorkflowRun < APIResource
        class StatusDetails < ::Stripe::StripeObject
          class Failed < ::Stripe::StripeObject
            # Optional details about the failure result.
            sig { returns(T.nilable(String)) }
            def error_message; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Started < ::Stripe::StripeObject
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Succeeded < ::Stripe::StripeObject
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details about the Workflow Run's transition into the FAILED state.
          sig { returns(T.nilable(Failed)) }
          def failed; end
          # Details about the Workflow Run's transition in to the STARTED state.
          sig { returns(T.nilable(Started)) }
          def started; end
          # Details about the Workflow Run's transition into the SUCCEEDED state.
          sig { returns(T.nilable(Succeeded)) }
          def succeeded; end
          def self.inner_class_types
            @inner_class_types = {failed: Failed, started: Started, succeeded: Succeeded}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class StatusTransitions < ::Stripe::StripeObject
          # When the Workflow Run failed.
          sig { returns(T.nilable(String)) }
          def failed_at; end
          # When the Workflow Run was started.
          sig { returns(T.nilable(String)) }
          def started_at; end
          # When the Workflow Run succeeded.
          sig { returns(T.nilable(String)) }
          def succeeded_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Trigger < ::Stripe::StripeObject
          class EventTrigger < ::Stripe::StripeObject
            # The account that generated the triggering event.
            sig { returns(String) }
            def context; end
            # The Stripe event that triggered this Run.
            sig { returns(String) }
            def id; end
            # The Stripe event type triggered this Run.
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Manual < ::Stripe::StripeObject
            # The input parameters used when launching the Run.
            sig { returns(T::Hash[String, T.untyped]) }
            def input_parameters; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The Workflow Run was launched when Stripe emitted a certain event.
          sig { returns(T.nilable(EventTrigger)) }
          def event_trigger; end
          # The Workflow Run was launched through a direct call, using either the Dashboard or the Stripe API.
          sig { returns(T.nilable(Manual)) }
          def manual; end
          # Which type of trigger this is.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {event_trigger: EventTrigger, manual: Manual}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # When the Workflow Run was created.
        sig { returns(String) }
        def created; end
        # The unique ID of the Workflow Run.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The current Workflow Run execution status.
        sig { returns(String) }
        def status; end
        # Details about the Workflow Run's status transitions.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # Summary information about the Workflow Run's status transitions.
        sig { returns(StatusTransitions) }
        def status_transitions; end
        # A record of the trigger that launched this Workflow Run.
        sig { returns(Trigger) }
        def trigger; end
        # The Workflow this Run belongs to.
        sig { returns(String) }
        def workflow; end
      end
    end
  end
end