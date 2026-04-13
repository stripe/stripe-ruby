# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Core
      # A Stripe Workflow is a sequence of actions, like Stripe API calls, that are taken in response to an initiating trigger.
      # A trigger can be a Stripe API event, or a manual invocation.
      class Workflow < APIResource
        class Trigger < ::Stripe::StripeObject
          class EventTrigger < ::Stripe::StripeObject
            # The Stripe event type that will trigger this Workflow.
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
            # An unprocessed version of the trigger's input parameter schema.
            sig { returns(String) }
            def raw_schema; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Which type of trigger this is.
          sig { returns(String) }
          def type; end
          # The Workflow can be launched when Stripe emits a certain event.
          sig { returns(T.nilable(EventTrigger)) }
          def event_trigger; end
          # The Workflow can be launched through a direct call, using either the Dashboard or the Stripe API.
          sig { returns(T.nilable(Manual)) }
          def manual; end
          def self.inner_class_types
            @inner_class_types = {event_trigger: EventTrigger, manual: Manual}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # When the Workflow was created.
        sig { returns(String) }
        def created; end
        # Workflow description.
        sig { returns(String) }
        def description; end
        # The unique ID of the Workflow.
        sig { returns(String) }
        def id; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Whether this Workflow is active, inactive, or in some other state. Only active Workflows may be invoked.
        sig { returns(String) }
        def status; end
        # Under what conditions will this Workflow launch.
        sig { returns(T::Array[Trigger]) }
        def triggers; end
      end
    end
  end
end