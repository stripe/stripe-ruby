# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module FinancialConnections
    # An Authorization represents the set of credentials used to connect a group of Financial Connections Accounts.
    class Authorization < APIResource
      class AccountHolder < ::Stripe::StripeObject
        # The ID of the Stripe account that this account belongs to. Only available when `account_holder.type` is `account`.
        sig { returns(T.nilable(T.any(String, ::Stripe::Account))) }
        def account; end
        # The ID for an Account representing a customer that this account belongs to. Only available when `account_holder.type` is `customer`.
        sig { returns(T.nilable(T.any(String, ::Stripe::Customer))) }
        def customer; end
        # Attribute for field customer_account
        sig { returns(T.nilable(String)) }
        def customer_account; end
        # Type of account holder that this account belongs to.
        sig { returns(String) }
        def type; end
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
          sig { returns(String) }
          def action; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field inactive
        sig { returns(T.nilable(Inactive)) }
        def inactive; end
        def self.inner_class_types
          @inner_class_types = {inactive: Inactive}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The account holder that this authorization belongs to.
      sig { returns(T.nilable(AccountHolder)) }
      def account_holder; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # The ID of the Financial Connections Institution this account belongs to. Note that this relationship may sometimes change in rare circumstances (e.g. institution mergers).
      sig { returns(T.nilable(T.any(String, ::Stripe::FinancialConnections::Institution))) }
      def institution; end
      # The name of the institution that this authorization belongs to.
      sig { returns(String) }
      def institution_name; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The status of the connection to the Authorization.
      sig { returns(String) }
      def status; end
      # Attribute for field status_details
      sig { returns(StatusDetails) }
      def status_details; end
    end
  end
end