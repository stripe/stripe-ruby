# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Core
      # A Stripe Workflow is a sequence of actions, like Stripe API calls, that are taken in response to an initiating trigger.
      # A trigger can be a Stripe API event, or a manual invocation.
      class Workflow < APIResource
        OBJECT_NAME = "v2.core.workflow"
        def self.object_name
          "v2.core.workflow"
        end

        class Trigger < ::Stripe::StripeObject
          class EventTrigger < ::Stripe::StripeObject
            # The Stripe event type that will trigger this Workflow.
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end

          class Manual < ::Stripe::StripeObject
            # An unprocessed version of the trigger's input parameter schema.
            attr_reader :raw_schema

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The Workflow can be launched when Stripe emits a certain event.
          attr_reader :event_trigger
          # The Workflow can be launched through a direct call, using either the Dashboard or the Stripe API.
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
        # When the Workflow was created.
        attr_reader :created
        # Workflow description.
        attr_reader :description
        # The unique ID of the Workflow.
        attr_reader :id
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Whether this Workflow is active, inactive, or in some other state. Only active Workflows may be invoked.
        attr_reader :status
        # Under what conditions will this Workflow launch.
        attr_reader :triggers

        def self.inner_class_types
          @inner_class_types = { triggers: Trigger }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
