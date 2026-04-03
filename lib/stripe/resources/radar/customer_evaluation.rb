# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # Customer Evaluation resource returned by the Radar Customer Evaluations API.
    class CustomerEvaluation < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Save

      OBJECT_NAME = "radar.customer_evaluation"
      def self.object_name
        "radar.customer_evaluation"
      end

      class Event < ::Stripe::StripeObject
        class LoginFailed < ::Stripe::StripeObject
          # The reason why this login failed.
          attr_reader :reason

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class RegistrationFailed < ::Stripe::StripeObject
          # The reason why this registration failed.
          attr_reader :reason

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Data about a failed login event.
        attr_reader :login_failed
        # Time at which the event occurred. Measured in seconds since the Unix epoch.
        attr_reader :occurred_at
        # Data about a failed registration event.
        attr_reader :registration_failed
        # The type of event that occurred.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { login_failed: LoginFailed, registration_failed: RegistrationFailed }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class Signals < ::Stripe::StripeObject
        class AccountSharing < ::Stripe::StripeObject
          # Time at which the signal was evaluated. Measured in seconds since the Unix epoch.
          attr_reader :evaluated_at
          # The risk level for this signal.
          attr_reader :risk_level
          # Score for this signal (between 0.0 and 100.0).
          attr_reader :score

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class MultiAccounting < ::Stripe::StripeObject
          # Time at which the signal was evaluated. Measured in seconds since the Unix epoch.
          attr_reader :evaluated_at
          # The risk level for this signal.
          attr_reader :risk_level
          # Score for this signal (between 0.0 and 100.0).
          attr_reader :score

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field account_sharing
        attr_reader :account_sharing
        # Attribute for field multi_accounting
        attr_reader :multi_accounting

        def self.inner_class_types
          @inner_class_types = { account_sharing: AccountSharing, multi_accounting: MultiAccounting }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created_at
      # The ID of the Customer to associate with this CustomerEvaluation.
      attr_reader :customer
      # The type of evaluation event.
      attr_reader :event_type
      # A list of events that have been reported on this customer evaluation.
      attr_reader :events
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # A hash of signal objects providing Radar's evaluation of the customer.
      attr_reader :signals

      # Creates a new CustomerEvaluation object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/radar/customer_evaluations",
          params: params,
          opts: opts
        )
      end

      # Reports an event on a CustomerEvaluation object.
      def self.update(customer_evaluation, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/radar/customer_evaluations/%<customer_evaluation>s/report", { customer_evaluation: CGI.escape(customer_evaluation) }),
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = { events: Event, signals: Signals }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
