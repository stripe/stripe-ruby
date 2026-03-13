# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # Customer Evaluation resource returned by the Radar Customer Evaluations API.
    class CustomerEvaluation < APIResource
      extend Stripe::APIOperations::Create

      OBJECT_NAME = "radar.customer_evaluation"
      def self.object_name
        "radar.customer_evaluation"
      end

      class Signals < ::Stripe::StripeObject
        class AccountSharing < ::Stripe::StripeObject
          # Time at which the signal was evaluated. Measured in seconds since the Unix epoch.
          attr_reader :evaluated_at
          # The risk level for this signal.
          attr_reader :risk_level
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
          # Time at which the signal was evaluated. Measured in seconds since the Unix epoch.
          attr_reader :evaluated_at
          # The risk level for this signal.
          attr_reader :risk_level
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
      # The ID of the Stripe customer the customer evaluation is associated with.
      attr_reader :customer
      # The type of evaluation event.
      attr_reader :event_type
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # A hash of signal objects providing Radar's evaluation for the lifecycle event.
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

      def self.inner_class_types
        @inner_class_types = { signals: Signals }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
