# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module FinancialConnections
    # An Authorization represents the set of credentials used to connect a group of Financial Connections Accounts.
    class Authorization < APIResource
      OBJECT_NAME = "financial_connections.authorization"
      def self.object_name
        "financial_connections.authorization"
      end

      class StatusDetails < ::Stripe::StripeObject
        class Active < ::Stripe::StripeObject
          # The action (if any) to proactively relink the Authorization.
          attr_reader :action
          # When the Authorization is expected to become inactive, if applicable.
          attr_reader :expected_deactivation_date

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Inactive < ::Stripe::StripeObject
          # The action (if any) to relink the inactive Authorization.
          attr_reader :action

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field active
        attr_reader :active
        # Attribute for field inactive
        attr_reader :inactive

        def self.inner_class_types
          @inner_class_types = { active: Active, inactive: Inactive }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Unique identifier for the object.
      attr_reader :id
      # The name of the institution that this authorization belongs to.
      attr_reader :institution_name
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The status of the connection to the Authorization.
      attr_reader :status
      # Attribute for field status_details
      attr_reader :status_details

      def self.inner_class_types
        @inner_class_types = { status_details: StatusDetails }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
