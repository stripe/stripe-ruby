# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # An execution of a Workflow in response to a triggering event.
      class WorkflowRun < APIResource
        OBJECT_NAME = "v2.core.workflow_run"
        def self.object_name
          "v2.core.workflow_run"
        end

        class StatusDetails < ::Stripe::StripeObject
          class Failed < ::Stripe::StripeObject
            # If this Workflow Run failed during the processing of an action step, the step identifier.
            attr_reader :action
            # Category of the failure result.
            attr_reader :error_code
            # Optional details about the failure result.
            attr_reader :error_message

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
            # Category of the success result.
            attr_reader :status_code
            # Optional details about the success result.
            attr_reader :status_message

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Details about the Workflow Run's transition into the FAILED state.
          attr_reader :failed
          # Details about the Workflow Run's transition in to the STARTED state.
          attr_reader :started
          # Details about the Workflow Run's transition into the SUCCEEDED state.
          attr_reader :succeeded

          def self.inner_class_types
            @inner_class_types = { failed: Failed, started: Started, succeeded: Succeeded }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class StatusTransitions < ::Stripe::StripeObject
          # When the Workflow Run failed.
          attr_reader :failed_at
          # When the Workflow Run was started.
          attr_reader :started_at
          # When the Workflow Run succeeded.
          attr_reader :succeeded_at

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Trigger < ::Stripe::StripeObject
          class EventTrigger < ::Stripe::StripeObject
            # The Stripe event that triggered this Run.
            attr_reader :id
            # The Stripe event type triggered this Run.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Manual < ::Stripe::StripeObject
            # The input parameters used when launching the Run.
            attr_reader :input_parameters

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The Workflow Run was launched when Stripe emitted a certain event.
          attr_reader :event_trigger
          # The Workflow Run was launched through a direct call, using either the Dashboard or the Stripe API.
          attr_reader :manual
          # Which type of trigger this is.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { event_trigger: EventTrigger, manual: Manual }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # When the Workflow Run was created.
        attr_reader :created
        # The unique ID of the Workflow Run.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The current Workflow Run execution status.
        attr_reader :status
        # Details about the Workflow Run's status transitions.
        attr_reader :status_details
        # Summary information about the Workflow Run's status transitions.
        attr_reader :status_transitions
        # A record of the trigger that launched this Workflow Run.
        attr_reader :trigger
        # The Workflow this Run belongs to.
        attr_reader :workflow

        def self.inner_class_types
          @inner_class_types = {
            status_details: StatusDetails,
            status_transitions: StatusTransitions,
            trigger: Trigger,
          }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
