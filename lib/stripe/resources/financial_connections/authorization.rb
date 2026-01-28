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

      class AccountHolder < ::Stripe::StripeObject
        # The ID of the Stripe account that this account belongs to. Only available when `account_holder.type` is `account`.
        attr_reader :account
        # The ID for an Account representing a customer that this account belongs to. Only available when `account_holder.type` is `customer`.
        attr_reader :customer
        # Attribute for field customer_account
        attr_reader :customer_account
        # Type of account holder that this account belongs to.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class StatusDetails < ::Stripe::StripeObject
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
        # Attribute for field inactive
        attr_reader :inactive

        def self.inner_class_types
          @inner_class_types = { inactive: Inactive }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The account holder that this authorization belongs to.
      attr_reader :account_holder
      # Unique identifier for the object.
      attr_reader :id
      # The ID of the Financial Connections Institution this account belongs to. Note that this relationship may sometimes change in rare circumstances (e.g. institution mergers).
      attr_reader :institution
      # The name of the institution that this authorization belongs to.
      attr_reader :institution_name
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The status of the connection to the Authorization.
      attr_reader :status
      # Attribute for field status_details
      attr_reader :status_details

      def self.inner_class_types
        @inner_class_types = { account_holder: AccountHolder, status_details: StatusDetails }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
