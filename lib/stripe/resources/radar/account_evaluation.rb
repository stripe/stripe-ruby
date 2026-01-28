# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # Account Evaluation resource returned by the Radar Account Evaluations API.
    class AccountEvaluation < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Save

      OBJECT_NAME = "radar.account_evaluation"
      def self.object_name
        "radar.account_evaluation"
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
          # Score for this signal (float between 0.0-100.0).
          attr_reader :score

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class MultiAccounting < ::Stripe::StripeObject
          # Score for this signal (float between 0.0-100.0).
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
      # The ID of the Stripe customer the account evaluation is associated with.
      attr_reader :customer
      # The list of events that were reported for this Account Evaluation object via the report API.
      attr_reader :events
      # Unique identifier for the object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # A hash of signal objects providing Radar's evaluation for the lifecycle event.
      attr_reader :signals
      # The type of evaluation returned, based on the user's request.
      attr_reader :type

      # Creates a new AccountEvaluation object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/radar/account_evaluations",
          params: params,
          opts: opts
        )
      end

      # Reports an event on an AccountEvaluation object.
      def self.update(account_evaluation, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/radar/account_evaluations/%<account_evaluation>s/report_event", { account_evaluation: CGI.escape(account_evaluation) }),
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
