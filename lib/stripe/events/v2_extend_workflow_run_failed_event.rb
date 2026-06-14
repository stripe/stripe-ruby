# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Events
    # Occurs when a Workflow Run fails.
    class V2ExtendWorkflowRunFailedEvent < Stripe::V2::Core::Event
      def self.lookup_type
        "v2.extend.workflow_run.failed"
      end

      class V2ExtendWorkflowRunFailedEventData < ::Stripe::StripeObject
        class FailureDetails < ::Stripe::StripeObject
          # Optional details about the failure result.
          attr_reader :error_message

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # A Stripe dashboard URL with more information about the Workflow Run failure.
        attr_reader :dashboard_url
        # Details about the Workflow Run's transition into the FAILED state.
        attr_reader :failure_details

        def self.inner_class_types
          @inner_class_types = { failure_details: FailureDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      def self.inner_class_types
        @inner_class_types = { data: V2ExtendWorkflowRunFailedEventData }
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

    # Occurs when a Workflow Run fails.
    class V2ExtendWorkflowRunFailedEventNotification < Stripe::V2::Core::EventNotification
      def self.lookup_type
        "v2.extend.workflow_run.failed"
      end

      attr_reader :related_object

      # Retrieves the WorkflowRun related to this EventNotification from the Stripe API. Makes an API request on every call.
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
